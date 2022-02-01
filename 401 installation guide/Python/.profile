#Linuxbrew (if needed)
if [ -d /home/linuxbrew ]; then
  eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
fi

#NVM
if [ -f $(brew --prefix nvm)/nvm.sh ]; then
  source $(brew --prefix nvm)/nvm.sh
fi

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# poetry
export PATH="$HOME/.poetry/bin:$PATH"
