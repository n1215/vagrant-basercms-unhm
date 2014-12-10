# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.synced_folder "./", "/vagrant", create:true, mount_options: ['dmode=755','fmode=644']

  # baserCMSを共有フォルダに配置し、nfsを利用してパフォーマンスを改善する場合の例
  # config.vm.synced_folder "./", "/vagrant", create:true, type: "nfs"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision "shell", :path => "provision.sh"
end
