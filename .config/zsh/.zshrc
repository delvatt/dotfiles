## Zsh configurations

# Path to your oh-my-zsh installation.
export ZSH=~/.opt/oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to controls whether the prompt is redrawn when switching to a different input mode.
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
 DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode)

# Complete path of oh-my-zsh script
source $ZSH/oh-my-zsh.sh


# User configuration
# ZSH History file various configs
HISTSIZE=10000000
SAVEHIST=10000000
setopt appendhistory
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.


# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
#export LC_ALL=en_US.UTF-8

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


# FZF addition?
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Kill the lag when switching from normal mode to insert mode in vi-mode
#export KEYTIMEOUT=1

# Remap ESC key to 'jj' for switching from normal mode to insert mode
bindkey -M viins 'jj' vi-cmd-mode

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Alias for loading nvm.
#export NVM_DIR=$HOME/.nvm
#alias loadnvm='[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"'

# Alias for neovim, vimdiff and setting the default editor.
#alias vim="nvim"
#alias vimdiff="nvim -d"
#export EDITOR="nvim"

# Alias for vim
#alias vi="\vim"

# Alias for managing local dotfiles git bare repository.
alias dof='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Start tmux with custom configuration file. 
alias tmux='tmux -f "$XDG_CONFIG_HOME"/tmux/.tmux.conf'

# List with colour and directory first
alias ls='ls --group-directories-first --color=auto'
 
## Refresh font cache
alias font-refresh="fc-cache -fv"
 
## git clone depth 1, who needs to clone full repository if you can clone the top layer only
alias clone="git clone --depth 1"
 
## search packages in the repository
alias search="xbps-query -Rs"

## list required dependency of a package in the repository
alias dependency="xbps-query -Rx"
 
## install packages
alias install="sudo xbps-install"
 
## upgrade packages
alias upgrade="sudo xbps-install -Suv"
 
## remove packages
alias remove="sudo xbps-remove -R"

## autoremove orphaned packages
alias autoremove="sudo xbps-remove -Oo"

## cleanup the package cache
alias clean="sudo rm -rf /var/cache/xbps/*"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# start tmate with a specified config file
alias tmate='tmate -f "${XDG_CONFIG_HOME}/tmate/tmate.conf"'
