<div align="center">
<img src="https://pl-public-data.s3.amazonaws.com/assets_lightning/LitStableLM_Badge.png" alt="LitGPT" width="128"/>

# ⚡ LitGPT

<!--
<p align="center">
  <a href="https://www.lightning.ai/">Lightning.ai</a> •
  <a href="https://lightning.ai/docs/pytorch/stable/">PyTorch Lightning</a> •
  <a href="https://lightning.ai/docs/fabric/stable/">Fabric</a>
</p>
-->

![PyPI - Python Version](https://img.shields.io/pypi/pyversions/pytorch-lightning)
![cpu-tests](https://github.com/lightning-AI/lit-stablelm/actions/workflows/cpu-tests.yml/badge.svg) [![license](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://github.com/Lightning-AI/lit-stablelm/blob/master/LICENSE) [![Discord](https://img.shields.io/discord/1077906959069626439?style=plastic)](https://discord.gg/VptPCZkGNa)

</div>

&nbsp;

⚡ LitGPT is a hackable [implementation](litgpt/model.py) of state-of-the-art open-source large language models released under the **Apache 2.0 license**.

&nbsp;
## Project guideline

This project involves implementing a novel method for parameter-efficient fine-tuning (PEFT) known as loRA+ on the tiniLama model. Our primary aim is to integrate state-of-the-art techniques and evaluate their performance on well-known datasets, particularly HellaSWAG. Additionally, we conduct instruction tuning on the LIMA dataset and subsequently assess zero-shot test accuracy on the HellaSWAG dataset.


## License

LitGPT is released under the [Apache 2.0](https://github.com/Lightning-AI/litgpt/blob/main/LICENSE) license.

