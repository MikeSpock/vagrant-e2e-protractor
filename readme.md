# E2E Vagrant box

## Install
    vagrant up
    
## First run

First, reboot the vagrant box

    vagrant reload
    
Then, install teamviewer

    vagrant ssh
    sudo teamviewer passwd lego158
    sudo teamviewer info
    
Take teamviewer id from the output of info. You can access teamviewer now. 
    
## Vagrant up

After you start the box, start webdriver-manager

    vagrant ssh
    screen
    DISPLAY=:0 webdriver-manager start
    Ctrl+A D    [to detach screen]
    
Then, access selenium `192.168.44.20:4444/wb/hub`