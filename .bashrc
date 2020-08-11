parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\e[32m\]\u@\h \[\e[31m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

alias gs='git status'
alias ga='git add -p'
alias gl='git log'

