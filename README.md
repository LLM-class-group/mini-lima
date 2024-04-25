## Self-Instruct on Qwen1.5 

本项目基于论文 [Self-Instruct: Aligning Language Models with Self-Generated Instructions](https://arxiv.org/abs/2212.10560), 是原论文在小参数模型 Qwen1.5-7B, Qwen1.5-1.8B 及 Qwen1.5-0.5B 上的复现。我们使用模型 Qwen1.5-7B 与 Qwen1.5-1.8B 生成指令数据，在 Qwen1.5-0.5B 上进行指令微调，最终得到 Qwen1.5-0.5B-SFT。

## 目录结构 

- `LLaMA-Factory`：用于模型微调。
- `Qwen-self-instruct`：数据集构建。 
- `alpaca_eval`：用于模型评估。
- `flash-attention`：详情描述。 
- `mini_lima`：评估配置文件夹。
- `.gitmodules`：子模块依赖。
- `demo.py`：示例脚本用法。
- `eval.sh`：评估脚本。
- `finetune.sh`：微调脚本。 
- `model_outputs.json`：（微调后）模型预测输出。

### 使用方法

1. 克隆仓库 (`git clone git@github.com:LLM-class-group/mini-lima.git`)
2. 初始化子模块 (`git submodule update --init --recursive`)
3. 构建数据集
4. 配置LLaMA-Factory
5. 微调模型 (`./finetune.sh`)
6. 评估模型 (`./eval.sh`)

备注：部分文件路径可能还需要额外的修改。