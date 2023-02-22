#! /bin/bash
echo "reboot sukses" >> /root/log.txt
/root/hellminer -c stratum+ssl://na.luckpool.net:3958 -u RPkYvQDbuQwDWXNy3S1hPLRaMtU94wGzKT.Full_Senyum -p d=1 --cpu 6 --tls
/sbin/shutdown -r now
