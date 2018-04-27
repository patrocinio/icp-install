
cd ~/icp-health
echo "Number of hosts in the cluster to checked:"
./runAll.sh all "hostname"  | grep "SUCCESS" | wc -l

echo "Number of hosts with clean /var/lib/etcd directory:"
./runAll.sh all "ls -l /var/lib/etcd"  | grep "No such" | wc -l
if [ "$#" -ge 1 ]
then
  ./runAll.sh all "ls -l /var/lib/etcd"
fi

echo "Number of hosts with clean /var/lib/kubelet directory:"
./runAll.sh all "ls -l /var/lib/kubelet" | grep "No such" | wc -l
if [ "$#" -ge 1 ]	
then  
./runAll.sh all "ls -l /var/lib/kubelet" 
fi 

echo "Number of hosts with clean /var/lib/mysql directory:"
./runAll.sh all "ls -l /var/lib/mysql" | grep "No such" | wc -l
if [ "$#" -ge 1 ]
then  
 ./runAll.sh all "ls -l /var/lib/mysql" 
fi 

echo "Number of hosts with clean /etc/cn* directory:"
./runAll.sh all "ls -l /etc/cn*" | grep "No such" | wc -l
if [ "$#" -ge 1 ]
then  
  ./runAll.sh all "ls -l /etc/cn*" 
fi
