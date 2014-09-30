ip -6 route del ::/0 dev he-ipv6
ip link set he-ipv6 down
ip tunnel del he-ipv6

