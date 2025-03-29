#!/bin/bash


<< task
 Deploy a Django app
 and handle the code for errors
task

code_clone(){
  echo "Cloning the Django app..."
  git clone https://github.com/LondheShubham153/django-notes-app.git
 
}

install_requirements(){
   echo "Installing dependencies"
   sudo apt-get install docker.io nginx docker-compose  -y
}

required_restart(){
  echo "Restarting system..."
  sudo chown $USER /var/run/docker.sock
  #sudo systemctl enable docker
  #sudo systemctl enable nginx
  #sudo systemctl restart docker
}

deploy(){
  echo "Deploying the project"
  docker build -t notes-app .
  #docker run -d -p 8000:8000 notes-app:latest
  docker-compase up -d
}

echo "*************** Deployment Started ***************"

if !code_clone; then 
	echo "the code directory already exists"
	cd djando-notes-app
fi	

if !install_requirements; then
	echo "Installation failed"
	exit 1
fi

if !required_restart; then
	echo "System fault identified"
	exit 1
fi

if !deploy; then
	echo "Deployment failed and mail to admin"
	# sendmail
	exit 1
fi

echo "************** Deployment Done ***************"

