# Setup git prompt
GIT_PS1_SHOWDIRTYSTATE=''
GIT_PS1_SHOWUPSTREAM=''
GIT_PS1_SHOWCOLORHINTS=true
source ~/.git_prompt
PS1='\e[1;34m\A $(__git_ps1 "(%s)") \w\e[m\n$ '

# Other bash config
source ~/.bash_custom_aliases
source ~/.bash_custom_functions
