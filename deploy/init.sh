cd $HOME/chainmore
git clone https://github.com/kleon1024/ChainMore-API-Flask chainmore
cd chainmore
python3 -m venv venv
. venv/bin/activate
pip3 install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
