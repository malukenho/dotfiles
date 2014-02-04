# Extra PATHs
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/Applications/MIT\:GNU\ Scheme.app/Contents/Resources:$PATH
export PATH=~/node_modules/.bin:$PATH
export PATH=~/bin:$PATH
export PATH=./node_modules/.bin:$PATH
export PATH=./bin:$PATH

# Editor
export EDITOR='/usr/bin/vim'

# Prompt
function ps1_branch {
  b=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$b" ]; then echo " $b"; fi
}
export PS1="\[\e[38;5;74m\]\W\[\e[38;5;1m\]\$(ps1_branch) \[\e[38;5;178m\]$\[\e[0m\] "

# Aliases
alias ll='ls -lahG'
alias ap='sudo apachectl'
alias bx='bundle exec'
alias bake='bx rake'
alias gu='bx guard'
alias fo='bx foreman start'
alias with='open /Applications/Slack.app && open /Applications/OfficeTime.app && open /Applications/CCMenu.app && open /Applications/Messages.app'
alias ios='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
alias tmux='tmux -2'
alias jek='bx jekyll server --watch'
alias bro='broccoli serve'

# Ruby
export RUBY_GC_MALLOC_LIMIT=90000000
export RACK_ENV='development'

# chruby
[[ $- == *i* ]] && source /usr/local/share/chruby/chruby.sh
[[ $- == *i* ]] && source /usr/local/share/chruby/auto.sh

# Python
export PYTHONPATH=~/lib/python2.7/site-packages

# Local settings
source ~/.bashrc.local

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Helpers
for f in $(ls $HOME/helpers/); do source "$HOME/helpers/$f"; done
