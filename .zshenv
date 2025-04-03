# Paths
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Set History
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=100000                   # Maximum events for internal history
export SAVEHIST=100000                   # Maximum events in history file
export HISTDUP=erase

# Set nvim as default editor
export EDITOR="nvim"
export VISUAL="nvim"

# Virtual envs
export WORKON_HOME=$HOME/.virtualenvs

# local bin
export PATH=$HOME/.local/bin:$PATH

# NDK
export ANDROID_NDK=/usr/lib/android-sdk/ndk-bundle/
export LD_LIBRARY_PATH=/home/mlanger/Documents/Development/AnylineCore/prebuild/linux/x86_64/out/lib/

# fifty one plugins
export FIFTYONE_PLUGINS_DIR=/home/mlanger/Documents/Development/FiftyOne/fiftyone-anyline/src/fiftyone-plugins/fiftyone_plugins/
