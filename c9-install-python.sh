#!/usr/bin/env bash

curl -s https://bootstrap.pypa.io/get-pip.py | python
sudo pip install --upgrade pip
sudo pip install virtualenv
python --version
pip --version
echo -e '\e[92mpython and pip installed successfully'
