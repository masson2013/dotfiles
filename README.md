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
