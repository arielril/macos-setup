alias python='/usr/local/bin/python3.7'
alias brew-upgrade='brew update && brew upgrade && brew cask upgrade && brew cleanup && brew cleanup --prune 5'

set -g pure_color_current_directory $pure_color_info
set -g pure_color_git_branch $pure_color_success
set -g __done_min_cmd_duration 120000
set -U __done_exclude 'git (?!push|pull)'
