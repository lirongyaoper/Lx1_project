# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything



alias condap='conda activate paddle'
alias condad='conda deactivate'
alias condan='conda activate nnunet'

###############################################   py1   #####################################################################

alias githpy1='cd /home/lirongyao0916/Projects/Py1_project/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlpy1='cd /home/lirongyao0916/Projects/Py1_project/ &&  git pull'
alias gitcpy1='cd /home/lirongyao0916/Projects && rm -rf ./Py1_project && git clone  git@github.com:lirongyaoper/Py1_project.git'
#############################################   Php1_project     ####################################################################

alias githphp1='cd /home/lirongyao0916/Projects/Php1_project/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlphp1='cd /home/lirongyao0916/Projects/Php1_project/ &&  git pull'
alias gitcphp1='cd /home/lirongyao0916/Projects && rm -rf ./Php1_project && git clone  git@github.com:lirongyaoper/Php1_project.git'

############################################   Lx1_project             ################################################
alias githlx1='cd /home/lirongyao0916/Projects/Lx1_project/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitllx1='cd /home/lirongyao0916/Projects/Lx1_project/ &&  git pull'
alias gitclx1='cd /home/lirongyao0916/Projects && rm -rf ./Lx1_project &&  git clone git@github.com:lirongyaoper/Lx1_project.git'


##############################################    C1_Project    ###################################
alias githc1='cd /home/lirongyao0916/Projects/C1_Project/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlc1='cd /home/lirongyao0916/Projects/C1_Project/ &&  git pull'
alias gitcc1='cd /home/lirongyao0916/Projects && rm -rf ./C1_Project &&  git clone git@github.com:lirongyaoper/C1_Project.git'


#####################################################    Py2_project    ################################################
alias githpy2='cd /home/lirongyao0916/Projects/Py2_project/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlpy2='cd /home/lirongyao0916/Projects/Py2_project/ &&  git pull'
alias gitcpy2='cd /home/lirongyao0916/Projects && rm -rf ./Py2_project &&  git clone git@github.com:lirongyaoper/Py2_project.git'
############################################################################3###########################################
alias githlry='cd /home/lirongyao0916/Projects/lryper/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitllry='cd /home/lirongyao0916/Projects/lryper/ &&  git pull'
alias gitclry='cd /home/lirongyao0916/Projects && rm -rf ./lryper &&  git clone git@github.com:lirongyaoper/lryper.git'

############################################################################3###########################################

export PATH=/usr/local/cuda-12.6/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-12.6/lib64:$LD_LIBRARY_PATH
#####################################################################################################################3

alias rt='rm -rf ~/.local/share/Trash/*'

###############################################   py1   #####################################################################

alias githpy1='cd /home/lirongyao0916/Projects/Py1_project/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlpy1='cd /home/lirongyao0916/Projects/Py1_project/ &&  git pull'
alias gitcpy1='cd /home/lirongyao0916/Projects && rm -rf ./Py1_project && git clone  git@github.com:lirongyaoper/Py1_project.git'
##################       Php1_project  start           #################################

alias githphp1='cd /home/lirongyao0916/Projects/Php1_project/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlphp1='cd /home/lirongyao0916/Projects/Php1_project/ &&  git pull'
alias gitcphp1='cd /home/lirongyao0916/Projects && rm -rf ./Php1_project && git clone  git@github.com:lirongyaoper/Php1_project.git'

########################   Lx1_project           ##########################
alias githlx1='cd /home/lirongyao0916/Projects/Lx1_project/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitllx1='cd /home/lirongyao0916/Projects/Lx1_project/ &&  git pull'
alias gitclx1='cd /home/lirongyao0916/Projects && rm -rf ./Lx1_project &&  git clone git@github.com:lirongyaoper/Lx1_project.git'


########################    C1_Project    ###################################
alias githc1='cd /home/lirongyao0916/Projects/C1_Project/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlc1='cd /home/lirongyao0916/Projects/C1_Project/ &&  git pull'
alias gitcc1='cd /home/lirongyao0916/Projects && rm -rf ./C1_Project &&  git clone git@github.com:lirongyaoper/C1_Project.git'


#########################    Py2_project    ######################
alias githpy2='cd /home/lirongyao0916/Projects/Py2_project/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitlpy2='cd /home/lirongyao0916/Projects/Py2_project/ &&  git pull'
alias gitcpy2='cd /home/lirongyao0916/Projects && rm -rf ./Py2_project &&  git clone git@github.com:lirongyaoper/Py2_project.git'
###############    lryper  start   ###########################################
alias githlry='cd /home/lirongyao0916/Projects/lryper.com/ &&  git add . && git commit -m "update data at $(date +%Y%m%d%H%M%S)" && git push'
alias gitllry='cd /home/lirongyao0916/Projects/lryper.com/ &&  git pull'
alias gitclry='cd /home/lirongyao0916/Projects/ && sudo rm -rf ./lryper.com &&  git clone git@github.com:lirongyaoper/lryper.com.git'
############     lryper   end    ###################################
#
#
##################       cuda   start     #####################
export PATH=/usr/local/cuda-12.6/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-12.6/lib64:$LD_LIBRARY_PATH
##################       cuda end          #####################


#################    清空回收 箱   start      #################
alias rt='rm -rf ~/.local/share/Trash/*'
################    清空回收箱   end      ##################
