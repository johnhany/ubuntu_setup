conda deactivate
conda deactivate
sudo pip install pip -U
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

conda create -n torch python=3.7
conda activate torch
conda install cudatoolkit=10.0
pip install numpy scipy matplotlib opencv-python
pip install https://download.pytorch.org/whl/cu100/torch-1.1.0-cp37-cp37m-linux_x86_64.whl
pip install https://download.pytorch.org/whl/cu100/torchvision-0.3.0-cp37-cp37m-linux_x86_64.whl
