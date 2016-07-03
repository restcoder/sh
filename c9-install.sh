#!/usr/bin/env bash

exec 2>&1
dir=$(pwd)
cd /tmp
exec > >(tee -i /temp/dump.log) 
cd $dir

. ~/.nvm/nvm.sh
nvm install v6
nvm alias default node
npm i -g restcoder-cli
echo 'The CLI has been installed. Type `restcoder login` to log in.'
