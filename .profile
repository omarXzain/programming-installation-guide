

# get current status of git repo
function parse_git_dirty {
 status=`git status 2>&1 | tee`
 dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
 untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
 ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
 newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
 renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
 deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
 bits=''
 if [ "${renamed}" == "0" ]; then
  bits=">${bits}"
 fi
 if [ "${ahead}" == "0" ]; then
  bits="*${bits}"
 fi
 if [ "${newfile}" == "0" ]; then
  bits="+${bits}"
 fi
 if [ "${untracked}" == "0" ]; then
  bits="?${bits}"
 fi
 if [ "${deleted}" == "0" ]; then
  bits="x${bits}"
 fi
 if [ "${dirty}" == "0" ]; then
  bits="!${bits}"
 fi
 if [ ! "${bits}" == "" ]; then
  echo " ${bits}"
 else
  echo ""
 fi
}

export PS1="\[\033[35m\] \u: path: \[\033[1;34m\]\[\033[1;34m\]\$(pwd) | \[\033[1;36m\]\$(/bin/ls -1 | /usr/bin/wc -l |
/bin/sed 's: ::g') files | size \[\033[1;33m\]\$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b |\[\033[0m\]\[\033[0m\] \[\033[0;32m\]branch: $(git_branch) |\n\[\033[0;32m\] └─\[\033[0m\033[0;36m\] $~ \[\033[33m\]"



# Homebrew
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"
[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"

# cd /home/omarzain
alias pgstart="pg_ctl -D /home/linuxbrew/.linuxbrew/var/postgres start"
alias pgstop="pg_ctl -D /home/linuxbrew/.linuxbrew/var/postgres stop"

# export PATH="$PATH/Windows"
function asac() 
{ 
  echo
  alias "$*";
  echo alias "$*" >> ~/.profile
  echo
}


name='';
function zain() 
{ 
  export "name=$*" >> ~/.profile
  echo
}


alias testo="set PATH=/mnt/c/Program Files/JetBrains/IntelliJ IDEA Community Edition 2021.1.3/bin"

alias xo='cd "/mnt/c/Program Files/JetBrains/IntelliJ IDEA Community Edition 2021.1.3/bin/"'


function -desktop(){
  echo -e "\033[1;41m Access Denied! \e[0m"
  }

function desktop(){
export ZAIN=`wslvar username`
magic=${ZAIN}
alias desk='cd "/mnt/c/Users/${magic}/Desktop/"'
echo -e "\e[1;42m Access Granted! \e[0m"
echo "Hint: now can easliy type >> desk << to access your desktop"
}
desk='cd "/mnt/c/Users/${magic}/Desktop/"'


