#!/bin/bash

echo -e "Welcome to the GRADA.me init script. This script is executed one time to install all missing libraries\n"

if [[ -f "./.init-complete" ]]; then
    echo -e "[ERROR] Project initiation complete. Exiting...\n"
    exit 1
fi

echo -e "\n[GRADA.me - INIT] Create files for android platform"
cordova platform add android

echo -e "\n[GRADA.me - INIT] Install Cordova plugins"
./install-cordova-plugins.sh

echo -e "\n[GRADA.me - INIT] Installing Node modules"
npm install

echo -e "\n[GRADA.me - INIT] Installing Bower modules"
cd www
bower install

touch ../.init-complete

echo -e "\n[GRADA.me - INIT] Complete!"
