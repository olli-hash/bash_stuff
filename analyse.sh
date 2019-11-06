#!/bin/bash
                                            # 
                                            #
                                            #
                                            #   1..n / 1..10 / 1..10 / 1..1000
                                            #
                                            #
                                            #

iii=${1-0}


while : ; do

    iii=$((iii + 1)) 
    
    mainfolder=$(date "+%Y%m%d%H%M")_${iii}

    mkdir $mainfolder

    for ii in {1..10}; do

            mkdir $mainfolder/$ii

            for i__ in {1..10}; do 

                path=$(date "+%Y%m%d%H%M")
                mkdir $mainfolder/$ii/$path
                
                for i in {1..100}; do               # should need more than a minute, else 
                    sleep 1                         # $path could probably be the same than last time 
                    
                    
                    mpstat -I CPU >$mainfolder/${ii}/${path}/${i}
                    
                    # mpstat -I CPU >${iii}/${ii}        /${path}     /${i}
                    
                done
                
                
                
                

            done


    done


done