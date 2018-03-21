#!/bin/bash


clear 
echo "############################################################################"
echo "  ____                   _          ____                                    "
echo " / ___| ___   ___   __ _| | ___    | __ ) _   _ ____   ____ ___ ___         "
echo "| |  _ / _ \ / _ \ / _  | |/ _ \   |  _ \| | | |  _ \ / _  / __/ __|        "
echo "| |_| | (_) | (_) | (_| | |  __/   | |_) | |_| | |_) | (_| \__ \__ \        "
echo " \____|\___/ \___/ \__  |_|\___|   |____/ \__  |  __/ \____|___/___/        "
echo "                   |___/                  |___/|_|                          "
echo "                                                                bypasser2018"
echo "                                                              by hackerstech"
echo "############################################################################"
sleep 2

PS2='Please enter your choice: '
options=("Bypass Google Verification" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Bypass Google Verification")
            echo "After Bypassing Your Mobile is Going to REBOOT"
            apt-get install fastboot
            fastboot devices
            fastboot erase presist
            fastboot reboot
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
