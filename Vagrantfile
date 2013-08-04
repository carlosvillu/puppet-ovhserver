Vagrant.configure("2") do |config|
  config.vm.box = "OVHServer"
  config.vm.box_url = "http://goo.gl/8kWkm"
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 8080, host: 8081

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path = "modules"
  end

end
