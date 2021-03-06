export NOW=$(date +"%Y-%m-%d_%H:%M:%S")
export LOGFILE=/tmp/install-check-$NOW.log
export CLUSTER_DIR=/opt/icp-install/cluster
export ICP_VERSION=2.1.0.3
cd $CLUSTER_DIR
sudo docker run -e LICENSE=accept --net=host --rm -t -v "$(pwd)":/installer/cluster ibmcom/icp-inception:$ICP_VERSION-ee check  -vvv | tee $LOGFILE

