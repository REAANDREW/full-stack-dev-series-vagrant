# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
    config.vm.box           = "ubuntu-gnome-atom"
    config.vm.network       "private_network", ip: "192.168.56.10"

    config.vm.provider :virtualbox do |vb|
        vb.name = "full-stack-development-vm"
        vb.cpus = 2
        vb.memory = "4096"
        vb.gui = true
        vb.customize ["modifyvm", :id, "--vram", "64"]
    end

    config.vm.provision "file", source: "~/.ssh/id_rsa.full-stack-development", destination: "/home/vagrant/.ssh/id_rsa"
    config.vm.provision "file", source: "~/.ssh/id_rsa.full-stack-development.pub", destination: "/home/vagrant/.ssh/id_rsa.pub"

    config.vm.provision "shell", path: "bootstrap.sh"

end
