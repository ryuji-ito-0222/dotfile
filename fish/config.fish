# set PATH /usr/local/opt/python/libexec/bin /usr/local/bin /usr/sbin $PATH

# Fish git prompt
# set __fish_git_prompt_showdirtystate 'yes'
# set __fish_git_prompt_showstashstate 'yes'
# set __fish_git_prompt_showuntrackedfiles 'yes'
# set __fish_git_prompt_showupstream 'yes'
# set __fish_git_prompt_color_branch cyan
# set __fish_git_prompt_color_upstream_ahead green
# set __fish_git_prompt_color_upstream_behind red

# Status Chars
# set __fish_git_prompt_char_dirtystate '⚡'
# set __fish_git_prompt_char_stagedstate '→'
# set __fish_git_prompt_char_stashstate '↩'
# set __fish_git_prompt_char_upstream_ahead '+'
# set __fish_git_prompt_char_upstream_behind '-'

alias vi="nvim"
alias ..="cd ../"
alias ls="exa"
alias ll="exa -l -g --icons"
alias home="cd ~"
alias c="clear"
alias cat="bat"
alias md="mkdir"
alias ya="yarn add"
alias yad="yarn add -D"
alias yr="yarn remove"
alias ga="git add"
alias gbd="git branch -d"
alias gb='git branch'
alias gcm='git commit -m'
alias gca="git commit --amend"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gl="git log --date=iso --decorate"
alias glp="git log --date=iso --decorate --patch"
alias glg="git log --date=iso --graph --decorate --oneline --all"
alias gs="git status"
alias gf="git fetch"
alias gp="git pull"
alias gst="git stash"
alias gstl="git stash list"
alias gstp="git stash pop"
alias gstd="git stash drop"
alias gpoh="git push origin HEAD"



functions --copy cd standard_cd

function cd
  standard_cd $argv; and ls
end

function ghq_get_user_all_repo
    curl "https://api.github.com/users/"(echo $argv)"/repos" | jq -r ".[].clone_url" | xargs -L1 ghq get
end

##
# Your previous /Users/itouryuji/.bash_profile file was backed up as /Users/itouryuji/.bash_profile.macports-saved_2020-10-26_at_16:28:29
##

# MacPorts Installer addition on 2020-10-26_at_16:28:29: adding an appropriate PATH variable for use with MacPorts.
# Finished adapting your PATH environment variable for use with MacPorts.
# source (conda info --root)/etc/fish/conf.d/conda.fish
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"
set -x PATH $HOME/Library/Python/3.7/bin $PATH
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
# set -gx FLYCTL_INSTALL "/Users/itouryuji/.fly"
# set -gx PATH "$FLYCTL_INSTALL/bin:$PATH"
# set PATH /usr/local/.fly/bin $PATH
set PATH /usr/local/opt/python/libexec/bin /usr/local/bin /usr/sbin $PATH
[ -s "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"
starship init fish | source
source /usr/local/opt/asdf/asdf.fish
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
# set -U fish_user_paths usr/local/opt/anaconda3/bin $fish_user_paths
