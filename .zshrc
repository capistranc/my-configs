# NVM CLI
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Sublime Alias
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'

# Show Git Branch in prompt
## Load version control information
autoload -Uz vcs_info
precmd() { 
  echo -ne "\033]0;${PWD##*/}\007"
  vcs_info 
}


## Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'
# zstyle ':vcs_info:git:*' formats '%c commits (%u unsaved)'
 
## Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='${PWD/#$HOME/~} ${vcs_info_msg_0_} > '
RPROMPT='${vcs_info_msg_1_} > '

alias kube='kubectl'
alias ga="git commit --amend -m"
alias tf='terraform'

