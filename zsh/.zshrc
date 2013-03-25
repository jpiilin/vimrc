# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# for examples list files
alias ll='ls -l'

# for apache
alias startxampp='sudo /opt/lampp/lampp start'
alias stopxampp='sudo /opt/lampp/lampp stop'
alias startwww='sudo /etc/init.d/apache2 start'
alias stopwww='sudo /etc/init.d/apache2 stop'
alias restartwww='sudo /etc/init.d/apache2 restart'

# for MATLAB
alias matlab='zsh /opt/matlab2009b/bin/matlab &'

# Logisim
alias logisim='java -jar ~/logisim-generic-2.7.1.jar &'

# Pycharm
#alias pycharm='bash /home/ldong/pycharm-2.7.1/bin/pycharm.sh'

# QQlixian
alias lixian='python /home/ldong/Downloads/lixian/lixian.py'

# GAMS alias
alias gams='/usr/gams/gams24.0_linux_x64_64_sfx/gams'
alias gamslib='/usr/gams/gams24.0_linux_x64_64_sfx/gamslib'


# change display color
alias on='sudo setpci -s 00:02.0 F4.B=AF'
alias displayx='sudo setpci -s 00:02.0 F4.B=AF'
alias displayy='sudo setpci -s 00:02.0 F4.B=AA'

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
plugins=(git svn)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
