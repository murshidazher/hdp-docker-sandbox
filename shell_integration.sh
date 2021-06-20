# import homebrew bash-completions

HADOOP_VERSION="2.6.5"    # 3.0.1
HADOOP_SHELL_EXT="hdp265" # hdp30
LOCAL_REPO="hdp-docker-sandbox"
REMOTE_REPO="https://github.com/murshidazher/hdp-docker-sandbox.git"

source "/etc/$LOCAL_REPO/$HADOOP_VERSION/setup_ambari_variables.sh"

source "/etc/$LOCAL_REPO/$HADOOP_VERSION/ambari_admin.sh"
