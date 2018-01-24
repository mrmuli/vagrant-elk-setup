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
  config.vm.provision = hostmanager

  config.vm.define "kibana_node" do |kibana_node|
    kibana_node.vm.hostname = "kibana-node"
    kibana_node.vm.box = "ubuntu/trusty64"
    kibana_node.vm.box_url = "ubuntu/trusty64"
    kibana_node.hostmanager.aliases = ["kibana-node"]
    kibana_node.vm.private_network "private_network", ip: "192.168.33.10"
    kibana_node.vm.network "forwarded_port", guest: 80, host: 8080
  end

  config.vm.define "kibana_node" do |elastic_node|
    elastic_node.vm.hostname = "kibana-node"
    elastic_node.vm.box = "ubuntu/trusty64"
    elastic_node.vm.box_url = "ubuntu/trusty64"
    elastic_node.hostmanager.aliases = ["elastic-node"]
    elastic_node.vm.private_network "private_network", ip: "192.168.33.10"
    elastic_node.vm.network "forwarded_port", guest: 80, host: 8080
  end

  config.vm.define "kibana_node" do |logstash_node|
    logstash_node.vm.hostname = "kibana-node"
    logstash_node.vm.box = "ubuntu/trusty64"
    logstash_node.vm.box_url = "ubuntu/trusty64"
    logstash_node.hostmanager.aliases = ["logstash-node"]
    logstash_node.vm.private_network "private_network", ip: "192.168.33.10"
    logstash_node.vm.network "forwarded_port", guest: 80, host: 8080
  end

  config.vm.define "kibana_node" do |web1_node|
    web1_node.vm.hostname = "kibana-node"
    web1_node.vm.box = "ubuntu/trusty64"
    web1_node.vm.box_url = "ubuntu/trusty64"
    web1_node.hostmanager.aliases = ["web1-node"]
    web1_node.vm.private_network "private_network", ip: "192.168.33.10"
    web1_node.vm.network "forwarded_port", guest: 80, host: 8080
  end

  config.vm.define "kibana_node" do |web2_node|
    web2_node.vm.hostname = "kibana-node"
    web2_node.vm.box = "ubuntu/trusty64"
    web2_node.vm.box_url = "ubuntu/trusty64"
    web2_node.hostmanager.aliases = ["web2-node"]
    web2_node.vm.private_network "private_network", ip: "192.168.33.10"
    web2_node.vm.network "forwarded_port", guest: 80, host: 8080
  end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
