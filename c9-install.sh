#!/usr/bin/env bash

. ~/.nvm/nvm.sh
nvm install v6
nvm alias default node
#npm i -g restcoder-cli
npm i -g https://github.com/restcoder/restcoder-cli#dev
echo -e '\e[92mCLI installed successfully'
echo -e '\e[92mPlease log in with your RestCoder credentials'
restcoder login
