#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
#setopt APPEND_HISTORY
## for sharing history between zsh processes
#setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

# autoload -U colors
#colors

# Ultramarine ZSH config
# initialize starship
eval "$(starship init zsh)"

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Ctrl + Arrow keybindings
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt SHARE_HISTORY

export ANDROID=$HOME/Android
export PATH=$ANDROID/cmdline-tools/tools/$PATH
export PATH=$ANDROID/cmdline-tools/tools/bin:$PATH
export PATH=$ANDROID/platform-tools:$PATH

export ANDROID_SDK=$HOME/ANDROID
export PATH=$ANDROID_SDK:$PATH

export FLUTTER=$ANDROID/flutter
export PATH=$FLUTTER/bin:$PATH

export CHROME_EXECUTABLE=/usr/bin/thorium-browser

# install flutter without android, need 2 two file
# flutter zip
# cmdline-tools
#
# And structure folder on home
# - cmdline-tools
# - flutter

# cd Android/cmdline-tools/tools
# install additional  here, but personalize with your api device version
# sdkmanager "platform-tools" "platforms;android-32" "build-tools;32.0.0"
