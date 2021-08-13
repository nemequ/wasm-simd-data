all: data.json deploy/wasm-simd-data.json

help: ## show help message
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[$$()% a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

lowering/Makefile:
	./lowering/generate-makefile.py > $@

deploy/.git/HEAD:
	git clone -b gh-pages https://github.com/nemequ/wasm-simd-data.git deploy

simde/simde/wasm/simd128.h:
	git clone https://github.com/simd-everywhere/simde.git simde

lowering/stamp: simde/simde/wasm/simd128.h lowering/Makefile
	make -C lowering -j$(nproc)

deploy/wasm-simd-data.json: deploy/.git/HEAD lowering/stamp
	./scripts/generate.py $@

data.json: lowering/stamp
	./scripts/generate.py > $@
