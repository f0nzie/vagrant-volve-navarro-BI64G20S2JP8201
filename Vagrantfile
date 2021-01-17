# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANT_EXPERIMENTAL="disks"

Vagrant.configure("2") do |config|
  # Config
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "BI64G10AE8200"
  # config.vm.provider :virtualbox
  #!  Requires   $ vagrant plugin install vagrant-disksize   from host
  config.disksize.size = '20GB'

config.vm.provider "virtualbox" do |vm|
    vm.cpus   = 2
    vm.memory = 5120
    vm.name   = "vagrant-deeplearning-BI64G10DLS2J383AE8200"
end  

  # Port forwarding
  config.vm.network "forwarded_port", guest: 8888, host: 8200
  #config.vm.network "forwarded_port", guest: 8000, host: 8000

  config.vm.synced_folder "navarro/", "/home/vagrant/navarro"

  # Provisioning
  config.vm.provision :shell, path: "scripts/provision-vagrant.sh"
  config.vm.provision :shell, path: "scripts/provision-vagrant-user.sh", privileged: false

  # Welcome message
  config.vm.post_up_message = "*****************************************\n\n" \
                              "    Welcome to your data science box!\n\n"  \
                              "    To access your Jupyter Notebook\n" \
                              "    point your browser to:\n\n" \
                              "        http://localhost:8200\n\n" \
                              "    Have fun!\n\n" \
                              "*****************************************"
end
