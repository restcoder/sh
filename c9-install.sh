#!/usr/bin/env bash

. ~/.nvm/nvm.sh
nvm install v6
nvm alias default node
npm i -g restcoder-cli
restcoder login
