export NOW=$(date +"%Y-%m-%d_%H:%M:%S")
export LOGFILE=/tmp/install-$NOW.log
export CLUSTER_DIR=/opt/ibm/cluster
export ICP_VERSION=3.1.0
cd $CLUSTER_DIR
sudo docker run -e LICENSE=accept --net=host --rm -t -v "$(pwd)":/installer/cluster ibmcom/icp-inception:$ICP_VERSION install -vvv | tee $LOGFILE

