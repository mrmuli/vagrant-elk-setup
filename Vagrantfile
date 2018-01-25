# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|
  config.ssh.insert_key = false
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_url = "ubuntu/trusty64"
  
  config.vm.provider "virtualbox" do | v |
    v.memory = 1024
    v.cpus = 2
    v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    v.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  config.vm.define "kibana" do |kibana|
    kibana.vm.hostname = "kibana"
    kibana.hostmanager.aliases = %w(kibana_node)
    kibana.vm.private_network "private_network", ip: "192.168.33.10"

    kibana.vm.provision :ansible do |ansible|
      ansible.inventory_path = "inventory/vagrant"
      ansible.playbook = "deploy.yml"
      ansible.sudo = true
      ansible.verbose = 'vvv'
    end
  end

  config.vm.define "elastic" do |elastic|
    elastic.vm.hostname = "elastic"
    elastic.hostmanager.aliases = %w(elastic)
    elastic.vm.private_network "private_network", ip: "192.168.33.11"
    
    elastic.vm.provision :ansible do |ansible|
      ansible.inventory_path = "inventory/vagrant"
      ansible.playbook = "deploy.yml"
      ansible.sudo = true
      ansible.verbose = 'vvv'
    end
  end

  config.vm.define "logstash" do |logstash|
    logstash.vm.hostname = "logstash"
    logstash.hostmanager.aliases = %w(logstash)
    logstash.vm.private_network "private_network", ip: "192.168.33.12"
    
    logstash.vm.provision :ansible do |ansible|
      ansible.inventory_path = "inventory/vagrant"
      ansible.playbook = "deploy.yml"
      ansible.sudo = true
      ansible.verbose = 'vvv'
    end
  end

  config.vm.define "web1" do |web1|
    web1.vm.hostname = "web1"
    web1.hostmanager.aliases = %w(web1_node)
    web1.vm.private_network "private_network", ip: "192.168.33.13"
    
    web1.vm.provision :ansible do |ansible|
      ansible.inventory_path = "inventory/vagrant"
      ansible.playbook = "deploy.yml"
      ansible.sudo = true
      ansible.verbose = 'vvv'
    end
  end

  config.vm.define "web2" do |web2|
    web2.vm.hostname = "web2"
    web2.hostmanager.aliases = %w(web2_node)
    web2.vm.private_network "private_network", ip: "192.168.33.14"
    
    web2.vm.provision :ansible do |ansible|
      ansible.inventory_path = "inventory/vagrant"
      ansible.playbook = "deploy.yml"
      ansible.sudo = true
      ansible.verbose = 'vvv'
    end
  end
end
