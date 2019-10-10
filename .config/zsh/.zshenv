# /etc/zsh/zshenv ou ~/.zshenv
# Fichier de configuration de zsh, lu au lancement de tout shell Zsh
# Formation Debian GNU/Linux par Alexis de Lattre
# http://formation-debian.via.ecp.fr/

# Le PATH = répertoires dans lequels le shell va chercher les commandes
# ATTENTION : le répertoire courant ne fait pas partie du PATH
#export PATH="/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/sbin:/usr/bin/X11:/usr/X11R6/bin:/usr/games:/sbin:$HOME/bin:$HOME/.local/bin"
export PATH=$PATH:/usr/local/bin:/usr/local/sbin


# Default Viewer/Editor/Pager (for Crontab, CVS,...)
export VISUAL=vim
export EDITOR=vim
export PAGER=most


# Default zsh config files directory 
export ZDOTDIR=$HOME/.config/zsh

# Default zsh completion dump file
export ZSH_COMPDUMP="${HOME}/.cache/zsh/zcompdump-${SHORT_HOST}-${ZSH_VERSION}"


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

# De la couleur pour grep
export GREP_OPTIONS='--color=auto'

# Python's pipenv to be created always inside project's root folder.
export PIPENV_VENV_IN_PROJECT=1

##### My custom addins #####
#Default most pager config directory
export MOST_INITFILE=$HOME/.config/most/.mostrc

#Default less pager history file
export LESSHISTFILE=$HOME/.cache/less/lesshst

export JBOSS_HOME=/home/hacker/.opt/bin/jboss-5.1.0.GA
export GRADLE_HOME=/usr/local/gradle/gradle-5.0
export MAVEN_HOME=/usr/local/maven/apache-maven-3.6.0
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:/bin/java::")
#export PATH=$PATH:$GRADLE_HOME/bin:$MAVEN_HOME/bin
#export PATH="$(yarn global bin):$PATH"
