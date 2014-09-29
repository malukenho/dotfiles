# TERM
export TERM=xterm-256color

# PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/heroku/bin:$PATH
export PATH=/Applications/Android/sdk/platform-tools:$PATH
export PATH=/Applications/Android/sdk/tools:$PATH
export PATH=~/bin:$PATH

# Editor
export EDITOR='/usr/bin/vim'

# Docker
export DOCKER_HOST=tcp://:2375

# Node
export NODE_PATH=./node_modules:/usr/local/lib/node_modules

# Ruby
export RUBY_GC_MALLOC_LIMIT=90000000
export RACK_ENV='development'

[[ $- == *i* ]] && source /usr/local/share/chruby/chruby.sh
chruby 2.1.2

# Python
export PYTHONPATH=~/lib/python2.7/site-packages

# Prompt
function ps1_branch {
  b=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$b" ]; then echo " $b"; fi
}

function ps1_ruby {
  echo " ruby-$(ruby -v | grep -o '\d\.\d\+\.\d\+' | head -1)"
}

function ps1_node {
  echo " node-$(node -v | grep -o '\d\+\.\d\+\.\d\+' | head -1)"
}

  black="\[\e[30m\]"
    red="\[\e[31m\]"
  green="\[\e[32m\]"
 yellow="\[\e[33m\]"
   blue="\[\e[34m\]"
magenta="\[\e[35m\]"
   cyan="\[\e[36m\]"
  white="\[\e[37m\]"
  reset="\[\e[0m\]"

export PS1="${yellow}» $blue\w$magenta\$(ps1_branch)$red\$(ps1_ruby)\n$yellow\$$reset "
# export PS1="${yellow}» $blue\w$magenta\$(ps1_branch)\n$yellow\$$reset "
# export PS1="$blue\W ${yellow}$ ${reset}"

# Aliases
alias ll='ls -lahG'
alias ap='sudo apachectl'
alias bx='bundle exec'
alias bake='bx rake'
alias bxg='bx guard'
alias fo='bx foreman start'
alias with='open /Applications/Slack.app && open /Applications/OfficeTime.app'
alias ios='open /Applications/Xcode.app/Contents/Applications/iOS\ Simulator.app'
alias jek='jekyll serve --watch'
alias broc='broccoli'
alias bs='broc serve'
alias bb='broc build'
alias bap='bx cap'
alias tmux='TERM=xterm-256color tmux -2 -u'
alias bo='bundle open'
alias bu='bundle update -j8'
alias bi='bundle install -j8'
alias sr='spring rspec'

# Helpers
for f in $(ls $HOME/helpers/); do source "$HOME/helpers/$f"; done

# Local settings
source ~/.bashrc.local
