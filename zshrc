# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd.mm.yyyy"
HIST_EXPIRE_DUPS_FIRST=true
HIST_VERIFY=true

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#alias sshhosts="sed -n 's/Host\s\(.*\)/\1/p' .ssh/config"

alias workwork="cd /mnt/e/rt/scheduler"
alias python="python3.10"

alias checkhb="systemctl --host sqa@heartbeat status ts19hb ts19remote mongod"
alias checkftp="systemctl --host sqa@ftpserver status apache2 jenkinsScanner webapi slacbkus"
alias checkrm="systemctl --host sqa@rm status mutex_mongo rmbroadcaster rmresourcelogging rmwebapp"
alias check6d="systemctl --host sqa@6d status commitsummarizer listenerResources listenerSummarizer 6dapp slackbus"

alias ssh-hosts='awk '"'"'/^Host/ { print $1 " " $2 } /^  Hostname/ { print $1 " " $2 "\n" }'"'"' ~/.ssh/config'
