# My Own Dotfiles
/usr/local/bin/exa
Move Theme - Nexus.sublime-package into Installed Packages
bash -c  "$(wget -qO- https://git.io/vQgMr)"
Palenight, Background color:#181515

VNC CentOS:
https://www.tecmint.com/install-and-configure-vnc-server-in-centos-7/
$ sudo yum install tigervnc-server
$ vncpasswd
$ sudo cp /lib/systemd/system/vncserver@.service  /etc/systemd/system/vncserver@:1.service
$ sudo vim /etc/systemd/system/vncserver@\:1.service

$ sudo systemctl daemon-reload
$ sudo systemctl start vncserver@:1
$ sudo systemctl status vncserver@:1
$ sudo systemctl enable vncserver@:1

$ sudo firewall-cmd --add-port=5901/tcp --permanent

VNC Ubuntu:
sudo apt-get install xfce4 xfce4-goodies
sudo apt-get install tightvncserver
vncpasswd
sudo cp vncserver@:1.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable vncserver@:1.service
sudo systemctl start vncserver@:1
sudo systemctl status vncserver@:1
"Tab" Issue:
Windows Management->keyboard->remove switch windows (super + tab)

NoVNC:
unzip noVNC-1.1.0.zip
./utils/launch.sh --vnc 10.107.146.58:5901
http://10.107.146.58:6080/vnc.html?host=10.107.146.58&port=6080



