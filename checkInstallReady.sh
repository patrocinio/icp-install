
cd ~/icp-health
./runAll.sh all "ls -l /var/lib/etcd"  | grep "No such" | wc -l
./runAll.sh all "ls -l /var/lib/kubelet" | grep "No such" | wc -l
./runAll.sh all "ls -l /var/lib/mysql" | grep "No such" | wc -l
./runAll.sh all "ls -l /etc/cn*" | grep "No such" | wc -l
