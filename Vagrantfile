Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.network "private_network", ip: "192.168.44.20"
    config.vm.synced_folder "./", "/vagrant", id: "vagrant-root"
    config.vm.provision :shell, :path => "vagrant/bootstrap.sh"
      config.vm.provider :virtualbox do |vb|
        vb.memory = 1024
        vb.customize ["modifyvm", :id, "--hwvirtex", "on"]
        vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
        vb.customize ["modifyvm", :id, "--accelerate2dvideo", "on"]
    end
end

