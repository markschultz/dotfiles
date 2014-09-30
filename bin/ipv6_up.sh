ip tunnel add he-ipv6 mode sit remote 184.105.253.14 local 65.79.129.27 ttl 255
ip link set he-ipv6 up
ip addr add 2001:470:1f10:9e1::2/64 dev he-ipv6
ip route add ::/0 dev he-ipv6
ip -f inet6 addr
