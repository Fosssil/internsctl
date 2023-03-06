#!/usr/bin/env bash
# install internsctl
chmod +x internsctl.sh
sudo cp internsctl.sh /bin/
sudo mv /bin/internsctl.sh /bin/internsctl

#install man page
sudo cp internsctl.1 /usr/share/man/man1/
sudo gzip /usr/share/man/man1/internsctl.1
sudo mandb
