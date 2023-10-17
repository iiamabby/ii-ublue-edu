#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail
rpm-ostree install npm rpm-build
npm install electron --save-dev
npm install electron-installer-redhat
rm -rf /tmp/scratch-desktop
mkdir /tmp/scratch-desktop
wget --max-redirect 5 -c -O /tmp/scratch-desktop.exe 'https://downloads.scratch.mit.edu/desktop/Scratch%20Setup.exe' 7za x -aoa -y /tmp/scratch-desktop.exe -o /tmp/scratch-desktop
cp -rf ~/node_modules/electron/dist/* /tmp/scratch-desktop
ln -fsr /tmp/scratch-desktop/electron /tmp/scratch-desktop/scratch-desktop
chmod 755 /tmp/scratch-desktop/locales
chmod 755 /tmp/scratch-desktop/swiftshader
chmod 755 /tmp/scratch-desktop/resources
chmod 755 /tmp/scratch-desktop/resources/static
chmod 755 /tmp/scratch-desktop/resources/static/assets
wget -c -O /tmp/scratch-desktop/resources/Icon.png 'https://scratch.mit.edu/images/download/icon.png'
wget -c -O /tmp/config-rpm.json 'https://gist.githubusercontent.com/lyshie/0c49393076b8b375ca1bd98c28f95fb0/raw/223cc112d99c3bdc1829fc25b19c260856134a82/config-rpm.json' ~/node_modules/.bin/electron-installer-redhat --config /tpm/config-rpm.json
mv /tmp/scratch-desktop ~/
