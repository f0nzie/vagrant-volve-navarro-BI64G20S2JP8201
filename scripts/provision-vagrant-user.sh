#!/bin/bash

echo "Install pyenv as user"
echo "Ensure pyenv folder and .bash_profile file are gone"
if [[ ! -f /home/vagrant/.pyenv ]]; then
	rm -rf /home/vagrant/.pyenv
fi
if [[ ! -f ~/.bash_profile ]]; then
	rm ~/.bash_profile
fi
echo "create ~/.bash_profile"
touch ~/.bash_profile
grep -q -F "export PATH=\"/home/vagrant/.pyenv/bin:\$PATH\"" ~/.bash_profile || echo "export PATH=\"/home/vagrant/.pyenv/bin:\$PATH\"" >> ~/.bash_profile
echo "attempt to load .bash_profile"
source ~/.bash_profile
echo "add pyenv to .bash_profile"
grep -q -F "eval \"\$(pyenv init -)\"" ~/.bash_profile || echo "eval \"\$(pyenv init -)\"" >> ~/.bash_profile
grep -q -F "eval \"\$(pyenv virtualenv-init -)\"" ~/.bash_profile || echo "eval \"\$(pyenv virtualenv-init -)\"" >> ~/.bash_profile
curl -s -S -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
echo "source ~/.bash_profile"
source ~/.bash_profile

echo "Download and install Anaconda3 with pyenv)"
# https://repo.continuum.io/archive/Anaconda3-2020.07-Linux-x86_64.sh
# pyenv install anaconda3-5.1.0      #? previous installation: Python 3.6.4
pyenv install anaconda3-2020.07      #? conda from July 2020. Python 3.8.3

echo "Switch to ./data folder"
cd /home/vagrant/data
echo "Activate pyenv on ./data folder with anaconda3-2020.07"   
pyenv local anaconda3-2020.07       #? set folder with specified environment Python 3.6.4
# conda list

echo "Install Deep Learning packages"
conda install -y theano tensorflow keras 

echo "Install plotnine"
pip install plotnine

# navarro packages
pip install welly

echo "Setup login directory"
echo "cd /home/vagrant/data/"  >> /home/vagrant/.bash_profile
# load .bashrc after .bash_profile
echo "source ~/.bashrc"  >> /home/vagrant/.bash_profile

# conda update -n base conda