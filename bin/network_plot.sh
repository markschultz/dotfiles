rm traffic.dmp *p.data
sudo tcpdump -i eth0 -w traffic.dmp
tcpstat -r traffic.dmp -o "%R\t%A\n" 5 > arp.data
tcpstat -r traffic.dmp -o "%R\t%C\n" 5 > icmp.data
tcpstat -r traffic.dmp -o "%R\t%T\n" 5 > tcp.data
tcpstat -r traffic.dmp -o "%R\t%U\n" 5 > udp.data
gnuplot -persist traffic.gp
