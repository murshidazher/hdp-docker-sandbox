# https://community.cloudera.com/t5/Support-Questions/Installing-Jupyter-on-sandbox/td-p/201683

####========================================================
### login as root
####========================================================
sandbox-version

== Sandbox Information ==
Platform: hdp-security
Build date: 06-18-2018
Ambari version: 2.6.2.0-155
Hadoop version: Hadoop 2.7.3.2.6.5.0-292
OS: CentOS Linux release 7.5.1804 (Core)
====

####========================================================
### Install Jupyter Dependencies
####========================================================
pip install --ignore-installed pyparsing
yum install epel-release
sudo wget https://bootstrap.pypa.io/ez_setup.py -O - | python ;sudo yum install python-pip python-wheel python-devel gcc
pip install --upgrade pip
pip install --upgrade pip wheel pandas numpy scipy scikit-learn matplotlib virtualenv
####========================================================
### Install Jupyter
####========================================================
pip install jupyter

####========================================================
### Setup folders and files
####========================================================
jupyter notebook --generate-config
sudo mkdir -p /ibm/conf
sudo chown -R spark:hadoop /ibm
cp ~/.jupyter/jupyter_notebook_config.py /ibm/conf/

####========================================================
### Setup startup shell script
####========================================================
vi /ibm/scripts/start_jupyter.sh

#copy the paste the following contents

#! bin/bash
set -x
USER=$1
JUPYTER_HOST=sandbox-hdp.hortonworks.com
JUPYTER_PORT=8889
su - ${USER} << EOF
export SPARK_HOME=/usr/hdp/current/spark-client
export PYSPARK_SUBMIT_ARGS="--master yarn-client pyspark-shell"
export HADOOP_HOME=/usr/hdp/current/hadoop-client
export HADOOP_CONF_DIR=/usr/hdp/current/hadoop-client/conf
export PYTHONPATH="/usr/hdp/current/spark-client/python:/usr/hdp/current/spark-client/python/lib/py4j-0.9-src.zip"
export PYTHONSTARTUP=/usr/hdp/current/spark-client/python/pyspark/shell.py
export PYSPARK_SUBMIT_ARGS="--master yarn-client pyspark-shell"
echo "Starting Jupyter daemon on HDP Cluster ..."
jupyter notebook --config=/ibm/conf/jupyter_notebook_config.py --ip=${JUPYTER_HOST} --port=${JUPYTER_PORT}&
EOF
exit 0

####========================================================
### Run startup shell script
####========================================================

chown -R spark:hadoop /ibm
chmod 777 /ibm/script/start_jupyter.sh
cd /ibm/scripts
./start_jupyter.sh spark
####========================================================
### Copy the link from above step's output and paste to your computer's browser
####========================================================
# make sure you define sandbox.hortonworks.com in your hosts file
http://sandbox.hortonworks.com:8889/?token=c982c0f95222abcf2900e3aeb9d9c59cc0386cc04c6c154d
