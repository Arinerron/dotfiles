export GOPATH="/home/aaron/go"

export OPENCV_LOG_LEVEL=ERROR

check() {
    file "$1"
    echo
    pwn checksec "$1"
}

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH:/home/aaron/go/bin:./.gem/ruby/2.7.0/bin/

source /home/aaron/.profile

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# 20esaua github acct

# default text editor
export EDITOR="/usr/bin/vim"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="kolo" #"af-magic"
#ZSH_THEME="af-magic"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(
  git z
)

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias u16="sudo docker run -it --cap-add sys_ptrace -v /home/$USER:/pwn pwn:16.04"
alias u16c="sudo docker ps && sudo docker attach ea382c1f0009"

alias kilall='killall'
alias kilalll='killall'
alias sudo='sudo '
alias ports="cat /etc/services"
alias guit="git"
alias giut="git"
alias netstat="ss"
#alias pacman="sudo pacman"
alias fgrep="grep -ri"
alias mkdirs="mkdir -p"
alias tail="tail"
alias head="head"
alias grep="grep --color=always"
alias x="exit"
alias ks="ls"
alias lks="ls"
alias kls="ls"
alias las="ls"
alias lsa="ls"
alias run="sh run.sh"
alias hexdump="hexdump -C"
alias s="ls"
alias ,,=..
alias :q=exit
alias btw=screenfetch
alias srm=shred
alias dmesg="dmesg -Tku"
alias calc.exe="kcalc"
alias grpe="grep"
alias gerp="grep"
alias rgep="grep"
alias ython="python"

alias pacan=pacman
alias pamac=pacman
alias pamcan=pamcan
alias pcaman=pacman
alias pacmna=pacman

alias java10="/usr/lib/jvm/java-10-openjdk/bin/java"
alias javac10="/usr/lib/jvm/java-10-openjdk/bin/javac"
alias javadoc10="/usr/lib/jvm/java-10-openjdk/bin/javadoc10"
alias l=ls
alias sl=ls

alias descent="d2x-rebirth"
alias irc="irssi"

alias df="df -h"
alias dd="dd status=progress"

# diff for kitty
alias d="kitty +kitten diff"

# pacman() {
#    sudo pacman "$@" | lolcat
#}

# auto completion init
autoload -Uz compinit
compinit

c() {git add .; git commit;}
mkcd() {mkdir -p "$1" && cd "$1"}
transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; } 

usb() {
    sudo cryptsetup luksOpen /dev/sda1 crypted;
    sudo mount /dev/mapper/crypted /mnt
}

clear
(cat /tmp/neofetch || neofetch) 2>/dev/null
#neofetch
alias e="sudo dhcpcd; exit"
search() {cd /home/aaron/github/dirsearch/ ; python dirsearch.py -u "$1" -e .}
