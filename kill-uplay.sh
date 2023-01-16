#!/usr/bin/bash

#(
    wasGameRunning="0"

    echo "started $0 [$$]" #>> ~/git/linux-steam-hacks/foo.txt

    while true
    do

        isGameRunning=`ps -e | grep 'ACOdyssey.exe' | wc -l`

        if [[ $isGameRunning == "0" && $wasGameRunning != "0" ]]
        then
            killall upc.exe
            echo "killed" #>> ~/git/linux-steam-hacks/foo.txt
        fi

        wasGameRunning=$isGameRunning
        echo "sleep" #>> ~/git/linux-steam-hacks/foo.txt
        sleep 5
    done
#) #&
