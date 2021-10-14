sudo apt update
sudo apt install -y xfce4 xfce4-goodies vnc4server novnc websockify python-numpy
vncserver
vncserver -kill :1

echo "#!/bin/bash" > ~/.vnc/xstartup
echo 'xrdb $HOME/.Xresources' >> ~/.vnc/xstartup
echo "startxfce4 &" >> ~/.vnc/xstartup
vncserver -geometry 1280x720

#cd /etc/ssl
#sudo openssl req -x509 -nodes -newkey rsa:2048 -keyout novnc.pem -out novnc.pem -days 365
#sudo chmod 644 novnc.pem
#sudo websockify -D --web=/usr/share/novnc/ --cert=/etc/ssl/novnc.pem 8080 localhost:5901

sudo websockify -D --web=/usr/share/novnc/  8080 localhost:5901
