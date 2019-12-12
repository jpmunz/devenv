yum --version
if [ $? -eq 0 ]; then
  INSTALL="yum -y install"
  yum -y install epel-release
  yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
else
  INSTALL="apt-get -y install"
fi

$INSTALL \
  wget \
  unzip \
  git \
  npm \
  vim \
  python3 \
  python3-dev \
  python3-pip \
  ack* \
  net-tools \
  tmux \
  tree \
  gcc \
  gcc-c++ \
  make

pip3 install \
  flake8 \

npm install -g \
  eslint \
