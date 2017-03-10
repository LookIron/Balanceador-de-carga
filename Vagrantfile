VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.ssh.insert_key = false

  config.vm.define :centos_web do |web|
    web.vm.box = "centos64update"
    web.vm.network "private_network", ip: "192.168.33.10"
    web.vm.network "public_network", bridge: "enp5s0", ip: "192.168.131.11"
    web.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "1", "--name", "centosweb" ]
    end
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe "web"
    end
  end

 config.vm.define :centos_web2 do |web2|
    web2.vm.box = "centos64update"
    web2.vm.network "private_network", ip: "192.168.33.12"
    web2.vm.network "public_network", bridge: "enp5s0", ip: "192.168.131.13"
    web2.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "1", "--name", "centosweb2" ]
    end
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe "web2"
    end
  end

  config.vm.define :centos_db do |db|
    db.vm.box = "centos64update"
    db.vm.network "private_network", ip: "192.168.33.16"
    db.vm.network "public_network", bridge: "enp5s0", ip: "192.168.131.17"
    db.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "1", "--name", "centosdb" ]
    end
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe "db"
    end
  end


config.vm.define :centos_bc do |bc|
    bc.vm.box = "centos64update"
    bc.vm.network "private_network", ip: "192.168.33.14"
    bc.vm.network "public_network", bridge: "enp5s0", ip: "192.168.131.15"
    bc.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "1", "--name", "balanceador" ]
    end
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe "bc"
    end
  end
end	
