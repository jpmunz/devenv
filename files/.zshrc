# ZSH
unsetopt AUTO_MENU

# Git prompt
GIT_PS1_SHOWDIRTYSTATE=''
GIT_PS1_SHOWUPSTREAM=''
GIT_PS1_SHOWCOLORHINTS=true
source ~/.git_prompt
setopt PROMPT_SUBST
NEWLINE=$'\n'
PROMPT='%B%F{12}%T $(__git_ps1 "(%s)") %~%f%b${NEWLINE}$ '
export GIT_TERMINAL_PROMPT=1

# Git completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.zsh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.zsh
fi

# Homebrew
export HOMEBREW_NO_AUTO_UPDATE=1

# Aliases
alias ll='ls -l'
alias la='ls -a'
alias g='git'
alias chrome-no-cors='open /Applications/Google\ Chrome.app --args --user-data-dir="/var/tmp/chrome-dev-disabled-security" --disable-web-security --disable-site-isolation-trials'
alias rmderived='rm -rf ~/Library/Developer/Xcode/DerivedData'
alias golint='GOMAXPROCS=4 GOMEMLIMIT=3000MiB golangci-lint run'

# Helper functions
find-replace ()
{
  ack "$1" -l | xargs -I@ sed -i "" "s/$1/$2/g" @
}

vim-ack ()
{
  vim $(ack "$1" -l) -c "/$1"
}

decode ()
{
  echo "$1" | base64 -d
}

untar ()
{
  tar -xvzf $1
}

process-on-port ()
{
  lsof -i tcp:"$1"
}

function pod-clean-install() {
  rm Podfile.lock
  pod cache clean --all
  pod repo update --verbose
  pod deintegrate
  pod install --repo-update --verbose
}

function venv-init() {
  eval "$(pyenv init --path)"
  eval "$(pyenv virtualenv-init -)"
}

function nvm-init() {
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
}
