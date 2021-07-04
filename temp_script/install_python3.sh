# typings error https://stackoverflow.com/questions/65869296/installing-pip-is-not-working-in-python-3-6/65871131#65871131
# https://community.centminmod.com/threads/python-conflict-on-update.17144/
yum -y remove python36u python36u-devel python36u-pip python36u-setuptools python36u-tools python36u-libs python36u-tkinter
yum -y install python36 python36-devel python36-pip python36-setuptools python36-tools python36-libs python36-tkinter gcc-c++
yum -y install cmake3 cmake3-data
python3 --version
pip3 install jupyter
pip3 install kaggle


kaggle datasets download hk7797/stock-market-india
