# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


#######################################################################
export PATH=/usr/local/cuda-12.9/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-12.9/lib64:$LD_LIBRARY_PATH

#######################################################################

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/lirongyao0916/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/lirongyao0916/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/lirongyao0916/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/lirongyao0916/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<






########################################################################################
#
#


#############   Py1_project   ###########
alias githpy1='cd /home/lirongyao0916/Projects/Py1_project/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlpy1='cd /home/lirongyao0916/Projects/Py1_project/ &&  git pull'
alias gitcpy1='cd /home/lirongyao0916/Projects && rm -rf ./Py1_project && git clone  git@github.com:lirongyaoper/Py1_project.git'


################    Py2_project    ##################
alias githpy2='cd /home/lirongyao0916/Projects/Py2_project/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlpy2='cd /home/lirongyao0916/Projects/Py2_project/ &&  git pull'
alias gitcpy2='cd /home/lirongyao0916/Projects && rm -rf ./Py2_project &&  git clone git@github.com:lirongyaoper/Py2_project.git'
##############    py2_project   end  ################


##########        Php1_project     ###################
alias githphp1='cd /home/lirongyao0916/Projects/Php1_project/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlphp1='cd /home/lirongyao0916/Projects/Php1_project/ &&  git pull'
alias gitcphp1='cd /home/lirongyao0916/Projects && rm -rf ./Php1_project && git clone  git@github.com:lirongyaoper/Php1_project.git'


###############   Lx1_project     ################
alias githlx1='cd /home/lirongyao0916/Projects/Lx1_project/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitllx1='cd /home/lirongyao0916/Projects/Lx1_project/ &&  git pull'
alias gitclx1='cd /home/lirongyao0916/Projects && rm -rf ./Lx1_project &&  git clone git@github.com:lirongyaoper/Lx1_project.git'


############   #    C1_Project  ##################
alias githc1='cd /home/lirongyao0916/Projects/C1_Project/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlc1='cd /home/lirongyao0916/Projects/C1_Project/ &&  git pull'
alias gitcc1='cd /home/lirongyao0916/Projects && rm -rf ./C1_Project &&  git clone git@github.com:lirongyaoper/C1_Project.git'



#############      lryper   start   #################
alias githper='cd /home/lirongyao0916/Projects/lryper.com/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlper='cd /home/lirongyao0916/Projects/lryper.com/ &&  git pull'
alias gitcper='cd /home/lirongyao0916/Projects/ && sudo rm -rf ./lryper.com &&  git clone git@github.com:lirongyaoper/lryper.com.git'

#############     lryper  end       ################


############      test  start     ########## #######
alias githtes='cd /home/lirongyao0916/Projects/test.com/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitltes='cd /home/lirongyao0916/Projects/test.com/ &&  git pull'
alias gitctes='cd /home/lirongyao0916/Projects/ && sudo rm -rf ./test.com &&  git clone git@github.com:lirongyaoper/test.com.git'
##################       test end      ########## #######


############      web  start     ########## #######
alias githweb='cd /home/lirongyao0916/Projects/webconf/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlweb='cd /home/lirongyao0916/Projects/webconf/ &&  git pull'
alias gitcweb='cd /home/lirongyao0916/Projects/ && sudo rm -rf ./webconf &&  git clone git@github.com:lirongyaoper/webconf.git'
############      web end      ########## #######



############      cs  start     ########## #######
alias githcs='cd /home/lirongyao0916/Projects/cs.com/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlcs='cd /home/lirongyao0916/Projects/cs.com/ &&  git pull'
alias gitccs='cd /home/lirongyao0916/Projects/ && sudo rm -rf ./cs.com &&  git clone git@github.com:lirongyaoper/cs.com.git'
############      cs end      ########## #######




############      lryblog  start     ########## #######
alias githblog='cd /home/lirongyao0916/Projects/lryblog.com/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlblog='cd /home/lirongyao0916/Projects/lryblog.com/ &&  git pull'
alias gitcblog='cd /home/lirongyao0916/Projects/ && sudo rm -rf ./lryblog.com &&  git clone git@github.com:lirongyaoper/lryblog.com.git'
############      lryblog end      ########## #######



############      pytool  start     ########## #######
alias githpt='cd /home/lirongyao0916/Projects/pytool/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlpt='cd /home/lirongyao0916/Projects/pytool/ &&  git pull'
alias gitcpt='cd /home/lirongyao0916/Projects/ && sudo rm -rf ./pytool &&  git clone git@github.com:lirongyaoper/pytool.git'
############      pytool end      ########## #######



############      qd.com  start     ########## #######
alias githqd='cd /home/lirongyao0916/Projects/qd.com/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlqd='cd /home/lirongyao0916/Projects/qd.com/ &&  git pull'
alias gitcqd='cd /home/lirongyao0916/Projects/ && sudo rm -rf ./qd.com &&  git clone git@github.com:lirongyaoper/qd.com.git'
############      qd.com end      ########## #######



############      qd.com  start     ########## #######
alias githsou='cd /home/lirongyao0916/Projects/source/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlsou='cd /home/lirongyao0916/Projects/source/ &&  git pull'
alias gitcsou='cd /home/lirongyao0916/Projects/ && sudo rm -rf ./source &&  git clone git@github.com:lirongyaoper/source.git'
############      qd.com end      ########## #######


alias xo.='xdg-open ./'
alias xo='xdg-open'
alias xod='xdg-open /mnt/data'
alias xoln='xdg-open /mnt/lrynnunet'
alias xon='xdg-open /home/lirongyao0916/nnunet'
alias cdd='cd /mnt/data'
alias cdln='cd /mnt/lrynnunet'
alias cdn='cd /home/lirongyao0916/nnunet/'
#############################################################################################

alias condan='conda activate nnunet'
alias condad='conda deactivate'
##########################################################################################3
export nnUNet_raw="/home/lirongyao0916/nnunet/nnUNet_raw"
export nnUNet_preprocessed="/home/lirongyao0916/nnunet/nnUNet_preprocessed"
export nnUNet_results="/home/lirongyao0916/nnunet/nnUNet_results"
###########################################################################################
alias nvidia='watch -n 1 nvidia-smi'
###########################################################################################
alias rt='sudo rm -rf ~/.local/share/Trash/*'
