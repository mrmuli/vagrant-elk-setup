Vagrant.configure("2") do |config|

  config.vm.define "kibana" do |kibana|
    kibana.vm.box = "ubuntu/trusty64"
    kibana.vm.hostname = 'kibana'
    kibana.vm.network :private_network, ip: "192.168.50.10"
    kibana.vm.network "forwarded_port", host: 5601, guest: 5601
    kibana.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
    end
  end

  config.vm.define "elastic" do |elastic|
    elastic.vm.box = "ubuntu/trusty64"
    elastic.vm.hostname = 'elastic'
    elastic.vm.network :private_network, ip: "192.168.50.11"
    elastic.vm.network "forwarded_port", host: 9200, guest: 9200
    elastic.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
    end
  end

  config.vm.define "logstash" do |logstash|
    logstash.vm.box = "ubuntu/trusty64"
    logstash.vm.hostname = 'logstash'
    logstash.vm.network :private_network, ip: "192.168.50.12"
    logstash.vm.network "forwarded_port", host: 9300, guest: 9300
    logstash.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
    end
  end

  config.vm.define "web1" do |web1|
    web1.vm.box = "ubuntu/trusty64"
    web1.vm.hostname = 'web1'

    web1.vm.network :private_network, ip: "192.168.50.13"

    web1.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
    end
  end

  config.vm.define "web2" do |web2|
    web2.vm.box = "ubuntu/trusty64"
    web2.vm.hostname = 'web2'
    web2.vm.network :private_network, ip: "192.168.50.14"
    web2.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
    end
  end
end
