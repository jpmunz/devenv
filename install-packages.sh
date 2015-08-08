yum --version
if [ $? -eq 0 ]; then
  INSTALL="yum -y install"
  yum -y install epel-release
else
  INSTALL="apt-get -y install"
fi

$INSTALL \
  python-dev \
  python-pip \
  vim \
  ack* \
  tmux \
  tree \

pip install \
  flake8
