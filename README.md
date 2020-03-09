# My Own Dotfiles
/usr/local/bin/exa
Move Theme - Nexus.sublime-package into Installed Packages
bash -c  "$(wget -qO- https://git.io/vQgMr)"
Palenight, Background color:#181515

VNC:
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






