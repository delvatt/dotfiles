# /etc/zsh/zshenv or ~/.zshenv.
# Actually, this file here ~/.zshenv is symlinked to $XDG_CONFIG_HOME/zsh/.zshenv,
# to comply to the XDG specification.

# rw-r--r-- permissions for any new created file
# and rwxr-xr-x for any new created folder.
umask 022

# Default Viewer/Editor/Pager (for Crontab, CVS,...)
export VISUAL=vim
export EDITOR=vim
export PAGER=most

# Load ssh-agent environment variables.
 . ~/.ssh/ssh-agent-env &> /dev/null

# Default zsh config files directory 
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# Default zsh history file
export HISTFILE=$XDG_CACHE_HOME/zsh/zsh_history

# Default zsh completion dump file
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh/zcompdump-${SHORT_HOST}-${ZSH_VERSION}"

# Default most pager config file
export MOST_INITFILE=$XDG_CONFIG_HOME/most/.mostrc

# Default gtk2  config file
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

# Default wget config file
export WGETRC=$XDG_CONFIG_HOME/wget/.wgetrc

# Default most pager config file
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker

# Default weechat config directory
export WEECHAT_HOME=$XDG_CONFIG_HOME/weechat

# Default btpd data home directory
export BTPD_HOME=$XDG_DATA_HOME/btpd

# Default less pager history file
export LESSHISTFILE=$XDG_CACHE_HOME/less/lesshst

# Default tmux runtime directory
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"

# Default python interpreter history file
export PYTHONHISTORY=$XDG_CACHE_HOME/python/python_history

# Default Ruby's Gem directores
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem

# Default vagrant home directory
export VAGRANT_HOME=/mnt/home/hacker/.vagrant.d

# Misc $PATH updates
export JBOSS_HOME=/home/hacker/.opt/bin/jboss-5.1.0.GA
export TEXLIVE_HOME=/opt/texlive/2020/bin/x86_64-linux
export GRADLE_HOME=/usr/local/gradle/gradle-5.0
export MAVEN_HOME=/usr/local/maven/apache-maven-3.6.0
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")
export PATH=$PATH:$TEXLIVE_HOME
#export PATH=$PATH:$GRADLE_HOME/bin:$MAVEN_HOME/bin
