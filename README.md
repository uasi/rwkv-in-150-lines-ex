# RWKV in 150 lines in Elixir

This is a port of [the minimal RWKV implementation](https://johanwind.github.io/2023/03/23/rwkv_details.html) by Johan Sokrates Wind, which is based on [RWKV in 150 lines](https://github.com/BlinkDL/ChatRWKV/blob/main/RWKV_in_150_lines.py) by PENG Bo.

## Usage

```bash
% make data # download model and vocab data (~820MB total)

% ./rwkv.ex

In a shocking finding, scientist discovered a herd of dragons living in a remote, previously unexplored valley, in Tibet. Even more surprising to the researchers was the fact that the dragons spoke perfect Chinese.

22:44:36.559 [info] TfrtCpuClient created.
 They had, in fact, spoken another language, but only spoken it to scientists in their field.

The team studied the dragons in a way that was unprecedented in the scientific world. The dragon scientists developed computer algorithms to describe the language of the dragons, and this new language is actually completely different than that spoken by the ancient dragons.

Researchers then created an image of the dragons, looking for similar language in Tibetan language. The results of their analysis revealed that dragons live in the Himalay
```
