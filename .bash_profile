PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local:/usr/local/bin
GO_PATH=/usr/local/go/bin
RBENV_PATH=$HOME/.rbenv/shims

# make sure RBENV_PATH comes before system path
# to use the right version of Ruby
export PATH=RBENV_PATH:$PATH:$GO_PATH

# color codes
txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

print_before_the_prompt () {
    printf "\n$txtred%s: $bldgrn%s $txtpur%s\n$txtrst" "$USER" "$PWD" "$(parse_git_branch)"
}

PROMPT_COMMAND=print_before_the_prompt
PS1='-> '
#PS1='☁︎ > '

# cd behavior
alias cd..='cd ..'
alias .1='cd ..'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# DX commands
alias orgs='sfdx force:org:list'
alias create='sfdx force:org:create'
alias delete='sfdx force:org:delete -p'
alias display='sfdx force:org:display'

source '/Users/rohit.mehta/Projects/salesforce-cli-bash-completion/sfdx.bash'
source '/Users/rohit.mehta/Projects/bash-functions/bash-functions.sh'
export GPG_TTY=$(tty)
eval "$(rbenv init -)"
