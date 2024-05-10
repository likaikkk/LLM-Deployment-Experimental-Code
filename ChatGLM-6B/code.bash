# 创建一个新的 Anaconda 环境，命令
conda create -n chatglm3 python=3.8
# 激活新建的Anaconda环境
conda activate chatglm3

# 克隆项目到服务器
git clone https://github.com/THUDM/ChatGLM3
cd ChatGLM3
# 安装项目环境
pip install -r requirements.txt

# 下载 ChatGLM3-6b 模型
git lfs install
git clone https://www.modelscope.cn/ZhipuAI/chatglm3-6b.git


