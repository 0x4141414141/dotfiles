
# -----------------------------------------------------------------------------
#                 FILE: smyck.zsh-theme
#          DESCRIPTION: oh-my-zsh theme file based on the senzshell.zsh-theme
#                       by Eranga Bandara (https://github.com/erangaeb)
#                SHELL: ZSH
#          COLORSCHEME: smyck (http://color.smyck.org/)
#               AUTHOR: Richard Radermacher (richard.radermacher@gmail.com)
#              VERSION: 0.1
# -----------------------------------------------------------------------------

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function get_pwd() {
  print -D $PWD
}

function put_spacing() {
  local git=$(git_prompt_info)
  if [ ${#git} != 0 ]; then
    ((git=${#git} - 10))
  else
    git=0
  fi

  local termwidth
  (( termwidth = ${COLUMNS} - 3 - ${#HOST} - ${#$(get_pwd)} - ${git} ))

  local spacing=""
  for i in {1..$termwidth}; do
    spacing="${spacing} "
  done
  echo $spacing
}

function precmd() {
print -rP '
$fg[cyan]%m: $fg[yellow]$(get_pwd)$(put_spacing)$(git_prompt_info)'
}

PROMPT='%{$reset_color%}→ '

ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"
