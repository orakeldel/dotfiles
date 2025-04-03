# Setup fzf
# ---------
if [[ ! "$PATH" == */home/mlanger/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/mlanger/.fzf/bin"
fi

source <(fzf --zsh)
