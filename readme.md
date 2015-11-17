# E2E Vagrant box

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
