#!/bin/bash

# Install ansible
sudo apt update && sudo apt upgrade \
	&& sudo apt install -y software-properties-common \
	&& sudo apt-add-repository ppa:ansible/ansible \
	&& sudo apt install -y ansible
