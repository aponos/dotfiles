PS1="%n %1~ %# "
HISTSIZE=500
EDITOR=vim

alias la='ls -AF'
alias ll='ls -AFlh'

setopt hist_ignore_dups
setopt hist_ignore_space

[ -s "/opt/homebrew/bin/brew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

[ -s "$HOME/.asdf/asdf.sh" ] && \. "$HOME/.asdf/asdf.sh"
[ -s "$ASDF_DIR/plugins/java/set-java-home.zsh" ] && \. "$ASDF_DIR/plugins/java/set-java-home.zsh"
[ -d "$ASDF_DIR/completions" ] && fpath=(${ASDF_DIR}/completions $fpath)

[ -d "$HOME/Library/Application Support/Coursier/bin" ] && PATH="$PATH:$HOME/Library/Application Support/Coursier/bin"

autoload -Uz compinit && compinit
