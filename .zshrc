# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/johnaiker/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

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
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
plugins=(
	git
	ubuntu
	# cp
	npm
	fzf
	node
	
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
#

# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Example aliases
alias bspwm_window="bash ~/scripts/bspwm_window.sh"
alias xephyrQ="Xephyr -br -ac -noreset -screen 1280x720 :1 &
DISPLAY=:1 qtile"



#Alias de Mysql y XAMPP
alias lampp='sudo /opt/lampp/lampp'
alias mysql="/opt/lampp/bin/mysql -u root"
alias mysqlstart="sudo /opt/lampp/lampp startmysql"
alias mysqlstop="sudo /opt/lampp/lampp stopmysql"
alias h8mail="bash /home/johnaiker/.local/bin/h8mail"
alias layoutUS="/home/johnaiker/scripts/layoutUS.sh"
alias layoutES="/home/johnaiker/scripts/layoutES.sh"

alias ll="lsd -lh --group-dirs=first"
alias ls="lsd --group-dirs=first"
alias la="lsd -a --group-dirs=first"
alias lla="lsd -lha --group-dirs=first"
alias cat="batcat"


#Alias para manejo de directorio
function mkdircd() {
        mkdir -p "$@" && eval cd "\"\$$#\"";
}

alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# TRUELINe
#declare -A TRUELINE_COLORS=(
#    [light_blue]='75;161;207'
#    [grey]='99;99;100'
#    [pink]='199;88;157'
#)
#
#declare -a TRUELINE_SEGMENTS=(
#    'working_dir,light_blue,black,normal'
#    'git,grey,black,normal'
#    'time,white,black,normal'
#    'newline,pink,black,bold'
#)
#
#declare -A TRUELINE_SYMBOLS=(
#    [git_modified]='*'
#    [git_github]=''
#    [segment_separator]=''
#    [working_dir_folder]='...'
#    [working_dir_separator]='/'
#    [working_dir_home]='~'
#    [newline]='❯'
#    [clock]='🕒'
#)
#
#TRUELINE_GIT_SHOW_STATUS_NUMBERS=false
#TRUELINE_GIT_MODIFIED_COLOR='grey'
#TRUELINE_WORKING_DIR_SPACE_BETWEEN_PATH_SEPARATOR=false
#
#_trueline_time_segment() {
#    local prompt_time="${TRUELINE_SYMBOLS[clock]} \t"
#    if [[ -n "$prompt_time" ]]; then
#        local fg_color="$1"
#        local bg_color="$2"
#        local font_style="$3"
#        local segment="$(_trueline_separator)"
#        segment+="$(_trueline_content "$fg_color" "$bg_color" "$font_style" " $prompt_time ")"
#        PS1+="$segment"
#        _trueline_record_colors "$fg_color" "$bg_color" "$font_style"
#    fi
#}
#
#source ~/trueline/trueline.sh
#
#Print systen info
#neofetch
#source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

#Plugins
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-sudo/sudo.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

bindkey "^[[1;3B" beginning-of-line
bindkey "^[[1;3A" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
