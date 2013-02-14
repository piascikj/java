# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

    config.vm.customize [ "modifyvm", :id, "--memory", 1024 ]
    config.vm.customize [ "modifyvm", :id, "--cpus", 2 ]
    
    config.vm.define :java_ubuntu do |cfg|
        
        cfg.vm.box       = "precise64"
        cfg.vm.box_url   = "http://files.vagrantup.com/precise64.box"
        cfg.vm.provision :puppet do |puppet|
            
            puppet.module_path    = [ "modules", "spec/fixtures/modules" ]
            puppet.manifests_path = "manifests"
            puppet.manifest_file  = "vagrant.pp"
            puppet.options        = [ "-v", ]
            
        end
        
    end
    
    config.vm.define :java_squeeze do |cfg|
        
        cfg.vm.box       = "squeeze64"
        cfg.vm.box_url   = "http://dl.dropbox.com/u/937870/VMs/squeeze64.box"
        cfg.vm.provision :puppet do |puppet|
            
            puppet.module_path    = [ "modules", "spec/fixtures/modules" ]
            puppet.manifests_path = "manifests"
            puppet.manifest_file  = "vagrant.pp"
            puppet.options        = [ "-v", ]
            
        end
        
    end
    
#    config.vm.define :java_centos63_64 do |cfg|
#        
#        cfg.vm.box       = "centos63_64"
#        cfg.vm.box_url   = "http://puppet-vagrant-boxes.puppetlabs.com/centos-63-x64.box"
#        cfg.vm.provision :puppet do |puppet|
#            
#            puppet.module_path    = [ "modules", "spec/fixtures/modules" ]
#            puppet.manifests_path = "manifests"
#            puppet.manifest_file  = "vagrant.pp"
#            puppet.options        = [ "-v", ]
#            
#        end
#        
#    end
    
#    config.vm.define :java_gentoo64 do |cfg|
#        
#        cfg.vm.box       = "gentoo64"
#        cfg.vm.box_url   = "http://dl.dropbox.com/u/1212791/gentoo-64-i686-3.3.8.box"
#        cfg.vm.provision :puppet do |puppet|
#            
#            puppet.module_path    = [ "modules", "spec/fixtures/modules" ]
#            puppet.manifests_path = "manifests"
#            puppet.manifest_file  = "vagrant.pp"
#            puppet.options        = [ "-v", ]
#            
#        end
#        
#    end

end
