alias gits="git status"
alias gitlo="git log --oneline"
alias gpom="git push origin master"
alias gpomt="git push origin master --tags"

alias gcmgpom="git checkout master && git pull origin master"
alias gcdgpod="git checkout dev && git pull origin dev"
alias gsgsc="git stash && git stash clear"
function gfc() { git fetch origin $1:$1 && git checkout $1; }
alias gfc="gfc"

alias dockerinfo="docker images && echo \"\" && docker ps -a"
function dockersh() { docker exec -it $1 bash; }
alias dockersh="dockersh"

alias bb="acpi -t && cat /proc/acpi/bbswitch"
