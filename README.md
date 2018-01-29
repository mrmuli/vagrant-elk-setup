# vagrant-elk-setup

This is a dynamic, automated log aggregation tool built on ELK using the power of log data to provide analysis and actionable insights of application metrics.

# Structure
The setup is broken down into the following:  
    1. 1 Kibana node  
    2. 1 ElasticSearch node  
    3. 1 Logstash node  
    4. 2 shipper nodes running nginx



# Setup  

## Install dependencies
### 1. OS
Install the following dependencies on your OS distribution.
- Virtualbox
- Vagrant
- Vagrant plugins - vagrant-hostmanager(may be a default)

### Environment setup:

Be sure to create a Virtual environment that's running at least Python 2.7.8+. Don't have one? setup through [this](https://packaging.python.org/guides/installing-using-pip-and-virtualenv/) guide.

### NOTE:
Ensure the ansible version you are running is similar to the one defined in requirements.txt

Run the following commands to setup the environment:  
1. make environ  
    This command will setup the python dependencies and pull ansible roles from Ansible Galaxy

2. make configure  
    This command will build the hosts from the Vagrantfile

3. make provision  
    This command will provision the services on the Vms


Open the Kibana dashboard on http://192.168.50.10:5601 and start defining your indexes
