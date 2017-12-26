# Path to your oh-my-zsh configuration.
# 言語設定
export LANG=ja_JP.UTF-8
export PATH=~/bin:/usr/local/bin:/opt/local/bin:$PATH

# init rbenv
eval "$(rbenv init -)"
if [[ -f ~/.rbenv/completions/rbenv.zsh ]]; then
   source ~/.rbenv/completions/rbenv.zsh
fi

ZSH=$HOME/.oh-my-zsh

ZSH_THEME="dpoggi"

bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

# plugins=(git rails rails3 rails4 ruby rbenv bundler)

source $ZSH/oh-my-zsh.sh

# alias設定
alias zshconfig="~/.zshrc"
alias ohmyzsh="~/.oh-my-zsh"

alias ll="ls -l"
alias la="ls -al"
alias lr="ls -ltr"

alias t="tmux"
alias g="git"

alias be="bundle exec"
alias bu="bundle update"
alias br="bundle exec rspec"
alias bp="bundle exec parallel_test --type rspec"
alias bi="bundle install --path vendor/bundle"

alias migrate="rake db:migrate"
alias seed="rake db:seed"
alias railsp="bundle exec rails s Puma"
alias redis="sudo redis-server ./config/redis/redis.conf"
alias foreman="bundle exec foreman start"

alias n="next"
alias c="continue"
alias s="step"

alias em="emacs"
alias dif="nocorrect diff"
alias atom="/Applications/Atom.app/Contents/Resources/app/atom.sh"

alias refactor="find app \( -name \*.rb -o -name \*.js \) -size '+5k' -print0 | xargs -0 wc -l"
alias ruboc="rubocop-git -D -c ~/rubocop.orig | tee -a log/rubocop.log"
alias rubocc="rubocop-git --cache -D -c ~/rubocop.orig | tee -a log/rubocop.log"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export PATH="/usr/local/opt/tomcat@7/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOBY_ROOT=$GOPATH/src/github.com/goby-lang/goby
