# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $ZDOTDIR/aliases.zsh

# History options
setopt appendhistory
#setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Virtualenv
source /home/mlanger/.local/bin/virtualenvwrapper.sh

# Completion
source $ZDOTDIR/completion.zsh

# Theme powerlevel10k
source $ZDOTDIR/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# Cursor mode vim
source $ZDOTDIR/plugins/cursor_mode.zsh

# bd, switch to parent folder
source $ZDOTDIR/plugins/bd.zsh

# fzf search
source $ZDOTDIR/plugins/fzf.zsh

# auto-suggestions
# source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source $ZDOTDIR/plugins/vi-mode.zsh

# Syntax highlighting Note: this must be at the end of zshrc
source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Theme oh-my-posh
# eval "$(oh-my-posh init zsh --config /home/mlanger/.config/zsh/themes/ohmyposh/my_theme.json)"

