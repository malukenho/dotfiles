# set terminal title to 
function rvmtitle {
  title `rvm current`
}

# function for setting terminal titles in OSX
function title {
  printf "\033]0;%s\007" "$1"
}

