autoload -U compinit
zstyle ':completion:*' menu select

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

source "${ZINIT_HOME}/zinit.zsh"

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
  . "${ZDOTDIR}/.zshlocal"
}

alias v="nvim"

# not really plan to use svn outside Blue Streamline, can stay here
alias svn="svn --config-dir \"$XDG_CONFIG_HOME\"/subversion"

alias start-esp-idf="\
  source ${XDG_DATA_HOME}/espressif/python_env/idf5.2_py3.11_env/bin/activate &&\
  source ${XDG_DATA_HOME}/esp-idf/export.sh"
alias start-zephyros="\
  source ${ZEPHYR_BASE}/.zephyr-env/bin/activate &&\
  source ${ZEPHYR_BASE}/zephyr/zephyr-env.sh"

# eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting

zinit ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship
