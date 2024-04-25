export MODEL_NAME="qwen_sft"
export DATA_DIR="data"
export DATA_NAME="qwen_self_instruct"
export BASE_MODEL="/home/jiahe/LLMs/lima/model_cache/qwen/Qwen1___5-0___5B"
# export DS_CONFIG_PATH="/home/jiahe/LLMs/lima/LLaMA-Factory/examples/deepspeed/ds_z2_config.json"

cd ~/LLMs/lima/LLaMA-Factory

CUDA_VISIBLE_DEVICES=0 python \
    src/train_bash.py \
    --stage sft \
    --do_train True \
    --model_name_or_path ${BASE_MODEL} \
    --finetuning_type full \
    --template qwen \
    --dataset_dir ${DATA_DIR} \
    --dataset ${DATA_NAME} \
    --cutoff_len 1024 \
    --learning_rate 1e-5 \
    --per_device_train_batch_size 2 \
    --gradient_accumulation_steps 32 \
    --lr_scheduler_type cosine \
    --weight_decay 0.1 \
    --max_grad_norm 1.0 \
    --logging_steps 1 \
    --preprocessing_num_workers 16 \
    --flash_attn \
    --max_steps 4000 \
    --save_steps 500 \
    --warmup_steps 100 \
    --output_dir checkpoints/${MODEL_NAME} \
    --bf16 True \
    --plot_loss True \
    --overwrite_output_dir
