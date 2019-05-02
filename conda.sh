conda deactivate
conda deactivate
sudo pip install pip -U
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

conda create -n torch python=3.7
conda activate torch
conda install cudatoolkit=10.0
pip install torch torchvision numpy scipy matplotlib opencv-python