
function braNch() {
 BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
 if [ ! "${BRANCH}" == "" ]
 then
  STAT=`parse_git_dirty`
  echo "[${BRANCH}${STAT}]"
 else
  echo ""
 fi
}

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

export PS1="\[\033[32m\] \u $~ \[\033[33m\]"

eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

export NVM_DIR="$HOME/.nvm"
[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"
[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"

