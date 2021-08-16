CFLAGS ?= -O3 --target=wasm32 -msimd128 --no-standard-libraries -Wl,--no-entry
CLANG ?= clang
WASM2WAT ?= wasm2wat
WAT_DESTINATION_DIR ?= ../wat

# By default, build all *.wasm and *.wat files.
all: wat

# Generate *.wasm files for each C file; note that the function name must match
# the file name (module '.' to '_' conversion).
SRCS=$(wildcard *.c)
WASM=$(SRCS:%.c=out/%.wasm)
wasm: $(WASM)
out/%.wasm: %.c out
	$(CLANG) $(CFLAGS) -Wl,--export=$(subst .,_,$(patsubst %.wasm,%,$(@F))) -DIMMEDIATE=0 $< -o $@

# Generate *.wat files into the `wat` destination directory.
WAT=$(WASM:out/%.wasm=$(WAT_DESTINATION_DIR)/%.wat)
wat: $(WAT)
REMOVE_UNNECESSARY_WAT=sed -E '/^\s+\(global/d'
$(WAT_DESTINATION_DIR)/%.wat: out/%.wasm
	$(WASM2WAT) --enable-simd $< | $(REMOVE_UNNECESSARY_WAT) > $@

# Helper targets.
out:
	mkdir -p out
clean:
	rm -rf out
.PHONY: clean
