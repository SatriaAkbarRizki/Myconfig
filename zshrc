export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="robbyrussell"
ZSH_THEME="solus"

# My Plugin
plugins=(
  zsh-autosuggestions
)

# Function
svim() {
    sudo -E nvim "$@"
}

systatus(){
  sudo systemctl status "$@"
}

syenable(){
  sudo systemctl enable "$@"
}

sydisable(){
  sudo systemctl disable "$@"
}

systop(){
  sudo systemctl stop "$@"
}

systart(){
  sudo systemctl start "$@"
}

checkDisk(){
  if [ $# -lt 1 ]
  then
    echo "Usage: $funcstack[1] <first-argument>"
    return
  fi

  echo "CHecking usage disk: $1"
  sudo du -h $1 | sort -hr | head -20

}

modeMobile(){
   code --profile profile-flutter
   waydroid session start
}



# Setup env for pyenv(can multi version python)
#echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
#echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
#echo 'eval "$(pyenv init - zsh)"' >> ~/.zshrc


# pyenv (load once)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"



# Config My ZSH
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

source $ZSH/oh-my-zsh.sh

export ANDROID=$HOME/Android
export PATH=$ANDROID/cmdline-tools/tools/$PATH
export PATH=$ANDROID/cmdline-tools/tools/bin:$PATH
export PATH=$ANDROID/platform-tools:$PATH

export ANDROID_SDK=$HOME/ANDROID
export PATH=$ANDROID_SDK:$PATH

export FLUTTER=$ANDROID/flutter
export PATH=$FLUTTER/bin:$PATH

export CHROME_EXECUTABLE=/usr/bin/zen-browser
export PATH=$HOME/.config/composer/vendor/bin:$PATH

export TERM=xterm-256color


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
