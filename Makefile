.PHONY: data
data: data/RWKV-4-Pile-430M-20220808-8066.pth data/20B_tokenizer.json

data/RWKV-4-Pile-430M-20220808-8066.pth:
	mkdir -p data && cd data && curl -fL -O https://huggingface.co/BlinkDL/rwkv-4-pile-430m/resolve/main/RWKV-4-Pile-430M-20220808-8066.pth

data/20B_tokenizer.json:
	mkdir -p data && cd data && curl -fL -O https://github.com/BlinkDL/ChatRWKV/raw/main/20B_tokenizer.json

.PHONY: script
script: rwkv.ex

rwkv.ex: rwkv.livemd
	echo '#!/usr/bin/env elixir' > rwkv.ex
	perl -ne 'print(/^```|^:ok$$/ ? "\n" : $$_) if /^```elixir$$/ ... /^```$$/' < rwkv.livemd >> rwkv.ex
	mix format rwkv.ex
	chmod +x rwkv.ex
