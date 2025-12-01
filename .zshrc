# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="/home/aaron/.local/bin:/home/aaron/.foundry/bin:/home/aaron/.avm/bin:$PATH:/home/aaron/bin/sui/:/home/aaron/.npm-global/bin/"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="kolo"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
    z
    fzf
    jump
    extract
    systemd
    colored-man-pages
    cp
    encode64
    #zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source $HOME/.profile
export EDITOR="$(which nvim)"

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

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"








alias kilall='killall'
alias kilalll='killall'
alias sudo='sudo '
alias ports="cat /etc/services"
alias guit="git"
alias gt="git"
alias giut="git"
alias it="git"
alias ga.="git add ."
alias gitpull="git pull"
alias gitpush="git push"
alias netstat="ss"
#alias pacman="sudo pacman"
alias fgrep="grep -ri"
alias mkdirs="mkdir -p"
alias tail="tail"
alias head="head"
alias grep="grep --color=always"
alias ls="ls -v --color=auto" # sort by version
alias ll=ls
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
alias q:=exit
alias btw=screenfetch
alias srm=shred
alias dmesg="dmesg -Tku"
alias calc.exe="kcalc"
alias grpe="grep"
alias gerp="grep"
alias rgep="grep"
alias ython="python"
alias seds="sed 's/\.\///g'"

alias pacan=pacman
alias pamac=pacman
alias pamcan=pamcan
alias pcaman=pacman
alias pacmna=pacman
alias pacman="sudo pacman"
alias set-brightness="sudo set-brightness"

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

alias chormium=chromium

# pacman() {
#    sudo pacman "$@" | lolcat
#}

# auto completion init
autoload -Uz compinit
compinit

mkcd() {mkdir -p "$1" && cd "$1"}
transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }

usb() {
    sudo cryptsetup luksOpen /dev/sda1 crypted;
    sudo mount /dev/mapper/crypted /mnt
}


clear


if [ -f /tmp/neofetch ]; then
    cat /tmp/neofetch
else
    (neofetch | tee /tmp/neofetch) 2>/dev/null
fi


#neofetch
search() {cd /home/aaron/github/dirsearch/ ; python dirsearch.py -u "$1" -e .}

alias svim=nvim
alias vim=nvim
alias vin=nvim
alias v=nvim
alias im=nvim
alias neovim=nvim
alias vm=nvim

# because I often run `vim v $file` by accident
nvim() {
    #if [ "$1" = "v" || "$1" = "vim" || "$1" = "vi" || "$1" = "vm" || "$1" = "im" ]; then
    if [ "$1" = "v" ]; then
        shift
    fi
    /usr/bin/nvim "$@"
}

declare -A language_map
language_map=(
    ["solidity"]="sol"
    ["sol"]="sol"
    ["golang"]="go"
    ["go"]="go"
    ["rust"]="rs"
    ["rs"]="rs"
    ["python"]="py"
    ["py"]="py"
    ["javascript"]="js"
    ["js"]="js"
    ["typescript"]="ts"
    ["ts"]="ts"
    ["tsx"]="tsx"
    ["yaml"]="yml"
    ["yml"]="yml"
    ["json"]="json"
    ["c"]="c"
    ["cpp"]="cpp"
    ["java"]="java"
    ["html"]="html"
    ["css"]="css"
    ["scss"]="scss"
    ["sass"]="sass"
    ["move"]="move"
    ["mv"]="move"
    ["md"]="md"
    ["markdown"]="md"
    ["kotlin"]="kt"
    ["kt"]="kt"
    ["text"]="txt"
    ["txt"]="txt"
    ["tex"]="tex"
    ["latex"]="tex"
    ["fc"]="fc"
    ["func"]="fc"
    ["circom"]="circom"
    ["dec"]="dec"
)

# make nice grep macros like /md that search only in markdown.
# // is regex match, / is literal match
for key val in ${(kv)language_map}; do
    alias /$key="grep -rF --include=\"*.$val\" --exclude-dir=\".git\" --"
    alias //$key="grep -ri --include=\"*.$val\" --exclude-dir=\".git\" --"
done

# make cd go to parent dir if we select a file
cd() {
    if [ "x$1" = "x" ]; then
        builtin cd "$HOME"
    else
        if [ -f "$1" ]; then
            builtin cd "$(dirname "$1")"
        else
            builtin cd "$1"
        fi
    fi
}

# "gitp ush" => "git push"
# "gitp ull" => "git pull"
gitp() {
    # if empty, assume pull
    arg1="p$1"
    if [ "$1" = "p" ]; then
        git pull
        return
    fi
    shift
    git "$arg1" "$@"
}

alias /="grep -rF --exclude-dir=\".git\" --"
alias //="grep -ri --exclude-dir=\".git\" --"

alias q="exit"
alias wq="exit"
alias :q="exit"
alias :wq="exit"

alias ccd=cd
alias cdcd=cd
alias cdd=cd
alias ccdd=cd
alias scd=cd
alias c=cd
alias cd..="cd .."

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


alias get_idf='. $HOME/github/esp-idf/export.sh'


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/aaron/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/aaron/Downloads/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/home/aaron/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/aaron/Downloads/google-cloud-sdk/completion.zsh.inc'; fi


export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC
