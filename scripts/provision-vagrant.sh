#!/bin/bash
#> 108   3.4.4 2018-03-15 08:04:27       Someone to Lean On
BUILD_DATE="2018-03-15"
MRAN=https://mran.microsoft.com/snapshot/${BUILD_DATE}

echo "Install system requirements"
apt-get --quiet update
apt-get install -y --no-install-recommends \
	curl \
	git

echo "Install pyenv"
curl -# -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

echo "Setup home directory"
ln -s /vagrant/ /home/vagrant/data
chown vagrant.vagrant /home/vagrant/data

echo "Setup Jupyter auto start"
cat >/etc/systemd/system/jupyter.service <<EOL
[Unit]
Description=Jupyter Workplace

[Service]
Type=simple
PIDFile=/run/jupyter.pid
Environment="PATH=/home/vagrant/.pyenv/versions/anaconda3-2020.07/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"
# ExecStart=/home/vagrant/.pyenv/versions/anaconda3-5.1.0/bin/jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --NotebookApp.token= --notebook-dir=/home/vagrant/data
ExecStart=/home/vagrant/.pyenv/versions/anaconda3-2020.07/bin/jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --NotebookApp.token= --notebook-dir=/home/vagrant/data
User=vagrant
Group=vagrant
WorkingDirectory=/home/vagrant/data
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
EOL

systemctl enable jupyter.service
systemctl daemon-reload
systemctl restart jupyter.service
