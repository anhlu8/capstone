
### Jenkins

* Create a user and save credentials which will be needed for Jenkins
* Create an EC2 install (Ubuntu 18)

Command for installing jenkins if you use Ubuntu:
```
sudo apt-get update
sudo apt install -y default-jdk
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins
```

* Install Blue Ocean & other plugins into Jenkins to connect Jenkins with GitHub repo
- Blue Ocean
- Config API for Blue Ocean
- Git Pipeline for Blue Ocean
- GitHub Pipeline for Blue Ocean
- Pipeline Implementation for Blue Ocean
- Blue Ocean Pipeline Editor
- Display URL for Blue Ocean
- Blue Ocean Executor Info

* Install AWS plugins into Jenkins