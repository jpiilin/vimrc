# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
#Enable ZSH Tab Completion
autoload -U compinit; compinit


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# default theme
#ZSH_THEME="robbyrussell"
# with time stamp
 ZSH_THEME="nanotech"
# More: https://github.com/robbyrussell/oh-my-zsh/wiki/themes

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# set up epydoc
  alias epydoc='/Library/Frameworks/Python.framework/Versions/2.7/bin/epydoc'
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mvn svn autojump ant osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Library/Frameworks/Python.framework/Versions/3.3/bin:/usr/local/heroku/bin:/Users/ldong/.rvm/gems/ruby-1.9.3-p194/bin:/Users/ldong/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/ldong/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/ldong/.rvm/bin:/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/texbin:/Users/ldong/.rvm/bin