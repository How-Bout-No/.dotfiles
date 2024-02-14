# Settings
SEGSEP='' # \ue0b0 right arrow
INDICATOR='λ'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

COLOR_ONE='24'
COLOR_TWO='75'
#

local user_host="%B%(!.%F{red}.%F{white})%n@%m%f"

# Customized git status, oh-my-zsh currently does not allow render dirty status before branch
git_custom_status() {
  local cb=$(git_current_branch)
  if [ -n "$cb" ]; then
    echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(git_current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

PROMPT="""
%K{${COLOR_ONE}}${user_host} %k%F{${COLOR_ONE}}%K{${COLOR_TWO}}${SEGSEP} %f%F{white}[%~% ] %f%k%F{${COLOR_TWO}}${SEGSEP}%f%{$reset_color%}
%B${INDICATOR}%b """

#RPROMPT='$(git_custom_status)%{$fg[cyan]%}[%~% ]%{$reset_color%}'
