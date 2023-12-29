export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# `.zcompdump` is used by zsh completion system to speed up completion.
# Dump to new location in order to not dump to $HOME.
# See https://stackoverflow.com/a/71271754.
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh

# Include hidden files in search
# See https://github.com/junegunn/fzf/issues/337#issuecomment-136389913
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l -g ""'

# Compilation flags
export LDFLAGS="-L/opt/homebrew/opt/node@18/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@18/include"
# For compilers to find llvm you may need to set (hint from brew)
# export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
