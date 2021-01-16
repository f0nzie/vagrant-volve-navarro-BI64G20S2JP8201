# -*- mode: ruby -*-
# vi: set ft=ruby :
# VAGRANT_EXPERIMENTAL="disks" required by config.disksize.size = '20GB'

Vagrant.configure("2") do |config|
  # Config
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "BI64G10AE8200"
  # config.vm.provider :virtualbox
  #!  Requires   $ vagrant plugin install vagrant-disksize   # from host
  # config.disksize.size = '20GB'

  config.vm.provider "virtualbox" do |v|
    v.cpus   = 2
    v.memory = 2048
    # Explicitly setting the name, otherwise the default looks like : 
    v.name   = "vagrant-BI64G10DLS2J383AE8200"
  end  

  # Port forwarding
  # config.vm.network "forwarded_port", guest: 8888, host: 8888
  config.vm.network "forwarded_port", guest: 8888, host: 8200

  # config.vm.synced_folder "notebooks/", "/home/vagrant/notebooks"

  # Provisioning
  config.vm.provision :shell, path: "scripts/provision-vagrant.sh"   # as root
  config.vm.provision :shell, path: "scripts/provision-vagrant-user.sh", privileged: false  # as user

  # Welcome message
  config.vm.post_up_message = "*****************************************\n\n" \
                              "    Welcome to your Data Science, Machine Learning and Deep Learning box!\n\n"  \
                              "    To access the Jupyter Notebooks\n" \
                              "    point your browser to:\n\n" \
                              "        http://localhost:8200\n\n" \
                              "    Enjoy!\n\n" \
                              "*****************************************"
end
