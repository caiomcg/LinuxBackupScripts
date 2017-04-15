#! /usr/bin/env bash

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Before proceeding all scripts will be granted execute permisson. Do you agree?" 8 78) then
    find programming/ -type f -exec sudo chmod +x {} \;
    find development/ -type f -exec sudo chmod +x {} \;
else
    exit 1;
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install development essentials?" 8 78) then
    ( exec "development/dev.sh" )
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install C++ libraries and build essential?" 8 78) then
    ( exec "programming/cpp.sh" )
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install Java?" 8 78) then
    ( exec "programming/java.sh" )
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install Python libs?" 8 78) then
    ( exec "programming/python.sh" )
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install FFMPEG?" 8 78) then
    ( exec "development/ffmpeg.sh" )
fi
echo "Closing"
