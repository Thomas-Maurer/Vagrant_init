VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.hostname = "zombicide-online"
  config.vm.provision :shell, path: "install.sh"
  config.vm.network "private_network", ip: "192.168.100.10"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.synced_folder "www/", "/var/www/"
end
