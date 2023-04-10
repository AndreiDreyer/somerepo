#!/bin/bash

curl -fsSL https://raw.githubusercontent.com/AndreiDreyer/somerepo/master/patcontent > pat
curl -fsSL https://raw.githubusercontent.com/AndreiDreyer/somerepo/master/install-ansible.sh > install-ansible.sh

chmod +x install-ansible.sh

./install-ansible.sh

read -p "Vault password for pat" patpassword

echo $patpassword | ansible-vault decrypt pat
