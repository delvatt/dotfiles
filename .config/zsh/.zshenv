# /etc/zsh/zshenv ou ~/.zshenv
# Fichier de configuration de zsh, lu au lancement de tout shell Zsh
# Formation Debian GNU/Linux par Alexis de Lattre
# http://formation-debian.via.ecp.fr/

# Le PATH = répertoires dans lequels le shell va chercher les commandes
# ATTENTION : le répertoire courant ne fait pas partie du PATH
#export PATH="/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/X11R6/bin:/usr/games:/sbin:$HOME/bin:$HOME/.local/bin"


# Default Viewer/Editor/Pager (for Crontab, CVS,...)
export VISUAL=vim
export EDITOR=vim
export PAGER=most


# Default zsh config files directory 
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# Default zsh history file
export HISTFILE=$XDG_CACHE_HOME/zsh/zsh_history

# Default zsh completion dump file
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh/zcompdump-${SHORT_HOST}-${ZSH_VERSION}"


# Permissions rw-r--r-- pour les fichiers crées
# et rwxr-xr-x pour les répertoires crées
umask 022

# Proxy HTTP / FTP sans mot de passe
#export http_proxy="http://proxy.exemple.org:8080"
#export ftp_proxy="ftp://proxy.exemple.org:8080"

# Proxy HTTP / FTP avec mot de passe
#export http_proxy="http://login:password@proxy.exemple.org:8080"
#export ftp_proxy="ftp://login:password@proxy.exemple.org:8080"

# Ne pas passer par le proxy pour les domaines locaux
#export no_proxy="exemple.org"

#DEPRECATED! De la couleur pour grep
#export GREP_OPTIONS='--color=auto'

# Python's pipenv to be created always inside project's root folder.
export PIPENV_VENV_IN_PROJECT=1

##### My custom addins #####
# Default most pager config file
export MOST_INITFILE=$XDG_CONFIG_HOME/most/.mostrc

# Default gtk2  config file
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

# Default wget config file
export WGETRC=$XDG_CONFIG_HOME/wget/.wgetrc

# Default weechat config directory
export WEECHAT_HOME=$XDG_CONFIG_HOME/weechat

# Default btpd data home directory
export BTPD_HOME=$XDG_DATA_HOME/btpd

# Default less pager history file
export LESSHISTFILE=$XDG_CACHE_HOME/less/lesshst

# Default tmux runtime directory
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"

#Default python interpreter history file
export PYTHONHISTORY=$XDG_CACHE_HOME/python/python_history

export JBOSS_HOME=/home/hacker/.opt/bin/jboss-5.1.0.GA
export GRADLE_HOME=/usr/local/gradle/gradle-5.0
export MAVEN_HOME=/usr/local/maven/apache-maven-3.6.0
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")
#export PATH=$PATH:$GRADLE_HOME/bin:$MAVEN_HOME/bin
#export PATH="$(yarn global bin):$PATH"
