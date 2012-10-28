set style data lines
set grid
#set yrange [-10:]
set title "Protocol breakdown in the last hour"
set xlabel "seconds"
set ylabel "packets/s"
plot "arp.data" using 1:($2/5) smooth csplines title "ARP", \
	"icmp.data" using 1:($2/5) smooth csplines title "ICMP", \
	"tcp.data" using 1:($2/5) smooth csplines title "TCP", \
	"udp.data" using 1:($2/5) smooth csplines title "UDP"
