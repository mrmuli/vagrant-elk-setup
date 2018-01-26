
environ:
	pip install -r requirements.txt
	ansible-galaxy install -r ansible-requirements.yml -p ./roles -f

configure:
	vagrant up

provision:
	ansible-playbook deploy.yml -i inventory/hosts -vv

# TODO: set host variables (ports and IPs)
# variables:
# 	./variables.sh