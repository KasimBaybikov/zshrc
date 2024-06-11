#!/bin/zsh

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
new_line=$'\n'
reset_color=%{$'\e[0m'%}

cyan=%F{#8BE9FD}
blue=%F{#5F5FFF}
green=%F{#8EF593}
purple=%F{#F88ED9}
grey=%F{#767676}
setopt PROMPT_SUBST

function zvm_after_select_vi_mode() {
	case $ZVM_MODE in
		$ZVM_MODE_INSERT)
		export PROMPT='$cyan┌─$blue(%n)$green [%~]$purple$(parse_git_branch)$new_line$cyan└─> $reset_color'
			;;
		$ZVM_MODE_NORMAL)
		export PROMPT='$grey┌─$blue(%n)$green [%~]$purple$(parse_git_branch)$new_line$grey└─> $reset_color'
			;;
		$ZVM_MODE_VISUAL)
		export PROMPT='$grey┌─$blue(%n)$green [%~]$purple$(parse_git_branch)$new_line$grey└─> $reset_color'
			;;
		$ZVM_MODE_VISUAL_LINE)
		export PROMPT='$grey┌─$blue(%n)$green [%~]$purple$(parse_git_branch)$new_line$grey└─> $reset_color'
			;;
		*) 
		export PROMPT='$cyan┌─$blue(%n)$green [%~]$purple$(parse_git_branch)$new_line$cyan└─> $reset_color'
			;;
	esac
}


precmd() {
  zvm_after_select_vi_mode
}

# color text on visual mode
export ZVM_VI_HIGHLIGHT_FOREGROUND=#FFFFFF
export ZVM_VI_HIGHLIGHT_BACKGROUND=#3A3A3A

#└─┘
#─ ━ │ ┃ ┄ ┅ ┆ ┇ ┈ ┉ ┊ ┋ ┌ ┍ ┎ ┏ ┐ ┑ ┒ ┓ └ ┕ ┖ ┗ ┘ ┙ ┚ ┛ ├ ┝ ┞ ┟ ┠ ┡ ┢ ┣ ┤ ┥ ┦ ┧ ┨ ┩ ┪ ┫ ┬ ┭ ┮ ┯ ┰ ┱ ┲ ┳ ┴ ┵ ┶ ┷ ┸ ┹ ┺ ┻ ┼ ┽ ┾ ┿ ╀ ╁ ╂ ╃ ╄ ╅ ╆ ╇ ╈ ╉ ╊ ╋ ╌ ╍ ╎ ╏ ═ ║ ╒ ╓ ╔ ╕ ╖ ╗ ╘ ╙ ╚ ╛ ╜ ╝ ╞ ╟ ╠ ╡ ╢ ╣ ╤ ╥ ╦ ╧ ╨ ╩ ╪ ╫ ╬ ╭ ╮ ╯ ╰ ╱ ╲ ╳ ╴ ╵ ╶ ╷ ╸ ╹ ╺ ╻ ╼ ╽ ╾ ╿ ▀ ▁ ▂ ▃ ▄ ▅ ▆ ▇ █ ▉ ▊ ▋ ▌ ▍ ▎ ▏ ▐ ░ ▒ ▓ ▔ ▕ 𝌴
