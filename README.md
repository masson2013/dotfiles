## Basic Install Ubuntu 22.04
$ sudo apt install neovim tmux build-essential exa gnome-tweak meld net-tools perl
$ sudo apt install verilator
$ sudo apt install zlib1g zlib1g-dev
$ sudo apt install mdadm brasero

## VNC Ubuntu 22.04
$ sudo apt install tigervnc-standalone-server
$ sudo apt install xfce4 xfce4-goodies
$ vncpasswd
$ sudo vim /etc/tigervnc/vncserver.users
  :3 senma
$ sudo vim /etc/tigervnc/vncserver-config-mandatory
  $geometry="1920x1080";
  $localhost = "no";
  $AlwaysShared = "yes";

$ vim ~/.vnc/xstartup
`bash`
#!/bin/sh

test x"$SHELL" = x"" && SHELL=/bin/bash
test x"$1"     = x"" && set -- default

unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS

vncconfig -iconic &
"$SHELL" -l << EOF
export XDG_SESSION_TYPE=x11
export GNOME_SHELL_SESSION_MODE=ubuntu
export GNOME_SHELL_SESSION_MODE=ubuntu
# dbus-launch --exit-with-session xfce4-session --session=ubuntu
dbus-launch --exit-with-session xfce4-session
EOF
vncserver -kill $DISPLAY
``

Don't need to manually create a tigervncserver@:3.service. Server will call /lib/systemd/system/tigervncserver@service 
Directly enable the service with the display number.
$ sudo systemctl enable tigervncserver@:3
$ sudo systemctl status tigervncserver@:3

## NFS Ubuntu 22.04
$ sudo apt install nfs-kernel-server
$ sudo vim /etc/exports
  /mnt/RAID_DATA/senma_repo *(rw,async,all_squash,no_subtree_check,anonuid=1000,anongid=1000)
$ sudo systemctl restart nfs-kernel-server

## My Own Dotfiles
/usr/local/bin/exa
Move Theme - Nexus.sublime-package into Installed Packages
bash -c  "$(wget -qO- https://git.io/vQgMr)"
Palenight, Background color:#181515

## VNC CentOS:
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

## VNC Ubuntu:
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

## NoVNC:
unzip noVNC-1.1.0.zip
./utils/launch.sh --vnc 10.107.146.58:5901
http://10.107.146.58:6080/vnc.html?host=10.107.146.58&port=6080

## Latex in Ubuntu:

PdfLatex is a tool that converts Latex sources into PDF. This is specifically very important for researchers, as they use it to publish their findings. It could be installed very easily using Linux terminal, though this seems an annoying task on Windows. Installation commands are given below.

* Install the TexLive base

```
sudo apt-get install texlive-latex-base
```

* Also install the recommended and extra fonts to avoid running into the error [1], when trying to use pdflatex on latex files with more fonts.

```
sudo apt-get install texlive-fonts-recommended
sudo apt-get install texlive-fonts-extra
```


* Install the extra packages,

```
sudo apt-get install texlive-latex-extra
```

Once installed as above, you may be able to create PDF files from latex sources using PdfLatex as below.

```
pdflatex latex_source_name.tex
```

## Install NeoVim in MacOS:
```
$ brew update ; brew install --HEAD neovim
$ alias vim='/usr/local/bin/vim'

```
# install vim plug
```
$ sh -c 'curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
