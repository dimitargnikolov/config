# user paths
export LOCAL=$HOME/Local
export BREW=$LOCAL/apps/brew
export ENV=$LOCAL/python-envs

# library paths
export DYLD_LIBRARY_PATH=$LOCAL/lib:$BREW/lib:$DYLD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LOCAL/lib:$BREW/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=$LOCAL/lib:$BREW/lib:$LIBRARY_PATH

export CPATH=$LOCAL/include:$BREW/include:$CPATH

export LDFLAGS="-L$BREW/opt/openssl/lib -L$BREW/opt/readline/lib"
export CPPFLAGS="-I$BREW/opt/openssl/include -I$BREW/opt/readline/include"

# exec paths
export PATH=$LOCAL/bin:$BREW/bin:$BREW/opt/openssl/bin:$PATH

# terminal colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
