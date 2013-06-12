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
plugins=(git osx ruby rvm)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/Users/jamie/.rvm/gems/ruby-2.0.0-p195/bin:/Users/jamie/.rvm/gems/ruby-2.0.0-p195@global/bin:/Users/jamie/.rvm/rubies/ruby-2.0.0-p195/bin:/Users/jamie/.rvm/bin:/Users/jamie/bin:/Users/jamie/node_modules/.bin:/usr/local/share/npm/bin:/usr/local/sbin:/Users/jamie/.rvm/bin

# EDITOR
export EDITOR='/usr/bin/vim'

# Ruby Tweaks
export RUBY_GC_MALLOC_LIMIT=90000000

# Python
export PYTHONPATH=~/lib/python2.7/site-packages

# Aliases
alias ap='sudo apachectl'
alias be='bundle exec'
alias bake='be rake'
alias ll='ls -lahG'
alias with='open /Applications/OfficeTime.app && open /Applications/CCMenu.app && open /Applications/Messages.app && open /Applications/Skype.app'
alias ios='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
alias pryr='pry -I . -r config/environment'
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

# Functions
[[ $- == *i* ]] && . ~/.helpers/jump_to_project.sh
[[ $- == *i* ]] && . ~/.helpers/serve.sh

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.zshrc.local
