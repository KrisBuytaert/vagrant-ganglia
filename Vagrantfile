Vagrant::Config.run do |config|


config.vm.define :gclient do |gclient_config|
       gclient_config.vm.box = "centos5-64"
       gclient_config.ssh.max_tries = 100
       gclient_config.vm.network "10.42.42.10"
       gclient_config.vm.host_name = "gclient"
       gclient_config.vm.provision :puppet do |gclient_puppet|
       gclient_puppet.pp_path = "/tmp/vagrant-puppet"
       gclient_puppet.manifests_path = "manifests"
       gclient_puppet.module_path = "modules"
       gclient_puppet.manifest_file = "site.pp"
       end
  end

config.vm.define :gserver do |gserver_config|
       gserver_config.vm.box = "centos5-64"
       gserver_config.ssh.max_tries = 100
       gserver_config.vm.network "10.42.42.11"
       gserver_config.vm.host_name = "gserver"
       gserver_config.vm.provision :puppet do |gserver_puppet|
       gserver_puppet.pp_path = "/tmp/vagrant-puppet"
       gserver_puppet.manifests_path = "manifests"
       gserver_puppet.module_path = "modules"
       gserver_puppet.manifest_file = "site.pp"
       end
  end

    
end
