# Extra PATHs
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=~/node_modules/.bin:$PATH
export PATH=./node_modules/.bin:$PATH
export PATH=~/bin:$PATH

# EDITOR
export EDITOR='/usr/bin/vim'

# Ruby Tweaks
export RUBY_GC_MALLOC_LIMIT=90000000

# RACK_ENV
export RACK_ENV='development'

# Python
export PYTHONPATH=~/lib/python2.7/site-packages

# Aliases
alias ll='ls -lahG'
alias ap='sudo apachectl'
alias bx='bundle exec'
alias bake='bx rake'
alias fo='bx foreman start'
alias with='open /Applications/OfficeTime.app && open /Applications/CCMenu.app && open /Applications/Messages.app && open /Applications/Skype.app'
alias ios='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

# Functions
[[ $- == *i* ]] && . ~/.helpers/jump_to_project.sh
[[ $- == *i* ]] && . ~/.helpers/serve.sh

# Prompt
export PS1="\[\e[38;5;74m\]\W \[\e[38;5;178m\]$\[\e[0m\] "

# Local settings
source ~/.bashrc.local
