#!/usr/bin/env bash

pip install -e '.[all]'
pip install git+https://github.com/EleutherAI/lm-evaluation-harness
pip install wandb

# Downloading the model
# You can skip this if you have already downloaded the model
litgpt download \
  --repo_id TinyLlama/TinyLlama-1.1B-intermediate-step-1431k-3T

# Uncomment the following line and add your Huggingface Token here
# Generate or retrieve your Huggingface Token at https://huggingface.co/settings/tokens
# export HF_TOKEN=[YOUR_HF_TOKEN]

# LoRA instruction tuning
# Before finetuning, please run torch.cuda.is_bf16_supported(). If it returns False, set --precision fp16-true
litgpt finetune lora \
  --data LIMA \
  --checkpoint_dir checkpoints/TinyLlama/TinyLlama-1.1B-intermediate-step-1431k-3T \
  --out_dir out/tinyllama \
  --train.max_seq_length 512 \
  --train.epochs 15 \
  --train.lr_warmup_steps 10 \
  --precision bf16-true \
  --lora_r 8 \
  --lora_alpha 16 \
  --eval.interval 50 \
  --logger wandb