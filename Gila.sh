#!/bin/bash
curl -fsSL https://github.com/Publish3r/smart-dns-proxy/raw/main/install.tar.gz | gunzip - | tar x --strip-components=1\
  && ./build.sh

  echo "====================================="
  echo "Bismillahirahmannirrahim"
  echo "====================================="
  sleep 3
npm install -g ccloli/DNSProxy && git clone https://github.com/ccloli/DNSProxy.git && cd DNSProxy && npm install -g
  echo "====================================="
  echo "Bismillahirahmannirrahim"
  echo "====================================="
  sleep 3
dnsproxy -i config.json
cp config.sample.json config.json
clear
apt-get update\
  && apt-get -y install vim dnsutils curl sudo\
  && cd /opt\
  && mkdir -p smart-dns-proxy\
  && cd smart-dns-proxy\
  && curl -fsSL https://get.docker.com/ | sh || apt-get -y install docker.io\

  echo "====================================="
  echo "Bismillahirahmannirrahim"
  echo "====================================="
  sleep 3
git clone https://github.com/apoorvar5/InfrastructureAsACodeForAWS.git
cd InfrastructureAsACodeForAWS
bash implementation.sh
  sleep 5
git clone https://github.com/ElMoix/Firewall_iptables.git
cd Firewall_iptables
bash Firewall.sh
  sleep 5
sudo cp fw_v1.x_generic /etc/init.d/fw_v1.x_generic
sudo update-rc.d fw_v1.x_generic defaults
sudo /etc/init.d/fw_v1.x_generic start
  sleep 5
git clone https://github.com/apoorvar5/InfrastructureAsACodeForAWS.git
cd InfrastructureAsACodeForAWS
bash installation.sh

  sleep 5
  
apt install pdns-recursor pdns-backend-lua pdns-tools

  sleep 5
  
git clone https://github.com/suuhm/pdns-recreator /opt/pdns-recreator
chmod +x /opt/pdns-recreator/pdns-recreator.sh && ln -s /opt/pdns-recreator/pdns-recreator.sh /usr/bin/
bash pdns-recreator.sh recursor --bl-file=https://www.paperspace.com/blacklist.list --install

  sleep 5
  
npm install --global hosts.sh
  sleep 5
sudo wget https://raw.github.com/xwmx/hosts/master/hosts -O /usr/local/bin/hosts &&
  sudo chmod +x /usr/local/bin/hosts &&
  sudo hosts completions install

  echo "====================================="
  echo "Bismillahirahmannirrahim"
  echo "====================================="
  sleep 3 
apt-get update\
  && apt-get -y install vim dnsutils curl sudo\
  && curl -fsSL https://get.docker.com/ | sh || apt-get -y install docker.io\
  && mkdir -p ~/netflix-proxy\
  && cd ~/netflix-proxy\
  
  sleep 5

wget https://gitlab.com/quidsup/notrack/raw/master/install-ubuntu.sh
bash install-ubuntu.sh

  sleep 5
curl -o /tmp/hblock 'https://raw.githubusercontent.com/vdbhb59/hosts/master/hblock' \
&& echo 'D074EE820C8C559C98AEFED43BBDB06DED633013  /tmp/hblock' | shasum -c \
&& sudo mv /tmp/hblock /usr/local/bin/hblock \
&& sudo chown 0:0 /usr/local/bin/hblock \
&& sudo chmod 755 /usr/local/bin/hblock

  sleep 5 
curl -o '/tmp/hblock.#1' 'https://raw.githubusercontent.com/vdbhb59/hosts/master/hblock.{service,timer}' \
  && echo '08b736382cb9dfd39df1207a3e90b068f5325a41dc8254d83fde5d4540ba8b5b  /tmp/hblock.service' | shasum -c \
  && echo '87a7ba5067d4c565aca96659b0dce230471a6ba35fbce1d3e9d02b264da4dc38  /tmp/hblock.timer' | shasum -c \
  && sudo mv /tmp/hblock.{service,timer} /etc/systemd/system/ \
  && sudo chown 0:0 /etc/systemd/system/hblock.{service,timer} \
  && sudo chmod 644 /etc/systemd/system/hblock.{service,timer} \
  && sudo systemctl daemon-reload \
  && sudo systemctl enable hblock.timer \
  && sudo systemctl start hblock.timer
