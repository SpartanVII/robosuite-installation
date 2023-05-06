#!/usr/bin/env bash

route=$(pwd)

echo "You are going to install robosuite in the following folder: $route/robosuite."

read -p "Are you sure about that? (y/n) " response

if [ $response = "y" ]; then
    	echo "Perfecto."
	
	wget https://www.python.org/ftp/python/3.8.16/Python-3.8.16.tgz

	tar -xf Python-3.8.16.tgz

	rm -r Python-3.8.16.tgz

	cd Python-3.8.16

	sudo apt update

	sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev

	/configure –enable-optimizations

	make

	sudo make install

	cd ../

	rm -r Python-3.8.16

	sudo apt-get install python3-pip

	sudo apt-get install git

	python3 -m pip install --upgrade termcolor

	python3 -m pip install --upgrade pynput

	git clone https://github.com/ARISE-Initiative/robosuite.git

	cd robosuite

	pip3 install -r requirements.txt
	
	clear
	
	echo "Successfull installation."
	
else
	echo "Ok, don't worry."
fi

