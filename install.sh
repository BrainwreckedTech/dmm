#!/bin/sh

# This script will install to /usr/local
# Proper distro packaging should use /usr

SOURCE='.'
DESTINATION='/usr/local'

set -x
/usr/bin/sudo /usr/bin/install -Dm 755 "${SOURCE}/dmm" "${DESTINATION}/bin/dmm"
/usr/bin/sudo /usr/bin/install -Dm 644 "${SOURCE}/dmmlogo.png" "${DESTINATION}/share/pixmaps/dmmlogo.png"
/usr/bin/sudo /usr/bin/install -Dm 644 "${SOURCE}/dmm.desktop" "${DESTINATION}/share/applications/dmm.desktop"
