# Lambda V ZHS theme.

function git_prompt_info() {
  local ref
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

PROMPT='%F{247}[%D{%H:%M:%S}%b]%f (%n%) %{$fg[green]%}%~ $(git_prompt_info)$(git_prompt_status)%{$reset_color%}
λ > '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[red]%}±%{$reset_color%}"
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[red]%}↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[cyan]%}↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}±%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%}+%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg[cyan]%}↶%{$reset_color%}"

ZSH_THEME_GIT_COMMITS_AHEAD_PREFIX="%{$fg[cyan]%}COMMITS_AHEAD_PREFIX%{$reset_color%}"
ZSH_THEME_GIT_COMMITS_AHEAD_SUFFIX="%{$fg[cyan]%}COMMITS_AHEAD_SUFFIX%{$reset_color%}"
ZSH_THEME_GIT_COMMITS_BEHIND_PREFIX="%{$fg[cyan]%}COMMITS_BEHIND_PREFIX%{$reset_color%}"
ZSH_THEME_GIT_COMMITS_BEHIND_SUFFIX="%{$fg[cyan]%}COMMITS_BEHIND_SUFFIX%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%}_CLEAN%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[cyan]%}_DELETED%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg[cyan]%}_DIVERGED%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg[cyan]%}_DIVERGED_REMOTE%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE="%{$fg[cyan]%}_EQUAL_REMOTE%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_REMOTE_EXISTS="%{$fg[cyan]%}_REMOTE_EXISTS%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_REMOTE_MISSING="%{$fg[cyan]%}_REMOTE_MISSING%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED="%{$fg[cyan]%}_REMOTE_STATUS_DETAILED%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$fg[cyan]%}_REMOTE_STATUS_PREFIX%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$fg[cyan]%}_REMOTE_STATUS_SUFFIX%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[cyan]%}_RENAMED%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$fg[cyan]%}_SHA_AFTER%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$fg[cyan]%}_SHA_BEFORE%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[cyan]%}_UNMERGED%{$reset_color%}"
