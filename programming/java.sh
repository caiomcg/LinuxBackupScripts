#! /usr/bin/env bash

APT_FLAGS="--quiet --assume-yes"

sudo apt $APT_FLAGS update

sudo apt $APT_FLAGS install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt $APT_FLAGS update

sudo apt $APT_FLAGS install oracle-java8-installer
