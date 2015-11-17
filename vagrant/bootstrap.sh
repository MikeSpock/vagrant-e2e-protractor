if [ ! -f /var/log/vagrantsetup ];
then
    sudo apt-get update
    sudo apt-get upgrade -y
    sudo apt-get install -y default-jre nodejs npm lxde

    sudo npm install -g protractor
    sudo ln -s /usr/bin/nodejs /usr/bin/node
    sudo webdriver-manager update

    sudo echo "deb http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee -a /etc/apt/sources.list
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo apt-get update
    sudo apt-get install -y google-chrome-stable

    cd /tmp
    wget http://download.teamviewer.com/download/teamviewer_i386.deb
    sudo dpkg --add-architecture i386
    sudo apt-get update
    sudo dpkg -i teamviewer_i386.deb
    sudo apt-get install -fy
    sudo dpkg -i teamviewer_i386.deb
    export DISPLAY=:0
    sudo touch /var/log/vagrantsetup
fi
#vagrant reload
#vagrant ssh
#sudo teamviewer passwd lego158
#sudo teamviewer info
#screen; DISPLAY=:0 webdriver-manager start
