# vagrant-elk-setup


# Setup  

## Install dependencies
### 1. OS
Install the following dependencies on your OS distribution.
- Virtualbox
- Vagrant
- Vagrant plugins - vagrant-hostmanager(may be a default)

### 2.  Python env 
Be sure to create a Virtual environment that's running at least Python 2.7.8+. Don't have one? setup through [this](https://packaging.python.org/guides/installing-using-pip-and-virtualenv/) guide.

Install Python requirements: 

` pip install -r requirements.txt`

### NOTE:
Ensure the ansible version you are running is similar to the one defined in requirements.txt