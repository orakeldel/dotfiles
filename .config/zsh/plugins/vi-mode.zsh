# vim mode
# The plugin will auto execute this zvm_after_init function
function zvm_after_init() {
  [ -f $ZDOTDIR/plugins/fzf.zsh ] && source $ZDOTDIR/plugins/fzf.zsh
}
source $ZDOTDIR/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
