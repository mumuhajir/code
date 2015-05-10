function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

PROMPT='%n@%m:%~$(git_prompt_info)%_$(prompt_char)%{$reset_color%} '


ZSH_THEME_GIT_PROMPT_PREFIX=" git:%{$fg[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[blue]%)%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✖"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"✔   


