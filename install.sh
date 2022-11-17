#!/bin/sh

# This script will install to /usr/local
# Proper distro packaging should use /usr

SOURCE='.'
DESTINATION='/usr/local'

set -x
/usr/bin/sudo /usr/bin/install -D "${SOURCE}/dmm" "${DESTINATION}/bin/dmm"
/usr/bin/sudo /usr/bin/install -D "${SOURCE}/dmmlogo.png" "${DESTINATION}/share/pixmaps/dmmlogo.png"
/usr/bin/sudo /bin/chmod 644 "${DESTINATION}/share/pixmaps/dmmlogo.png"
/usr/bin/sudo /usr/bin/install -D "${SOURCE}/dmm.desktop" "${DESTINATION}/share/applications/dmm.desktop"
/usr/bin/sudo /bin/chmod 644 "${DESTINATION}/share/applications/dmm.desktop"
