autoload -U compinit
zstyle ':completion:*' menu select
compinit -d "$HOME/.cache/zsh/zcompdump-$ZSH_VERSION"

HISTFILE="$HOME/.cache/zsh/zsh-hist"
HISTSIZE=1000

# shellcheck disable=SC2034
{
   PROMPT='%F{red}%~%f %# '
   SAVEHIST=1000
}

# shellcheck disable=SC1091
{
  . "$ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
  . "$ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh"
  . "$XDG_CONFIG_HOME/broot/launcher/bash/br"
  . "${ZDOTDIR}/.zshlocal"
  . "/usr/share/fzf/completion.zsh"
}

alias v="nvim"

# not really plan to use svn outside Blue Streamline, can stay here
alias svn="svn --config-dir \"$XDG_CONFIG_HOME\"/subversion"

# here we have an hack, start-esp-idf is also an script at ${HOME}/.local/bin
alias start-esp-idf="source start-esp-idf"
alias start-zephyros="source ${ZEPHYR_BASE}/.zephyr-env/bin/activate &&\
                      source ${ZEPHYR_BASE}/zephyr/zephyr-env.sh"

