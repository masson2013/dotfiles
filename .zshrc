# If you come from bash you might have to change your $PATH.
  export BREWHOME="$HOME/Documents/GitHub/homebrew"
  export PATH="$PATH:$BREWHOME/bin"
  export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$BREWHOME/lib
  # export RISCV="/usr/local/Cellar/riscv-gnu-toolchain/master"
  # export RISCV_SIM="/usr/local/Cellar/riscv-isa-sim/master"
  # export RISCV_PK="/usr/local/Cellar/riscv-pk/master"
  # export PATH="$PATH:$RISCV/bin"
  # export PATH="$PATH:$RISCV_SIM/bin"
  # export PATH="$PATH:$RISCV_PK/bin"
  export PATH=$HOME/bin:/usr/local/bin:$PATH
  export PATH=/$HOME/sublime_text_3:$PATH
  export PATH=/usr/local/texlive/2018/bin/x86_64-linux:$PATH
  export PATH=/$HOME/Documents/GitHub/flutter/bin:$PATH
  export PATH=/$HOME/Documents/GitHub/mytools:$PATH
  export PATH=/usr/local/Cellar/parquet-tools/1.12.0/bin:$PATH
  export PATH=/usr/local/opt/openssl@3/bin:$PATH
  export PATH="$PATH:/Users/senma/Library/Python/2.7/bin"
  # export PATH="$LLVM_HOME/bin:$PATH"
  export PATH="$PATH:/usr/local/texlive/2022/bin/universal-darwin"

  export CXX="clang++ -fcolor-diagnostics"
  export CC="clang -fcolor-diagnostics"
  # export CXX="g++ -fcolor-diagnostics"
  # export CC="gcc -fcolor-diagnostics"

  # export LLVM_HOME=$HOME/Documents/GitHub/homebrew/opt/llvm
  # export LLVM_LIBDIR=$LLVM_HOME/lib
  # export LD_LIBRARY_PATH=$LLVM_LIBDIR:$LD_LIBRARY_PATH

  export SYSTEMC_HOME=$HOME/Documents/GitHub/Learn/Learn_Systemc/Tools/systemc-2.3.3-macM1
  export SYSTEMC_INCLUDE=$SYSTEMC_HOME/include
  export SYSTEMC_LIBDIR=$SYSTEMC_HOME/lib
  export LD_LIBRARY_PATH=$SYSTEMC_HOME/lib:$LD_LIBRARY_PATH

  export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib
  export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

  # export LDFLAGS="-L/Users/senma/Documents/GitHub/homebrew/opt/llvm/lib"
  # export CPPFLAGS="-I/Users/senma/Documents/GitHub/homebrew/opt/llvm/include"

  # export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$RISCV/riscv64-unknow-elf/lib"
  # export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$RISCV/riscv64-unknow-elf/include"


  # export PKG_CONFIG_PATH="/usr/local/opt/openssl@3/lib/pkgconfig"
  # export LDFLAGS="-L/usr/local/opt/openssl@3/lib"
  # export CPPFLAGS="-I/usr/local/opt/openssl@3/include"
  #  export OPENSSL_ROOT_DIR=/usr/local/Cellar/openssl@1.1/1.1.1l_1
  #  export OPENSSL_CRYPTO_LIBRARY=$OPENSSL_ROOT_DIR/lib
  #  export OPENSSL_INCLUDE_DIR=$OPENSSL_ROOT_DIR/include
  # export CXX="g++-11"
  # export CC="gcc-11"
  # export SYSTEMC_HOME=$HOME/Documents/GitHub/Learn/Learn_Systemc/Tools/systemc-2.3.3

  export SSL_CERT_FILE=/$HOME/.ca_crt/ca.crt
  export REQUEST_CA_BUNDLE=/$HOME/.ca_crt/ca.crt


  # export CMAKE_PREFIX_PATH=/$HOME/Documents/GitHub/amp_project/systemc-2.3.3/lib:/$HOME/Documents/GitHub/amp_project/systemc-2.3.3/include

  # export Parquet_DIR=/usr/local/Cellar/parquet-tools/1.12.0
  # export CMAKE_MODULE_PATH=$CMAKE_MODULE_PATH:$Parquet_DIR

unsetopt beep
HISTSIZE=20000
SAVEHIST=20000
HISTFILE=~/.zsh_history

# Path to your oh-my-zsh installation.
  export ZSH=/$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#
# ZSH_THEME="robbyrussell"
ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
  CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(iterm2 git gitfast jira tmux tmuxinator screen history colorize cp zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# [[ $TERM != "screen" ]] && exec tmux attach

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
  export SSH_KEY_PATH="~/.ssh/rsa_id"


# THEIP=$(ifconfig |grep 'inet addr:' | grep -v '127.0.0.1' |tail -1 |cut -d: -f 2 |awk '{print $1}')
# PS1="\[\033[01;31m\]\u@"$THEIP" \w $\[\033[00m\] ";

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
  alias zshconfig="vim ~/.zshrc"
  alias ohmyzsh="vim ~/.oh-my-zsh"


 
  export PICOBASE="/$HOME/senma_repo/pico"
  export PATH=$PATH:/$HOME
  export PATH=$PICOBASE/bin:$PATH
  export PATH=~/sublime_text:$PATH
  # export PATH=/usr/local/bin:$PATH

  export  http_proxy="http://proxy-web.micron.com:80/"
  export https_proxy="http://proxy-web.micron.com:80/"
  export   ftp_proxy="http://proxy-web.micron.com:80/"
  # export    no_proxy="*.micron.com,localhost,127.0.0.1,10.107.146.124"
  export no_proxy="localhost,127.0.0.1,docker-registry.example.com,.corp"

  # export http_proxy="http://proxy.micron.com:8080/"
  # export https_proxy="http://proxy.micron.com:8080/"
  # export ftp_proxy="http://proxy.micron.com:8080/"
  # LIBERO_INSTALLED_DIR="/usr/local/microsemi/Libero_v11.8";export LIBERO_INSTALLED_DIR
  PATH=$LIBERO_INSTALLED_DIR/Libero/bin:$PATH;
  PATH=$LIBERO_INSTALLED_DIR/Synplify/bin:$PATH;
  PATH=$LIBERO_INSTALLED_DIR/Model/modeltech/linuxacoem:$PATH;export PATH
  # PATH=/usr/local/microsemi/SoftConsole_v4.0/arm-none-eabi-gcc/bin:$PATH;
  # PATH=/usr/local/microsemi/SoftConsole_v4.0/eclipse:$PATH;
  #PATH=/usr/local/microsemi/Program_DebugV11.8/FlashPro/bin:$PATH;
  # PATH=/usr/local/microsemi/FlashProExpressStandalone_11_6/FlashPro/bin:$PATH;
  # For Floating License from a License Server
  export LM_LICENSE_FILE=13140@10.107.146.80:$LM_LICENSE_FILE
  export SNPSLMD_LICENSE_FILE=13140@10.107.146.80:$SNPSLMD_LICENSE_FILE
  export SYNPLCTYD_LICENSE_FILE=13140@10.107.146.80:$SYNPLCTYD_LICENSE_FILE
  # export LD_LIBRARY_PATH=/usr/local/microsemi/SoftConsole_v4.0/openocd/bin:$LD_LIBRARY_PATH
  #export DISPLAY=:0
 
  alias vim='nvim'
  alias gitc='git log --abbrev-commit 2>/dev/null |grep commit |head -n 1 |colrm 1 7'
  #alias work='cd /media/senma/Data/pre_data/senma_repo'
  alias vivado='vivado -nojournal -nolog'
  #alias work='cd /media/micron/Data/pre_data/senma_repo'
  alias work='cd /run/media/micron/Data/pre_data/senma_repo' 
  alias work2='cd /run/media/micron/Data2/senma_repo' 
  # alias subl='sublime_text .'
  alias subl='open -a Sublime\ Text'
  alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
  # alias jump='ssh -Y micron@10.107.146.32'
  alias jumpb='ssh -X senma@bolalog33'
  # alias jump='ssh -Y senma@thor.ddns.uark.edu'
  #alias jump='ssh -Y micron@10.107.146.80'
  # https://10.107.146.44
  #alias jumpt='ssh -Y micron@10.107.146.58'
  #alias jumpt='ssh -Y micron@sen7'
  #alias DL4='ssh -Y micron@10.107.146.69'
  #alias jumpx='ssh -Y micron@10.107.146.100'
  #alias jump2='ssh -Y micron@10.107.146.109'
  #alias jump3='ssh -Y micron@10.107.146.38'
  #alias jump3='ssh -Y micron@10.107.146.29'
  #alias jump4='ssh -Y subtonic@67.135.211.55'
  #alias jump4='ssh -Y micron@10.107.146.98'
  #alias jump5='ssh -Y micron@10.107.146.124'
  #alias jump5='ssh -Y micron@sen5'
  #alias jump6='ssh -Y micron@sen6'
  #alias jump6='ssh -Y micron@10.107.146.96'
  #alias jump2='ssh -Y micron@130.184.104.144'
  #alias jump3='ssh -Y micron@130.184.104.102'
  #alias jump3='ssh -Y micron@130.184.104.178'
  #alias jump3='ssh -Y micron@uaf132959.ddns.uark.edu'
  #alias jump3='ssh -Y micron@uaf132958.ddns.uark.edu'
  alias jmy='ssh senma@senma-c02z9306lvch.micron.com'
  alias jsen0='ssh -Y micron@10.117.183.119' # / 183.219
  alias jsen2='ssh -Y micron@sen2' #10.117.182.225 
  alias jsen3='ssh -Y micron@sen3' #10.117.182.105
  alias jsen4='ssh -Y micron@sen4' #10.117.182.256 / 183.83
  alias jsen5='ssh -Y micron@sen5' #10.117.182.249 / 183.130
  alias jsen6='ssh -Y micron@sen6' #10.117.182.118 / 183.93
  alias jsen7='ssh -Y micron@sen7' #10.117.183.11

  alias jd1='ssh -Y micron@10.117.183.169'
  # alias jd1='ssh -Y micron@10.117.183.213'
  # alias jd2='ssh -Y micron@AMS-DLA-U20-Master' #10.101.209.253
  alias jd2='ssh -Y micron@10.101.209.253'
  alias jd3='ssh -Y micron@10.101.209.49'

  alias jan='ssh -Y micron@aiwanskia-mini'

  alias pip3='pip3 --trusted-host pypi.org --trusted-host files.pythonhosted.org --proxy http://proxy-web.micron.com:80'
  alias pip='pip --trusted-host pypi.org --trusted-host files.pythonhosted.org --proxy http://proxy-web.micron.com:80'
  alias dus='du -sh *|sort -h'
  alias grep='grep --color'
  alias egrep='egrep --color'
  alias fgrep='fgrep --color'
  alias cp='cp -iv'                           # Preferred 'cp' implementation
  alias mv='mv -iv'                           # Preferred 'mv' implementation
  alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation

#  alias ll='ls -aFGlAhp'                      # Preferred 'ls' implementation
  alias dir='exa -alb'
  alias ls='exa -albSs modified'
  alias ll='exa -abghHlSs modified'
  alias clr='clear'
  alias cls='clear'

  alias grt='git remote -v'

  alias less='less -FSRXc'                    # Preferred 'less' implementation
  cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
  alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
  alias ..='cd ../'                           # Go back 1 directory level
  alias ...='cd ../../'                       # Go back 2 directory levels
  alias .3='cd ../../../'                     # Go back 3 directory levels
  alias .4='cd ../../../../'                  # Go back 4 directory levels
  alias .5='cd ../../../../../'               # Go back 5 directory levels
  alias .6='cd ../../../../../../'            # Go back 6 directory levels
  alias edit='subl'                           # edit:         Opens any file in sublime editor
  alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
  alias ~="cd ~"                              # ~:            Go Home
  alias c='clear'                             # c:            Clear terminal display
  # alias which='type -all'                     # which:        Find executables
  alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
  alias show_options='shopt'                  # Show_options: display bash options settings
  alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
  alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
  mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
  trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
  ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
  alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop
  alias cbcopy='xclip -sel clip < '           # cbcopy        Copy content to clipboard
  addkey() { cat ~/.ssh/id_rsa.pub | ssh "$1" "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"; }   
  alias latexpdf='pdflatex'
  # alias Parquet='parquet-tools'

  #   lr:  Full Recursive Directory Listing
  #   ------------------------------------------
  alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
  
  #   mans:   Search manpage given in agument '1' for term given in argument '2' (case insensitive)
  #           displays paginated result with colored search terms and two lines surrounding each hit.             Example: mans mplayer codec
  #   --------------------------------------------------------------------
      mans () {
          man $1 | grep -iC2 --color=always $2 | less
      }
  
  #   showa: to remind yourself of an alias (given some part of it)
  #   ------------------------------------------------------------
      showa () { /usr/bin/grep --color=always -i -a1 $@ ~/Library/init/bash/aliases.bash | grep -v '^\s*$' | less -FSRXc ; }
  
  
  #   -------------------------------
  #   3.  FILE AND FOLDER MANAGEMENT
  #   -------------------------------
  
  zipf () { zip -r "$1".zip "$1" ; }          # zipf:         To create a ZIP archive of a folder
  alias numFiles='echo $(ls -1 | wc -l)'      # numFiles:     Count of non-hidden files in current dir
  alias make1mb='mkfile 1m ./1MB.dat'         # make1mb:      Creates a file of 1mb size (all zeros)
  alias make5mb='mkfile 5m ./5MB.dat'         # make5mb:      Creates a file of 5mb size (all zeros)
  alias make10mb='mkfile 10m ./10MB.dat'      # make10mb:     Creates a file of 10mb size (all zeros)
  
  #   extract:  Extract most know archives with one command
  #   ---------------------------------------------------------
      extract () {
          if [ -f $1 ] ; then
            case $1 in
              *.tar.bz2)   tar xjf $1     ;;
              *.tar.gz)    tar xzf $1     ;;
              *.bz2)       bunzip2 $1     ;;
              *.rar)       unrar e $1     ;;
              *.gz)        gunzip $1      ;;
              *.tar)       tar xf $1      ;;
              *.tbz2)      tar xjf $1     ;;
              *.tgz)       tar xzf $1     ;;
              *.zip)       unzip $1       ;;
              *.Z)         uncompress $1  ;;
              *.7z)        7z x $1        ;;
              *)     echo "'$1' cannot be extracted via extract()" ;;
               esac
           else
               echo "'$1' is not a valid file"
           fi
      }
  
  
  #   ---------------------------
  #   4.  SEARCHING
  #   ---------------------------
  
  alias qfind="find . -name "                 # qfind:    Quickly search for file
  # ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
  # ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
  # ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string
  sfind() {find . -name "$1" |xargs grep -i "$2" --color}
  rgrep() {grep -i -v "$1" |grep -i "$2" --color}
  
  #   ---------------------------
  #   5.  PROCESS MANAGEMENT
  #   ---------------------------
  
  #   findPid: find out the pid of a specified process
  #   -----------------------------------------------------
  #       Note that the command name can be specified via a regex
  #       E.g. findPid '/d$/' finds pids of all processes with names ending in 'd'
  #       Without the 'sudo' it will only find processes of the current user
  #   -----------------------------------------------------
      findPid () { lsof -t -c "$@" ; }
  
  #   memHogsTop, memHogsPs:  Find memory hogs
  #   -----------------------------------------------------
      alias memHogsTop='top -l 1 -o rsize | head -20'
      alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'
  
  #   cpuHogs:  Find CPU hogs
  #   -----------------------------------------------------
      alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
  
  #   topForever:  Continual 'top' listing (every 10 seconds)
  #   -----------------------------------------------------
      alias topForever='top -l 9999999 -s 10 -o cpu'
  
  #   ttop:  Recommended 'top' invocation to minimize resources
  #   ------------------------------------------------------------
  #       Taken from this macosxhints article
  #       http://www.macosxhints.com/article.php?story=20060816123853639
  #   ------------------------------------------------------------
      alias ttop="top -R -F -s 10 -o rsize"
  
  #   my_ps: List processes owned by my user:
  #   ------------------------------------------------------------
      my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }
  
  
  #   ---------------------------
  #   6.  NETWORKING
  #   ---------------------------
 
  alias myip="ifconfig |grep 'inet addr:' | grep -v '127.0.0.1' |tail -1 |cut -d: -f 2 |awk '{print \$1}'"
  # alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
  alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
  alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
  alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
  alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
  alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
  alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
  alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
  alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
  alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs
  
  #   ii:  display useful host related informaton
  #   -------------------------------------------------------------------
      ii() {
          echo -e "\nYou are logged on ${RED}$HOST"
          echo -e "\nAdditionnal information:$NC " ; uname -a
          echo -e "\n${RED}Users logged on:$NC " ; w -h
          echo -e "\n${RED}Current date :$NC " ; date
          echo -e "\n${RED}Machine stats :$NC " ; uptime
          echo -e "\n${RED}Current network location :$NC " ; scselect
          echo -e "\n${RED}Public facing IP Address :$NC " ;myip
          #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
          echo
      }
  
  
  #   ---------------------------------------
  #   7.  SYSTEMS OPERATIONS & INFORMATION
  #   ---------------------------------------
  
  alias mountReadWrite='/sbin/mount -uw /'    # mountReadWrite:   For use when booted into single-user
  
  #   cleanupDS:  Recursively delete .DS_Store files
  #   -------------------------------------------------------------------
      alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
  
  #   finderShowHidden:   Show hidden files in Finder
  #   finderHideHidden:   Hide hidden files in Finder
  #   -------------------------------------------------------------------
      alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
      alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'
  
  #   cleanupLS:  Clean up LaunchServices to remove duplicates in the "Open With" menu
  #   -----------------------------------------------------------------------------------
      alias cleanupLS="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
  
  #    screensaverDesktop: Run a screensaver on the Desktop
  #   -----------------------------------------------------------------------------------
      alias screensaverDesktop='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background'
  
  #   ---------------------------------------
  #   8.  WEB DEVELOPMENT
  #   ---------------------------------------
  
  alias apacheEdit='sudo edit /etc/httpd/httpd.conf'      # apacheEdit:       Edit httpd.conf
  alias apacheRestart='sudo apachectl graceful'           # apacheRestart:    Restart Apache
  alias editHosts='sudo edit /etc/hosts'                  # editHosts:        Edit /etc/hosts file
  alias herr='tail /var/log/httpd/error_log'              # herr:             Tails HTTP error logs
  alias apacheLogs="less +F /var/log/apache2/error_log"   # Apachelogs:   Shows apache error logs
  httpHeaders () { /usr/bin/curl -I -L $@ ; }             # httpHeaders:      Grabs headers from web page
  
  #   httpDebug:  Download a web page and show info on what took time
  #   -------------------------------------------------------------------
      httpDebug () { /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n" ; }
  
  # export SBT_HOME="/usr/local/Cellar/sbt/1.3.8"
  export SBT_HOME="/usr/local/Cellar/sbt/1.5.5"
  export PATH=$PATH:$SBT_HOME/bin
  # SBT_OPTS="-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
  SBT_OPTS="-Xms512M -Xmx1536M -Xss1M -XX:MaxPermSize=256M"
  # export SBT_OPTS="$SBT_OPTS -Dhttps.proxyHost=http://proxy-web.micron.com -Dhttps.proxyPort=80"
  export SBT_OPTS="$SBT_OPTS -DsocksProxyHost=http://proxy-web.micron.com -DsocksProxyPort=80 -Djavax.net.ssl.trustStore=/$HOME/.keystore -Djavax.net.ssl.trustStorePassword=masson"
  
  


#/Users/micron/torch/install/bin/torch-activate
