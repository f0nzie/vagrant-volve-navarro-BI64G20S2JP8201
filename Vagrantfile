# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANT_EXPERIMENTAL="disks"

Vagrant.configure("2") do |config|
  # Config
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "BI64G20S2JP8201"
  # config.vm.provider :virtualbox
  config.disksize.size = '20GB'

config.vm.provider "virtualbox" do |vm|
    vm.cpus   = 2
    vm.memory = 5120
    vm.name   = "vagrant-volve-navarro-BI64G20S2JP8201"
end  

  # Port forwarding
  config.vm.network "forwarded_port", guest: 8888, host: 8801
  config.vm.network "forwarded_port", guest: 8787, host: 8701


  config.vm.synced_folder "navarro/", "/home/vagrant/navarro"

  # Provisioning
  config.vm.provision :shell, path: "scripts/provision-vagrant.sh"
  config.vm.provision :shell, path: "scripts/provision-vagrant-user.sh", privileged: false

  # Welcome message
  config.vm.post_up_message = "*****************************************\n\n" \
                              "    Welcome to your data science box!\n\n"  \
                              "    To access your Jupyter Notebook\n" \
                              "    point your browser to:       http://localhost:8801\n\n" \
                              "    To access RStudio\n" \
                              "    point your browser to:       http://localhost:8701\n\n" \
                              "    Enjoy!\n\n" \
                              "*****************************************"
end
