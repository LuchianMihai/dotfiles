autoload -U compinit
zstyle ':completion:*' menu select

export PATH="${PATH}:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"

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

function start-nuttx {
  if [ "$1" = "riscv" ]; then
    echo "Exporting RISC-V toolchain"
    export PATH="${XDG_DATA_HOME}/riscv-none-elf-gcc/bin:$PATH"
  fi
  source ${HOME}/Projects/nuttxspace/.nxenv/bin/activate
}

alias start-esp-idf="\
  source ${XDG_DATA_HOME}/espressif/python_env/idf5.2_py3.12_env/bin/activate &&\
  source ${XDG_DATA_HOME}/esp-idf/export.sh"


alias start-zephyros="\
  source ${ZEPHYR_BASE}/.zephyr-env/bin/activate &&\
  source ${ZEPHYR_BASE}/zephyr/zephyr-env.sh"

source <(fzf --zsh)

# eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting

zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure

