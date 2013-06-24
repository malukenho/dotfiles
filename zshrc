# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby rvm tmux)

source $ZSH/oh-my-zsh.sh

# EDITOR
export EDITOR='/usr/bin/vim'

# Ruby Tweaks
export RUBY_GC_MALLOC_LIMIT=90000000

# Python
export PYTHONPATH=~/lib/python2.7/site-packages

# NPM
PATH=/usr/local/share/npm/bin:$PATH

# Aliases
alias ap='sudo apachectl'
alias be='bundle exec'
alias bake='be rake'
alias ll='ls -lahG'
alias with='open /Applications/OfficeTime.app && open /Applications/CCMenu.app && open /Applications/Messages.app'
alias ios='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
alias pryr='pry -I . -r config/environment'
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'
alias sb='serve >/dev/null 2>&1 &'
alias fo='foreman start'

# Right prompt
RPROMPT='%{$fg[red]%}$(rvm current)%{$reset_color%}%'

# Functions
[[ $- == *i* ]] && . ~/.helpers/jump_to_project.sh
[[ $- == *i* ]] && . ~/.helpers/serve.sh

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
__rvm_project_rvmrc

source ~/.zshrc.local

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
