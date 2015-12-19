# Allow everything through the firewall
iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

# Persist the firewall rules
yum install -y iptables-services
systemctl enable iptables.service
/usr/libexec/iptables/iptables.init save

# Setup dev environment
cd /vagrant/
./install-packages.sh
su vagrant ./install-dotfiles.sh
