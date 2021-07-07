# start tmux automatically
[ $TMUX ] || tmux

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep extendedglob nomatch notify
unsetopt autocd
setopt prompt_subst
bindkey -v
setopt prompt_sp
unsetopt prompt_cr
setopt interactivecomments
#export PROMPT_EOL_MARK=""
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/sudo0272/.zshrc'

autoload -U colors && colors
autoload -Uz compinit
compinit
# End of lines added by compinstall
autoload -Uz manydots-magic
manydots-magic

back() {
  $@ > /dev/null 2&>1 &
}

export EDITOR=$(which nvim)
export VISUAL="$EDITOR"
# export PS1="%{$fg[green]%}%/ "$'\n''%{$fg[red]%}$(print -P -f "%03d" "%?")'" %{$fg[white]%}%#%{$reset_color%} "

alias ls='ls -AF --color=always'
alias p='. p'
alias activate='source ./venv/bin/activate'
alias monitor-setter='. monitor-setter'
alias touchpad-setter='. touchpad-setter'
alias v='nvim $(fzf)'
alias vi='nvim'
alias vim='nvim'
alias ascii='nohup display /home/sudo0272/Images/ascii.png > /dev/null 2&>1 &; sleep 0.1; xdotool search --name "ImageMagick: ascii.png" set_window --name "ascii"'

#source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# android sdk settings
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# platformio settings
export PATH=$PATH:~/.platformio/penv/bin


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/sudo0272/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
    # eval "$__conda_setup"
# else
    # if [ -f "/home/sudo0272/anaconda3/etc/profile.d/conda.sh" ]; then
        # . "/home/sudo0272/anaconda3/etc/profile.d/conda.sh"
    # else
        # export PATH="/home/sudo0272/anaconda3/bin:$PATH"
    # fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<


### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

# Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light supercrabtree/k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Plugin settings
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

ZSH_HIGHLIGHT_STYLES[default]=fg=white
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=white
ZSH_HIGHLIGHT_STYLES[alias]=fg=white
ZSH_HIGHLIGHT_STYLES[builtin]=fg=white
ZSH_HIGHLIGHT_STYLES[function]=fg=white
ZSH_HIGHLIGHT_STYLES[command]=fg=white
ZSH_HIGHLIGHT_STYLES[precommand]=fg=white
ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=white
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=white
ZSH_HIGHLIGHT_STYLES[path]=fg=white
ZSH_HIGHLIGHT_STYLES[globbing]=fg=white
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=#7aa6da
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=white
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=white
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=fg=white
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=#b9ca4a
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=#b9ca4a
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=#b9ca4a
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=#b9ca4a
ZSH_HIGHLIGHT_STYLES[assign]=fg=white

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# neofetch
neofetch --disable resolution wm theme icons
