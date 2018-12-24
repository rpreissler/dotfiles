## Terminal colors ##
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

## Alias back directories ##
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

## Alias edit file in Sublime ##
alias edit='sublime'

## Alias directory in Finder ##
alias finder='open -a Finder ./'

## Alias to github directory ##
alias github='cd ~/Documents/github'

## Alias to front end happy hour directory ##
alias fehh='cd ~/Documents/github/front-end-happy-hour'

## Alias to canon5d directory ##
alias canon5d='cd ~/dropbox/canon5d'

## My IP address ##
alias myip='curl ip.appspot.com'
