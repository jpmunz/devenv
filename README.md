#### Setup dotfiles

```
$ ./install-dotfiles.sh
```

#### Install packages

```
$ sudo ./install-packages.sh
```

#### Setup VM

Prequisties

1. [Install Virtualbox](http://www.virtualbox.org/)
2. [Install Vagrant](http://www.vagrantup.com/downloads)

Install and connect

```
$ cd devenv; vagrant up; vagrant ssh
```

The VM will be bootstrapped with the dotfiles and app packages.
