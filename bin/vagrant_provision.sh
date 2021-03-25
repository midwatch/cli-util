export DEBIAN_FRONTEND=noninteractive

echo "Set Time Zone"
timedatectl set-timezone America/Los_Angeles

echo "Install base Ubuntu dependencies"
apt-get update
apt-get install -y apt-transport-https \
                   ca-certificates \
                   curl \
                   software-properties-common

echo "Add Ubuntu Dependencies"

apt-get install -y build-essential \
                   git \
                   git-flow \
                   python3-dev \
                   python3-pip \
                   tig

echo "Installing python dependencies"

/usr/bin/env python3 -m pip install --upgrade bumpversion==0.5.3 \
                                              invoke==1.1.1 \
                                              js-invoke==2.1.1 \
                                              pip \
                                              pycodestyle==2.4.0 \
                                              pydocstyle==2.1.1 \
                                              pylint==2.3.1 \
                                              pytest-cov==2.5.1 \
                                              pytest==3.7.1
