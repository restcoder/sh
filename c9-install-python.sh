#!/usr/bin/env bash

python get-pip.py
pip install virtualenv
python --version
pip --version
echo -e '\e[92mpython and pip installed successfully'
