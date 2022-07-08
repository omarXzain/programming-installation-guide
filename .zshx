# Special zsh setup by Omar Zain
autoload -Uz vcs_info
autoload -U colors && colors
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b' \n
setopt prompt_subst
PROMPT='%F{green}╭─%F{magenta}%n %F{yellow}| %F{blue}path: $(pwd) %F{yellow}| %F{green}branch%F{cyan} >>%F{red}${vcs_info_msg_0_}%F{cyan}<< %F{yellow}|
%F{green}╰─%F{yellow}$ '
