apt-get update && apt-get -y upgrade
apt-get install ruby ruby-bundler
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
cd /tmp && \curl -sSL https://get.rvm.io -o rvm.sh
cat /tmp/rvm.sh | bash -s stable
source /usr/local/rvm/scripts/rvm
rvm install 2.3.0
gem install rails
bundle
