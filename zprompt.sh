#!/bin/sh

##########
##config##
##########

domain="localdomain"

##########
##########


host=$HOSTNAME
if [[ $host == *".$domain" ]]
then
	host=${host:0:-${#domain}}	
fi

PS1='\[\e[90m\][$env]\[\e[0m\][ \[\e[0;32m\]\u@$host \[\e[34m\]\w \[\e[m\]]\$ '
