# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.boot_timeout = 300
  config.vm.network "private_network", ip: "192.168.56.101"

  config.vm.synced_folder "C:/Users/super_000/Environments/openswimdata", "/var/www"

  config.vm.provider "virtualbox" do |virtualbox|
    virtualbox.customize ["modifyvm", :id, "--name", "openswimdata-box"]
    virtualbox.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "init.pp"
	puppet.module_path  = "puppet/modules"
  end

end