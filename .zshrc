# Path to your oh-my-zsh installation.
export ZSH=/home/zhaoyan/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
 ZSH_THEME="random"

# powerlevel theme
#ZSH_THEME="arialdo-pathinline"
#ZSH_THEME="oppa-lana-style"
#ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="random"

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
plugins=(mvn zsh-autosuggestions ubuntu copydir git autojump tmux history history-substring-search)


# If using Manjaro, must source the file, not plugins
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#source /usr/share/fonts/awesome-terminal-fonts/*.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# zsh-syntax-highlighting setting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# exa setting
alias lla="exa -abghl --git --color=automatic --time-style=long-iso"

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/mnt/d/soft/apache-maven-3.6.3/bin"
export JAVA_HOME="/mnt/d/develop/jdk1.8.0_241"
export JRE_HOME=${JAVA_HOME}/jre  
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib  
export  PATH=${JAVA_HOME}/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
#source ~/.bash_profile

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Command
alias tailf="tail -f "

# JTHS
alias test38="sshpass -p 'jietong' ssh -o ServerAliveInterval=10 root@10.0.1.38"
# My ECS
#alias ecs="ssh -i ~/Documents/Personal/security/carisma.pem carisma@47.104.199.155"
alias ecs="sshpass -p 'synnex2k11' ssh -o ServerAliveInterval=10 carisma@47.104.199.155"

# local
alias bp81="sshpass -p 'lantu@123' ssh -o ServerAliveInterval=10 dell@192.168.1.81"
alias bp80="sshpass -p 'lantu@123' ssh -o ServerAliveInterval=10 dell@192.168.1.80"
# Ali
alias bpali="sshpass -p 'ltyd@+=*123' ssh -o ServerAliveInterval=10 lantu@git.comisys.com -p 55155"
# su: boss@+=*123
alias nbali="sshpass -p 'nextb@+=*123' ssh -o ServerAliveInterval=10 nextbetter@47.92.81.90 -p 16888"
# su: 2Hbrq7Ya2DiPvE4

# maven command
alias mcd="mvn clean deploy -Dmaven.test.skip"
alias mcp="mvn clean package -Dmaven.test.skip"
alias mci="mvn clean install -Dmaven.test.skip"
alias mcpu="mvn clean package -Dmaven.test.skip -U"

# docker command
alias dpbp="docker push www.nextbetter.cn/docker-local/blueprint-starter:latest"

# yay
alias yayu="yay -Syyu"
alias yays="yay -Ss"
alias yayi="yay -Si"

# Other
alias vnginx="vim /usr/local/etc/nginx/nginx.conf"
alias rnginx="sudo nginx -s reload"
# alias ps7="ps -ef | grep tomcat-7"
alias c="clear"
# alias ktom7="ps -ef|grep tomcat-7|grep -v grep|xargs kill -9"
alias vzsh="vim ~/.zshrc"
alias szsh="source ~/.zshrc"
alias ashow="alias | grep"
alias ll="ls -al"


alias git-use-proxy="git config --global http.proxy 127.0.0.1:58591"
alias git-unuse-proxy="git config --global --unset http.proxy"

#source ~/.xsh

POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir_writable dir rbenv vcs os_icon)
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'



# oh-my-git
#source "$HOME/.antigen/antigen.zsh"
#antigen use oh-my-zsh
#antigen bundle arialdomartini/oh-my-git
#antigen theme arialdomartini/oh-my-git-themes oppa-lana-style
#antigen apply

# add this configuration to ~/.zshrc
export HISTFILE=~/.zsh_history  # ensure history file visibility
export HH_CONFIG=hicolor        # get more colors
bindkey -s "\C-r" "\eqhh\n"     # bind hh to Ctrl-r (for Vi mode check doc)

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx


# xfce setting
alias open=thunar


echo
echo "=============== Quote Of The Day ==============="
echo
fortune
echo
echo "================================================"
echo

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/zhaoyan/.sdkman"
[[ -s "/home/zhaoyan/.sdkman/bin/sdkman-init.sh" ]] && source "/home/zhaoyan/.sdkman/bin/sdkman-init.sh"
