export CLUSTER_DIR=/opt/icp-install/cluster
export ICP_VERSION=2.1.0.3

mkdir $CLUSTER_DIR
cd $CLUSTER_DIR
docker run -v $(pwd):/data -e LICENSE=accept \
 ibmcom/icp-inception:$ICP_VERSION-ee \
 cp -r cluster /data