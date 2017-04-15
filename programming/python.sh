#! /usr/bin/env bash

APT_FLAGS="--quiet --assume-yes"

sudo apt $APT_FLAGS update

sudo apt install $APT_FLAGS build-essential

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install pip?" 8 78) then
    sudo apt install $APT_FLAGS python-pip
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install flask?" 8 78) then
    sudo pip install flask
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install pyaudio?" 8 78) then
    sudo apt install $APT_FLAGS python-pyaudio
fi
