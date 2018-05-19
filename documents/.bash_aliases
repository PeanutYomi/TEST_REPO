unalias -a

#clear
alias c='clear'

#vi
alias vi='vim'

#grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#ls
alias l='ls -ltr --color=auto'
alias la='l -d .*'

#watch 2s
alias watch='watch -n2'
 
#mount
alias mount='mount | column -t'
 
#history
alias h='history'

#useful date
#date +"%F %T"
#date -u

#disk/cpu/memory all in one
alias lscpu='free -h ;printf "\n"; df -h ;printf "\n";lscpu'

#confirmation
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

#root preserver
alias rm='rm --preserve-root'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
