/**
 * When passed a WAT file containing a single function, emit the generated x64
 * code for that function using the IonMonkey compiler, minus the function
 * prefix and suffix. Example:
 *
 * $ ./js compile.js wat/f32x4.add.wat
 * 0F58C1
 */

if (scriptArgs[0] == '--help') {
    help();
    quit();
}

let file = scriptArgs[0];
let wat = read(file);
let codeHex = extractCode(wat);

// Cut off the function prefix:
// https://searchfox.org/mozilla-central/source/js/src/jit-test/lib/codegen-x64-test.js#35.
const PREFIX = '55488BEC';
if (codeHex.startsWith(PREFIX)) {
    codeHex = codeHex.slice(PREFIX.length);
} else {
    throw new Error(`Expected function prefix to be: ${PREFIX}`);
}

// Cut off the function suffix:
// https://searchfox.org/mozilla-central/source/js/src/jit-test/lib/codegen-x64-test.js#38
const SUFFIX = '5DC3';
if (codeHex.endsWith(SUFFIX)) {
    codeHex = codeHex.slice(0, -SUFFIX.length);
} else {
    throw new Error(`Expected function suffix to be: ${SUFFIX}`);
}

print(codeHex);

/**
 * @param {String} wat WAT code with a single function
 * @returns the hex-encoded code for the function
 */
function extractCode(wat) {
    let wasm = wasmTextToBinary(wat);
    let module = new WebAssembly.Module(wasm);
    let { code, segments: [segment] } = wasmExtractCode(module, 'ion');
    let body = Array.from(new Uint8Array(code).subarray(segment.funcBodyBegin, segment.funcBodyEnd)).map(i => toHex(i));
    return body.join('');
}

/**
 * @param {*} wat WAT code
 * @param {*} functionName the name of the function to disassemble
 * @returns if the SpiderMonkey has a disassembler bundled with it, the string
 * output for the given function
 */
function disassemble(wat, functionName) {
    assert(hasDisassembler());
    let wasm = wasmTextToBinary(wat);
    let module = new WebAssembly.Module(wasm);
    let instance = new WebAssembly.Instance(module, []);
    let disassembled = wasmDis(instance.exports[functionName], { asString: true, tier: 'ion' });
    return disassembled;
}

/**
 * @param {Number} num
 * @returns the 2-digit, uppercase hex representation of the number.
 */
function toHex(num) {
    return ('0' + (Number(num).toString(16))).slice(-2).toUpperCase()
}
