# 克隆远程仓库到服务器
git clone https://github.com/OpenVINO-dev-contest/Qwen2.openvino.git

# 环境配置
python3 -m venv openvino_env

source openvino_env/bin/activate

python3 -m pip install --upgrade pip

pip install wheel setuptools

pip install -r requirements.txt

# 下载模型
export HF_ENDPOINT=https://hf-mirror.com
huggingface-cli download --resume-download --local-dir-use-symlinks False Qwen/Qwen1.5-0.5B-Chat --local-dir  {your_path}/Qwen1.5-0.5B-Chat

# 转换模型
python3 convert.py --model_id Qwen/Qwen1.5-0.5B-Chat --precision int4 --output {your_path}/Qwen1.5-0.5B-Chat-ov

#  加载模型并执行
python3 chat.py --model_path {your_path}/Qwen1.5-0.5B-Chat-ov --max_sequence_length 4096 --device CPU
