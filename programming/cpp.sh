#! /usr/bin/env bash

APT_FLAGS="--quiet --assume-yes"

sudo apt $APT_FLAGS update

sudo apt install $APT_FLAGS build-essential

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install OpenGL?" 8 78) then
    sudo apt install $APT_FLAGS freeglut3-dev
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Install CMAKE?" 8 78) then
    sudo apt install $APT_FLAGS cmake
fi
