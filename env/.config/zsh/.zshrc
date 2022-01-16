# Created by tinnedkarma for 5.7.1

autoload -U compinit
zstyle ':completion:*' menu select
compinit -d "$HOME/.cache/zsh/zcompdump-$ZSH_VERSION"

# shellcheck disable=SC2034
{
PROMPT='%F{red}%~%f %# '
SAVEHIST=1000
}
HISTFILE="$HOME/.cache/zsh/zsh-hist"
HISTSIZE=1000

# . "/usr/share/fzf/completion.zsh"

# shellcheck disable=SC1091
{
. "$ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
. "$ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh"
}

