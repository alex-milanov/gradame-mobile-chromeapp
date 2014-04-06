#!/bin/bash

echo "[GRADA.me - Plugin Installer] Starting..."

while read line
do
    if [[ $line == \#* ]]; then
       continue
    fi

    cordova plugin add $line
done < "./cordova-plugins.list"

echo "[GRADA.me - Plugin Installer] Complete!"
