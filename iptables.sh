echo 1 > /proc/sys/net/ipv4/ip_forward

iptables -F
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -t nat -A POSTROUTING -s 192.168.1.0/24 -o br0 -j MASQUERADE 
