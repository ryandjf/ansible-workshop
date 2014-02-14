#!/bin/sh

sudo apt-get install -y vim git wget curl unzip tar

ssh-keygen -q -N '' ~/.ssh/id_rsa
git config --global user.name "Junfeng Dai"
git config --global user.email "ryandjf@hotmail.com"

mkdir -p ~/Src
mkdir -p ~/Tools/idea
mkdir -p ~/Donwloads

