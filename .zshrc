# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="terminalparty"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(debian dirpersist gnu-utils gpg-agent)

LANG="es_AR.UTF-8"
TZ="America/Argentina/Cordoba"

source $ZSH/oh-my-zsh.sh

stty start undef
stty stop undef
umask 077
ulimit -c 0

calc () 
{ echo "$*" | bc -l; }

function locategrep
{
  if [ "${#}" != 2 ] ; then
    echo "Usage: locategrep [string to locate] [string to grep]";
    return 1;
  else
    echo "locate -i '${1}' | grep -i '${2}'";
    command locate -i '${1}' | grep -i '${2}';
  fi;
}

# Customize to your needs...
export PATH=/home/charlie/bin:/usr/local/bin:/usr/local/sbin/:/bin:/sbin:/usr/bin:/usr/sbin:/usr/games
