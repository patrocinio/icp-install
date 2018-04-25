export LOGFILE=/tmp/install-check-2.log
export CLUSTER_DIR=/opt/icp-install/cluster
export ICP_VERSION=2.1.0.2
cd $CLUSTER_DIR
sudo docker run -e LICENSE=accept --net=host --rm -t -v "$(pwd)":/installer/cluster ibmcom/icp-inception:$ICP_VERSION-ee check  -vvv | tee $LOGFILE

cd ~/icp-health
./runAll.sh all "ls -l /var/lib/etcd"  | grep "No such" | wc -l
./runAll.sh all "ls -l /var/lib/kubelet" | grep "No such" | wc -l
./runAll.sh all "ls -l /var/lib/mysql" | grep "No such" | wc -l
./runAll.sh all "ls -l /etc/cn*" | grep "No such" | wc -l
