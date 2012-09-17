export FAB_USER=nate.good
export PS1='# '
export EDITOR='vim'
export PATH=$PATH:~/pear/bin
export TERM='xterm-256color'

# Aliases
alias ls='ls -F -G'
alias ll='ls -tlhF -G'
alias grep='grep --color=auto'
alias du='du -kh'
alias df='df -kTh'

function _update_ps1()
{
    branch_name="$(git symbolic-ref HEAD 2>/dev/null)"
    branch_name=${branch_name##refs/heads/}
    dir_name=${PWD##*/}
    export PS1="$dir_name $branch_name# "
}

export PROMPT_COMMAND="_update_ps1"

