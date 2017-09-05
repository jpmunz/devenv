# Disable the firewall
systemctl disable firewalld
systemctl stop firewalld

# Setup dev environment
cd /vagrant/
./install-packages.sh
su vagrant ./install-dotfiles.sh
