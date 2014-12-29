# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "chef/centos-6.5"
  config.vm.box_url = " https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"

  # config.vm.provision :shell, path: "bootstrap.sh"
 
  config.vm.define "slave00.env.fac" do |machine|
    machine.vm.network "private_network", ip: "192.168.33.11"
  end

  config.vm.define "slave01.env.fac" do |machine|
    machine.vm.network "private_network", ip: "192.168.33.12"
  end

  config.vm.define "slave02.env.fac" do |machine|
    machine.vm.network "private_network", ip: "192.168.33.13"
  end

  config.vm.define "slave03.env.fac" do |machine|
    machine.vm.network "private_network", ip: "192.168.33.14"
  end

  config.vm.define "master00.env.fac" do |machine|
    machine.vm.network :forwarded_port, host: 4567, guest: 443
    machine.vm.network "private_network", ip: "192.168.33.10"

    machine.vm.provision "ansible" do |ansible|
      ansible.sudo = true
      ansible.inventory_path = "provisioning/hosts-vagrant"
      ansible.limit = "all"
      ansible.playbook = "/provisioning/playbooks/default-vagrant.yml"
      ansible.host_key_checking = false
      # ansible.verbose = 'vvvv'
    end

    #machine.vm.provision :ansible do |ansible|
    #  ansible.sudo = true
    #  ansible.playbook = "/etc/ansible/playbooks/java.yml"
    #  ansible.extra_vars = { java_archives: "jdk-8u25-linux-x64.tar.gz", java_versions: "jdk1.8.0_25" }
    #  ansible.host_key_checking = false
    #end
  end

end
