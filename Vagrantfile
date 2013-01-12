# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

    config.vm.box       = "precise64"
    config.vm.box_url   = "http://files.vagrantup.com/precise64.box"
    config.vm.customize [ "modifyvm", :id, "--memory", 1024 ]
    config.vm.customize [ "modifyvm", :id, "--cpus", 2 ]
    
    config.vm.define :java do |java_config|
        
        java_config.vm.provision :puppet do |puppet|
            
            puppet.manifests_path = "manifests"
            puppet.manifest_file  = "init.pp"
            puppet.options        = [ "--verbose", ]
            
        end
        
    end

end
