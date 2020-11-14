alias brew-upgrade='brew update && brew upgrade && brew upgrade --cask && brew cleanup && brew cleanup --prune 5'
alias pip3-upgrade="pip3 list -o --format freeze | rg -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U"

set -g pure_color_current_directory $pure_color_info
set -g pure_color_git_branch $pure_color_success
set -g __done_min_cmd_duration 120000
set -U __done_exclude 'git (?!push|pull)'

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish ; or true

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

starship init fish | source
