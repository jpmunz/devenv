# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'hfm4/centos7'
  config.vm.provision :shell, path: 'vagrant-bootstrap.sh'
  config.vm.network 'private_network', ip: '192.168.100.100'
end
