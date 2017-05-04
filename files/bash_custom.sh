# Setup git prompt
GIT_PS1_SHOWDIRTYSTATE=''
GIT_PS1_SHOWUPSTREAM=''
GIT_PS1_SHOWCOLORHINTS=true
source ~/.git_prompt
PS1='\e[1;34m\A $(__git_ps1 "(%s)") \w\e[m\n$ '

# Aliases
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'

# Globbing
shopt -s globstar
shopt -s extglob

# Helper functions
find-replace ()
{
  ack "$1" -l | xargs -i@ sed -i "s/$1/$2/g" @
}
