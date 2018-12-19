####### Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

####### Bash to Zsh

# from bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
#############PATHS

# Install Ruby Gems to ~/gems
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH

## Disabled.. JAVA_HOME
#export JAVA_HOME="/usr/lib/jvm/java-9-openjdk-amd64"
#export PATH=$PATH:$JAVA_HOME/bin

#############BIN


###############JAVA HOME


JAVA_HOME=$(dirname $( readlink -f $(which java) ))
JAVA_HOME=$(realpath "$JAVA_HOME"/../)
export JAVA_HOME

###############NODE JS

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 
 # This loads nvm bash_completion


##########PACKAGES#######################################

# fck command for autocorrection
eval $(thefuck --alias)


##########Snap profile 
emulate sh -c 'source /etc/profile.d/apps-bin-path.sh'


###################FUNCTIONS################################


############SDKMAN##########################################
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"
