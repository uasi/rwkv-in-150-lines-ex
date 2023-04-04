.PHONY: data
data: data/RWKV-4-Pile-430M-20220808-8066.pth data/20B_tokenizer.json

data/RWKV-4-Pile-430M-20220808-8066.pth:
	mkdir -p data && cd data && curl -fL -O https://huggingface.co/BlinkDL/rwkv-4-pile-430m/resolve/main/RWKV-4-Pile-430M-20220808-8066.pth

data/20B_tokenizer.json:
	mkdir -p data && cd data && curl -fL -O https://github.com/BlinkDL/ChatRWKV/raw/main/20B_tokenizer.json

.PHONY: script
script: rwkv.exs

rwkv.exs: rwkv.livemd
	echo '#!/usr/bin/env elixir' > rwkv.exs
	perl -ne 'print(/^```|^:ok$$/ ? "\n" : $$_) if /^```elixir$$/ ... /^```$$/' < rwkv.livemd >> rwkv.exs
	mix format rwkv.exs
	chmod +x rwkv.exs
