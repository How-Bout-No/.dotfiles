# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# set PATH so it includes user's private bin(s) if it exists
if [[ -d "$HOME/bin" ]] ; then export PATH="$HOME/bin:$PATH"; fi
if [[ -d "$HOME/.local/bin" ]] ; then export PATH="$HOME/.local/bin:$PATH"; fi
if [[ -d "$HOME/.cargo/bin" ]] ; then export PATH="$HOME/.cargo/bin:$PATH"; fi

export XDG_CONFIG_HOME=$HOME/.config

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$XDG_CONFIG_HOME/oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time
# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
    profiles
    debian
    cp
    copypath
    copyfile
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8
export TZ="America/New_York"

export EDITOR='micro'
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
alias edit="$EDITOR"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

export PF_INFO="ascii title os host kernel uptime pkgs memory shell editor wm de palette"
pfetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
