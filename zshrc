# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/naman/.oh-my-zsh"
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="amuse"
bindkey -v

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
plugins=(git)

source $ZSH/oh-my-zsh.sh

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
export TERM=alacritty
export QT_QPA_PLATFORMTHEME=qt5ct
QT_QPA_PLATFORMTHEME=qt5ct
export VIM=/usr/share/nvim/runtime
export BROWSER=brave
export FZF_DEFAULT_COMMAND='find .'
export EDITOR=nvim
export LC_CTYPE=en_IN.utf8

alias ne0fetch="neofetch --ascii_distro 'Arch'"
alias vim="nvim"
alias w='nitrogen --set-scaled --random ~/wallpaper'
alias vi='nvim -c"color default"'
alias sleep='systemctl suspend' 
alias code='nvim -c"color codedark"'
alias notepadqq="nvim"
alias sublime='nvim -c"color molokai"'
alias pac='sudo pacman'
alias atom='nvim -c"color material"'
alias godotpu="DRI_PRIME=1 godot"
alias ccd="cd ~/Documents/c++"
alias jcd="cd ~/Documents/java"
alias jscd="cd ~/Documents/javascript"
alias pycd="cd ~/Documents/python"
alias mcd="cd ~/Documents/markdown"
alias gcd="cd ~/Documents/godot"
alias gitcd="cd ~/Documents/git-depend"
alias texcd="cd ~/Documents/texlive"
alias docd="cd ~/Documents/"
alias cdd="cd .."
alias gs="git status"
alias lvim='nvim -c"color onehalflight"'
alias yay="paru"
alias n='nvim' 
alias please="sudo" 
alias gc="git clone" 
alias gp="git push" 
alias ga="git add remote" 
alias gcm="git commit" 
alias cscd="cd ~/Documents/cs" 
alias cls="clear" 
alias update="sudo pacman -Syu && yay -Sua" 
alias dug="sudo du -h --max-depth=1 | grep G"
alias dum="sudo du -h --max-depth=1 | grep M"
alias dud="sudo du -h --max-depth=1"
alias ecaps="setxkbmap -option caps:swapescape"
alias l="ls | lolcat"
ufetch 
bindkey -v
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!! 
export SDKMAN_DIR="/home/naman/.sdkman"
[[ -s "/home/naman/.sdkman/bin/sdkman-init.sh" ]] && source "/home/naman/.sdkman/bin/sdkman-init.sh"

source /home/naman/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


source /home/naman/.config/broot/launcher/bash/br
