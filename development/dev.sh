#! /usr/bin/env bash

APT_FLAGS="--quiet --assume-yes"

sudo apt $APT_FLAGS update

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install vim?" 8 78) then
    sudo apt install $APT_FLAGS vim
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install vlc?" 8 78) then
    sudo apt install $APT_FLAGS vlc
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install Wireshark?" 8 78) then
    sudo apt install $APT_FLAGS wireshark
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install Terminator?" 8 78) then
    sudo apt install $APT_FLAGS terminator
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install git?" 8 78) then
    sudo apt install $APT_FLAGS git
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install ssh?" 8 78) then
    sudo apt install $APT_FLAGS ssh
fi
