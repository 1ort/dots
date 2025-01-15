if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"

autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

ZSH_THEME="powerlevel10k/powerlevel10k"

#use case-sensitive completion.
CASE_SENSITIVE="false"

#HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

plugins=(
    git
    pip
    kubectl
    docker
    pyenv
    poetry
    command-not-found
    dotenv  # .env autosourcing
    autoswitch_virtualenv   # for python virtualenvs
    zsh-syntax-highlighting     # https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv
    zsh-autosuggestions         # https://github.com/zsh-users/zsh-autosuggestions
    tmux
    rust
    safe-paste
    fzf
)

ZSH_AUTOSUGGEST_STRATEGY=(completion match_prev_cmd)

#source all autocompletion files
if [[ -d $HOME/.zsh_autocomplete ]]; then
  source "$file"
    for file in $HOME/.zsh_autocomplete/*.zsh; do
  done
fi

source $ZSH/oh-my-zsh.sh
source ~/.p10k.zsh

# bun completions
[ -s "$HOME/.local/share/reflex/bun/_bun" ] && source "$HOME/.local/share/reflex/bun/_bun"
# bun
export BUN_INSTALL="$HOME/.local/share/reflex/bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/snap/bin"
