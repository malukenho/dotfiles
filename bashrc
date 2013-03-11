# Extra PATHs
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=~/node_modules/.bin:$PATH
export PATH=~/bin:$PATH

# EDITOR
export EDITOR='/usr/bin/vim'

# RACK_ENV
export RACK_ENV='development'

# Python
export PYTHONPATH=~/lib/python2.7/site-packages

# TMux PS1
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

# Aliases
alias ap='sudo apachectl'
alias be='bundle exec'
alias bake='be rake'
alias ll='ls -lahG'
alias with='open /Applications/OfficeTime.app && open /Applications/CCMenu.app && open /Applications/Messages.app'
alias ios='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
alias pryr='pry -I . -r config/environment'
alias go='bundle exec foreman start'
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

# Functions
[[ $- == *i* ]] && . ~/.git-prompt/git-prompt.sh
[[ $- == *i* ]] && . ~/.helpers/jump_to_project.sh
[[ $- == *i* ]] && . ~/.helpers/titles.sh
[[ $- == *i* ]] && . ~/.helpers/serve.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.bashrc.local
