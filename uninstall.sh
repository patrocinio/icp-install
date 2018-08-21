export NOW=$(date +"%Y-%m-%d_%H:%M:%S")
export LOGFILE=/tmp/uninstall-$NOW.log
export CLUSTER_DIR=/opt/icp-install/cluster
export ICP_VERSION=2.1.0.3
cd $CLUSTER_DIR
sudo docker run -e LICENSE=accept --net=host --rm --name=installer -t -v $(pwd):/installer/cluster ibmcom/icp-inception:$ICP_VERSION-ee uninstall  -vvv | tee $LOGFILE

