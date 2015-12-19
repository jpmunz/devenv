yum --version
if [ $? -eq 0 ]; then
  INSTALL="yum -y install"
  yum -y install epel-release
else
  INSTALL="apt-get -y install"
fi

$INSTALL \
  wget \
  unzip \
  git \
  npm \
  python-dev \
  python-pip \
  vim \
  ack* \
  net-tools \
  tmux \
  tree \
  gcc \
  gcc-c++ \
  make \
  fontconfig freetype freetype-devel fontconfig-devel libstdc++ \ # phantomjs requirements for now

pip install \
  flake8 \

npm install -g \
  gulp \
  eslint \


# http://www.bonusbits.com/wiki/HowTo:Install_PhantomJS_on_CentOS
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2 -P /tmp/
mkdir -p /opt/phantomjs
tar -xjvf /tmp/phantomjs-1.9.8-linux-x86_64.tar.bz2 --strip-components 1 -C /opt/phantomjs/
ln -s /opt/phantomjs/bin/phantomjs /usr/bin/phantomjs
