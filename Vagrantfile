# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.ssh.insert_key = false
  config.vm.provision :hostmanager

  config.vm.provision :ansible do |ansible|
    ansible.inventory_path = "inventory/vagrant"
    ansible.playbook = "deploy.yml"
    ansible.limit = "all"
    ansible.verbose = 'vvv'
  end

  # array of hostnames
  nodes = ['kibana-node', 'elastic-node', 'logstash-node', 'web1-node', 'web2-node']
  
  config.vm.provider "virtualbox" do | v |
    v.gui = false
    v.memory = 2500
    v.cpus = 2
  end

  config.vm.define "kibana_node" do |kibana_node|
    kibana_node.vm.hostname = "kibana_node"
    kibana_node.vm.box = "ubuntu/trusty64"
    kibana_node.vm.box_url = "ubuntu/trusty64"
    kibana_node.hostmanager.aliases = %w(kibana-node)
    
    kibana_node.vm.private_network "private_network", ip: "192.168.33.10"
    kibana_node.vm.network "forwarded_port", guest: 80, host: 8080
  end

  config.vm.define "elastic_node" do |elastic_node|
    elastic_node.vm.hostname = "elastic_node"
    elastic_node.vm.box = "ubuntu/trusty64"
    elastic_node.vm.box_url = "ubuntu/trusty64"
    elastic_node.hostmanager.aliases = "elastic-node"
    elastic_node.vm.private_network "private_network", ip: "192.168.33.11"
    elastic_node.vm.network "forwarded_port", guest: 80, host: 8080
  end

  config.vm.define "logstash_node" do |logstash_node|
    logstash_node.vm.hostname = "logstash_node"
    logstash_node.vm.box = "ubuntu/trusty64"
    logstash_node.vm.box_url = "ubuntu/trusty64"
    logstash_node.hostmanager.aliases = "logstash-node"
    logstash_node.vm.private_network "private_network", ip: "192.168.33.12"
    logstash_node.vm.network "forwarded_port", guest: 80, host: 8080
  end

  config.vm.define "web1_node" do |web1_node|
    web1_node.vm.hostname = "web1_node"
    web1_node.vm.box = "ubuntu/trusty64"
    web1_node.vm.box_url = "ubuntu/trusty64"
    web1_node.hostmanager.aliases = "web1-node"
    web1_node.vm.private_network "private_network", ip: "192.168.33.13"
    web1_node.vm.network "forwarded_port", guest: 80, host: 8080
  end

  config.vm.define "web2_node" do |web2_node|
    web2_node.vm.hostname = "web2_node"
    web2_node.vm.box = "ubuntu/trusty64"
    web2_node.vm.box_url = "ubuntu/trusty64"
    web2_node.hostmanager.aliases = "web2-node"
    web2_node.vm.private_network "private_network", ip: "192.168.33.14"
    web2_node.vm.network "forwarded_port", guest: 80, host: 8080
  end
end
