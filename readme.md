# E2E Vagrant box

A super-lightweight vagrant box with lxde desktop on Ubuntu 14.04 LTS. I use this on our dev server so I can run automated e2e tests from our CI server (Teamcity, Jenkins, etc). Private network is used instead of nat port forward, so if you decide to deploy this machine on your agent server, it will be accessible to the agent, but not to the outside world. Change private network IP if you want to in the Vagrantfile.

## Install
    git clone git@github.com:MikeSpock/vagrant-e2e-protractor.git
    cd vagrant-e2e-protractor
    vagrant up
    
## First run

First, reboot the vagrant box

    vagrant reload
    
Then, start teamviewer inside the virtual machine (optional)

    vagrant ssh
    sudo teamviewer passwd enter-your-password
    sudo teamviewer info
    
Take teamviewer id from the output of the last command. You can access teamviewer now with that id, and the password you entered. 
    
## Vagrant up

After you start the box, start webdriver-manager

    vagrant ssh
    screen
    DISPLAY=:0 webdriver-manager start
    Ctrl+A D    [to detach screen]
    exit
    
Then, access selenium `192.168.44.20:4444/wb/hub`
