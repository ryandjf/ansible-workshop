#!/bin/sh

sudo apt-get install -y vim git wget curl unzip tar

ssh-keygen -q -N '' ~/.ssh/id_rsa
git config --global user.name "Junfeng Dai"
git config --global user.email "ryandjf@hotmail.com"

mkdir -p ~/Src
mkdir -p ~/Tools/idea
mkdir -p ~/Donwloads

wget -P ~/Downloads http://services.gradle.org/distributions/gradle-1.11-bin.zip
unzip ~/Downloads/gradle-1.11-bin.zip -d ~/Tools
echo 'export GRADLE_HOME="~/Tools/gradle-1.11"' >> ~/.bashrc
echo 'export PATH="$GRADLE_HOME/bin:$PATH"' >> ~/.bashrc


wget -P ~/Downloads http://download-ln.jetbrains.com/idea/ideaIC-13.0.2.tar.gz
tar xvzf ~/Downloads/ideaIC-13.0.2.tar.gz -C ~/Tools/idea --strip-components 1
echo 'export IDEA_HOME="~/Tools/idea"' >> ~/.bashrc
echo 'export PATH="$IDEA_HOME/bin:$PATH"' >> ~/.bashrc

git clone git@github.com:ryandjf/ansible-workshop.git ~/Src/ansible-workshop
git clone git@github.com:ansible/ansible.git ~/Src/ansible
sudo apt-get install -y python-setuptools
sudo apt-get install -y python-pip
sudo easy_install pip
sudo pip install paramiko PyYAML jinja2 httplib2
sudo apt-get install -y python-boto