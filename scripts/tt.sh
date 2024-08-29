#!/usr/bin/env bash

command=$1
arg1=$2
arg2=$3

if [[ $USE_COLORS == "false" ]]; then
    RED=""
    GREEN=""
    BLUE=""
    YELLOW=""
    PLAIN=""

    RED_BOLD=""
    GREEN_BOLD=""
    BLUE_BOLD=""
    YELLOW_BOLD=""
    PLAIN_BOLD=""
else
    RED='\033[0;31m'
    GREEN='\033[0;32m'
    BLUE='\033[0;34m'
    YELLOW='\033[0;33m'
    PLAIN='\033[0m'

    RED_BOLD='\033[1;31m'
    GREEN_BOLD='\033[1;32m'
    BLUE_BOLD='\033[1;34m'
    YELLOW_BOLD='\033[1;33m'
    PLAIN_BOLD='\033[1;37m'
fi

help=$(
    printf "┌────────────────────────────────────────┐\n"
    printf "│ "
    printf "tt - command line stuffs               "
    printf "│\n"
    printf "└────────────────────────────────────────┘\n\n"

    printf " commands:\n"
)


# ----------------------------------------------------------------------------
# 		Defautl Commands
# ----------------------------------------------------------------------------
if [[ $command == "help" || -z $command ]]; then
    printf "${help}\n"

elif [[ $command == "history" ]]; then
	HISTFILE=~/.bash_history
	set -o history
	history | more

elif [[ $command == "cheat" ]]; then
    if [[ $arg1 == "" ]]; then
        arg1="."
    fi
    curl cheat.sh/$arg1 -s

# ----------------------------------------------------------------------------
# 		Network tools
# ----------------------------------------------------------------------------
   
elif [[ $command == "ip" ]]; then
	public_ip=$(curl icanhazip.com -s)
	printf "Public IP: ${GREEN}${public_ip} ${PLAIN}"
	
elif [[ $command == "localip" ]]; then
	ip --brief address show	

elif [[ $command == "ipdb" ]]; then
    if [[ $arg1 == "" ]]; then
        arg1=$(curl icanhazip.com -s)
    fi
	curl https://internetdb.shodan.io/${arg1} -s | jq
	
elif [[ $command == "weather" ]]; then
	curl -s wttr.in/$arg1 | head -n 7 && printf "\n"
	
elif [[ $command == "tb" || $command == "termbin" ]]; then
	nc termbin.com 9999
	
elif [[ $command == "hb" || $command == "hasetbin" ]]; then
	curl -s https://hastebin.skyra.pw/documents --data-binary @- | jq -r .key | xargs printf "https://hastebin.skyra.pw/%s"
	
# availabe paste sites
# - curl -F 'sprunge=<-' http://sprunge.us
# - nc paste.c-net.org 9999 
# - curl -sF file=@- https://0x0.st 
# - curl -s https://hastebin.skyra.pw/documents --data-binary @- | jq -r .key | xargs printf "https://hastebin.skyra.pw/%s"
# - curl -F 'clbin=<-' https://clbin.com
# - curl -F 'f:1=<-' ix.io

# ----------------------------------------------------------------------------
# 		Storage Tools
# ----------------------------------------------------------------------------
elif [[ $command == "list-size" ]]; then
    du -sh * | sort -rh
    
elif [[ $command == "dir-size" ]]; then
    if [[ $arg1 == "" ]]; then
        arg1="."
    fi
	printf "${GREEN} » Calculating..\n${PLAIN}"
    du -sh . | cut --fields=1
    
elif [[ $command == "monitor" ]]; then
    if [[ $arg1 != "" ]]; then
    	printf $arg1
        tail -f $arg1
    fi
elif [[ $command == "search" ]]; then
    if [[ $arg1 != ".*" && $arg1 != "" ]]; then
        arg1="."$arg1
    fi
    find . -iname "*"$arg1 -type f | xargs grep -in --color "$arg1"


# STORAGE CLEAN-UP TOOLS
elif [[ $command == "clean" ]]; then
    if [[ $arg1 == "yarn" ]]; then
         printf "Cleaning $arg1 ache.."
         yarn cache clean
    fi


# ----------------------------------------------------------------------------
#           Random Stuffs
# ----------------------------------------------------------------------------
elif [[ $command == "rick" ]]; then 
    nc rya.nc 1987

elif [[ $command == "nyan" ]]; then
    curl https://poptart.spinda.net

elif [[ $command == "dadjoke" ]]; then
    curl https://icanhazdadjoke.com

fi
