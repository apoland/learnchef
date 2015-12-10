


Vagrant.configure("2") do |config|
  config.vm.box= "ubuntu/trusty64"
 
  config.vm.provider :virtualbox do |v|
      # This setting gives the VM 1024MB of RAM instead of the default 384.
      v.customize ["modifyvm", :id, "--memory", [ENV['DISCOURSE_VM_MEM'].to_i, 1024].max]
      # Assign additional cores to the guest OS.
      v.customize ["modifyvm", :id, "--cpus", 2]
      v.customize ["modifyvm", :id, "--ioapic", "on"]
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
  
  chef_cookbooks_path = ["cookbooks"]

  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = chef_cookbooks_path
    
    chef.add_recipe "hellochef::default"
    #chef.add_recipe "hellochef::apache2"
  
  end

end
