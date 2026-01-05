# === Custom my config zshrc ===
# === Select what you want ===


# Funtion easy open nvim
svim() {
    sudo -E nvim "$@"
}

# Functio easy for productive build mobile
modemobile(){
	sudo systemctl stop mariadb
	code --profile profile-flutter
	waydroid session start
}


autoload -U compinit
compinit


setopt COMPLETE_IN_WORD
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
#
# Recommend using waydroid A13 and flutter version 3.38.5+ (or latest), if you using this so you need install only this
# - ndk;28.2.13676358
# - build-tools;34.0.0
# - build-tools;35.0.0
# - platforms;android-34
# - platforms;android-35
# - platforms;android-36
# - 
#
#

