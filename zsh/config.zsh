fpath=($DOT/functions $fpath)

autoload -U $DOT/functions/*(:t)

export TERM=xterm-256color

HISTFILE="$XDG_DATA_HOME/zsh/zsh_history"
HISTSIZE=100000
SAVEHIST=200000
ZSH_THEME="powerlevel10k/powerlevel10k"
HYPHEN_INSENSITIVE="true"       # If true _ and - will be interchangeable.
WORDCHARS=${WORDCHARS//\/}      # Don't consider certain characters part of the word
PROMPT_EOL_MARK=""		# hide EOL sign ('%')

setopt LOCAL_OPTIONS 		# allow functions to have local options
setopt LOCAL_TRAPS 		# allow functions to have local traps
setopt HIST_VERIFY
setopt EXTENDED_HISTORY 	# add timestamps to history
setopt HIST_IGNORE_ALL_DUPS 	# don't record dupes in history
setopt HIST_REDUCE_BLANKS
setopt autocd			# change dir by typing its name
setopt notify              	# report the status of background jobs immediately
setopt complete_aliases		# don't expand aliases _before_ completion has finished

# zsh directory stack
setopt AUTO_PUSHD               # Push working dir to top of stack
setopt PUSHD_IGNORE_DUPS        # Don't store dupes on stack
setopt PUSHD_SILENT             # Don't print the dir stack after pushd or popd

# configure keybindings
bindkey ' ' magic-space                           # do history expansion on space
bindkey '^[[1;5C' forward-word                    # ctrl + ->
bindkey '^[[1;5D' backward-word                   # ctrl + <-
bindkey '^[[5~' beginning-of-buffer-or-history    # page up
bindkey '^[[6~' end-of-buffer-or-history          # page down
bindkey '^[[H' beginning-of-line                  # home
bindkey '^[[F' end-of-line                        # end

# oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# enable command-not-found if installed
if [ -f /etc/zsh_command_not_found ]; then
    . /etc/zsh_command_not_found
fi
