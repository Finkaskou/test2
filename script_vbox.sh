#!/bin/bash

echo -e "########################################"
echo -e "#       Installation Virtualbox	#"
echo -e "########################################\n\n\n"

if [ -z $1 ]
then 
	echo "Veuillez préciser le paquet Virtualbox à installer en argument"
else 

	sudo yum update

	echo -e "Installation dkms ...\n\n\n"
	sudo yum install dkms* 

	echo -e "Installation epel-release ...\n\n\n"
	sudo yum install epel-release

	echo -e "Installation kernel-devel ...\n\n\n"
	sudo yum install kernel-devel*

	echo -e "Installation Virtualbox via RPM...\n\n\n"
	sudo rpm -ivh $1
	sudo usermod -aG vboxusers formation
fi

echo -e "\n\n\n########################################"
echo -e "#	  Installation Terminée 	#"
echo -e "########################################\n"


