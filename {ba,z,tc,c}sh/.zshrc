# oh-my-zsh Configuration

load_file() {
    if [ -f "$1" ] ; then
        . "$1"
    fi
}

# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/

# Use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(gitfast python stack)

# Load aliases
load_file $HOME/.mk_alias
load_file $HOME/.aliases

# Load oh-my-zsh
load_file $ZSH/oh-my-zsh.sh

# ZSH_THEME="geoffgarside"
PROMPT='%{$bg[white]$fg[black]%}%n @ %m%{$reset_color%} %{$bg[blue]$fg[black]%}%*%{$reset_color%} $(echo "%~" | trimdir.py)%{$fg_bold[white]%}$(git_prompt_info) %(!.#.$)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"

load_file $HOME/.zshrc_extra
