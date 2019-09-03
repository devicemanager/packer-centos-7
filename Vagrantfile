# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.ssh.insert_key = true
  config.vm.synced_folder '.', '/vagrant', type: 'nfs'

  # VirtualBox.
  # `vagrant up virtualbox --provider=virtualbox`
  config.vm.define "virtualbox" do |virtualbox|
    virtualbox.vm.hostname = "devbox-centos7"
    virtualbox.vm.box = "file://builds/devbox-centos7-virtualbox.box"
    virtualbox.vm.network :private_network, ip: "172.19.5.2"

    config.vm.provider :virtualbox do |v|
      v.gui = false
      v.memory = 1024
      v.cpus = 1
    end

    config.vm.provision "shell", inline: "echo Hello, World"
    config.vm.provision "shell", inline: "sh scripts/setup.sh"
  end

end
