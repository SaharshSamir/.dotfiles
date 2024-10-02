# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PS1='\u@\H:\w$ '
PS1='%n@%m %~$ '
# Path to your oh-my-zsh installation.
export ZSH="/Users/saharshsamir/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="fletcherm"
ZSH_THEME="smt"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time


# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions jump themes thefuck vi-mode)

source $ZSH/oh-my-zsh.sh

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=false
MODE_INDICATOR="%F{white}++%f"
INSERT_MODE_INDICATOR="%F{red}>>%f"
PROMPT="$PROMPT\$(vi_mode_prompt_info)"
RPROMPT="\$(vi_mode_prompt_info)$RPROMPT"
bindkey -M viins 'kj' vi-cmd-mode
VI_MODE_CURSOR_NORMAL=2
VI_MODE_CURSOR_VISUAL=2
VI_MODE_CURSOR_INSERT="4"
VI_MODE_CURSOR_OPPEND=2
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH=/opt/homebrew/bin:$PATH
alias myip="curl http://ipecho.net/plain; echo"

#----------------THEME STUFF---------------

#PROMPT='%~ %n %# '
#PROMPT='%F{blue}%1~%f %# '
export PATH=~/.yarn/bin:$PATH
export PATH=$PATH:~/scripts
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/.local/share/nvim/lsp_servers
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/saharshsamir/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/saharshsamir/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/saharshsamir/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/saharshsamir/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#alias concat="cat capitals1.txt capitals2.txt capitals3.txt > capitals.txt"
export PATH="opt/homebrew/opt/flex/bin:$PATH"
#export LDFLAGS="-L/opt/homebrew/opt/flex/lib"
#export LDFLAGS="-L/opt/homebrew/opt/flex/lib"
#export CPPFLAGS="-I/opt/homebrew/opt/flex/include"
export PATH="opt/homebrew/opt/bison/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export DYLD_FALLBACK_LIBRARY_PATH="$(xcode-select --print-path)/Toolchains/XcodeDefault.xctoolchain/usr/lib/"
export LDFLAGS=-L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/lib
export PATH="/opt/homebrew/Cellar/opencv/4.9.0_7:$PATH"
export PATH="/opt/homebrew/opt/ffmpeg@6/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/ffmpeg@6/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ffmpeg@6/include"

eval $(thefuck --alias)
