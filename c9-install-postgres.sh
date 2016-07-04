#!/usr/bin/env bash
sudo apt-get -y remove --purge postgresql-9.3
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql-9.4

{ echo; echo "host all all 0.0.0.0/0 trust"; } | sudo tee -a "/etc/postgresql/9.4/main/pg_hba.conf"
{ echo; echo "host all all ::1/128   trust"; } | sudo tee -a "/etc/postgresql/9.4/main/pg_hba.conf"
{ echo; echo "host all all 127.0.0.1/32   trust"; } | sudo tee -a "/etc/postgresql/9.4/main/pg_hba.conf"
sudo /etc/init.d/postgresql reload
