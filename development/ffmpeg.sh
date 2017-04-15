#! /usr/bin/env bash

APT_FLAGS="--quiet --assume-yes";
FFMPEG_FLAGS="--enable-gpl ";
FILE_PATH="/home/$USER/ffmpeg";

sudo apt $APT_FLAGS update

sudo apt install yasm

git clone https://git.ffmpeg.org/ffmpeg.git $FILE_PATH

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Use libx264?" 8 78) then
    sudo apt install $APT_FLAGS libx264-dev
    FFMPEG_FLAGS+="--enable-libx264 "
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Use libx265?" 8 78) then
    sudo apt install $APT_FLAGS libx265-dev
    FFMPEG_FLAGS+="--enable-libx265 "
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Use libvpx?" 8 78) then
    sudo apt install $APT_FLAGS libvpx-dev
    FFMPEG_FLAGS+="--enable-libvpx "
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Use libvorbis?" 8 78) then
    sudo apt install $APT_FLAGS libvorbis-dev
    FFMPEG_FLAGS+="--enable-libvorbis "
fi

if (whiptail --title "Linux Backup - caiomcg@dunadan" --yesno "Use libopus?" 8 78) then
    sudo apt install $APT_FLAGS libopus-dev
    FFMPEG_FLAGS+="--enable-libopus "
fi

(cd $FILE_PATH; ./configure $FFMPEG_FLAGS; make; sudo make install)
