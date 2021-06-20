export SERVICE=ZEPPELIN
export AMBARI_ADMIN_USER="admin"
export AMBARI_ADMIN_PASSWORD="adminpassword"
export AMBARI_HOST="localhost"

# detect name of cluster
output=$(curl -u $AMBARI_ADMIN_USER:$AMBARI_ADMIN_PASSWORD -i -H 'X-Requested-By: ambari' http://$AMBARI_HOST:8080/api/v1/clusters)

CLUSTER_NAME=$(echo $output | sed -n 's/.*"cluster_name" : "\([^\"]*\)".*/\1/p')

export CLUSTER_NAME
