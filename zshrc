#agnoster# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOPATH=$HOME/HOME/goproejct # don't forget to change your path correctly!
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$PATH:~/gradle/gradle-7.2/bin
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
#bindkey -v
autoload -U edit-command-line
# vi style
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Edit line in vim with ctrl-e
#autoload edit-command-line; zle -N edit-command-line
#bindkey '^e' edit-command-line

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git vi-mode docker fzf docker-compose zsh-completions zsh-autosuggestions zsh-syntax-highlighting 
)
autoload -Uz compinit && compinit -i

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias sourceanalyzer="/Applications/HP_Fortify/HP_Fortify_SCA_and_Apps_16.10/bin/sourceanalyzer"
alias mvn362='ln -sf ~/maven/3.6.2/bin/mvn /usr/local/bin/mvn'
alias mvn361='ln -sf ~/maven/3.6.1/bin/mvn /usr/local/bin/mvn'
alias mvn354='ln -sf ~/maven/3.5.4/bin/mvn /usr/local/bin/mvn'
alias mvn353='ln -sf ~/maven/3.5.3/bin/mvn /usr/local/bin/mvn'
alias mvn339='ln -sf ~/maven/3.3.9/bin/mvn /usr/local/bin/mvn'
alias mvn325='ln -sf ~/maven/3.2.5/bin/mvn /usr/local/bin/mvn'
alias mvn305='ln -sf ~/maven/3.0.5/bin/mvn /usr/local/bin/mvn'
mvn362
eval "$(rbenv init -)"
alias jdk6='export JAVA_HOME=`/usr/libexec/java_home -v "1.6"`'
alias jdk7='export JAVA_HOME=`/usr/libexec/java_home -v "1.7"`'
alias jdk8='export JAVA_HOME=`/usr/libexec/java_home -v "1.8"`'
#alias jdk11='export JAVA_HOME=`/usr/libexec/java_home -v "11"`'
#alias ajdk8='export JAVA_HOME=`/usr/libexec/java_home -v "8"`'

alias mcc='mvn clean compile'
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

