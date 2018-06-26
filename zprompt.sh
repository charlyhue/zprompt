#!/bin/sh

##########
##config##
##########

domain="localdomain"
git=true
##########
##########

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


host=$HOSTNAME
if [[ $host == *".$domain" ]]
then
	host=${host:0:-${#domain}}	
fi

PS1='\[\e[90m\][$env]\[\e[0m\][ \[\e[0;32m\]\u@$host \[\e[34m\]\w'

if [ $git ]
then
	PS1=$PS1"\[\e[33m\]\$(parse_git_branch)"
fi

PS1=$PS1' \[\e[m\]]\$ '

