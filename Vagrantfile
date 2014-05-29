WORKON = ENV['WORKON']
RUBYDEV_IP = ENV['RUBYDEV_IP'] || '192.168.33.22'
RUBYDEV_MEMORY = ENV['RUBYDEV_MEMORY'] || '1024'

VAGRANTFILE_API_VERSION = 2

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'ubuntu-1404'
  config.vm.box_url = 'http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box'

  config.vm.network :private_network, ip: RUBYDEV_IP

  config.vm.provider :virtualbox do |virtualbox|
    virtualbox.customize ['modifyvm', :id, '--memory', RUBYDEV_MEMORY]
  end

  config.vm.synced_folder './setup', '/tmp/setup'

  if WORKON
    if File.directory?(WORKON)
      config.vm.synced_folder WORKON,
                              "/code/#{ WORKON }",
                              :owner => 'vagrant',
                              :group => 'vagrant'
    end
  end

  config.ssh.forward_agent = true

  config.vm.provision 'shell', inline: '/tmp/setup/setup.sh'
end
