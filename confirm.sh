#!/bin/sh
# Confirm whether we really want to run this service
confirm() {
    local YES="Y"
    local NO="N"
    local CONT="C"
    
    while :
    do
        echo -n "(Y)es/(N)o/(C)ontinue? [Y] "
        read answer
        answer=$(echo "$answer" | tr '[a-z]' '[A-Z]')
        
        if [ -z "$answer" ] || [ "$answer" = "$YES" ]
        then
            return 0
        elif [ "$answer" = "$CONT" ]
        then
            return 2
        elif [ "$answer" = "$NO" ]
        then
            return 1
        fi
    done
}
