#!/bin/bash
set -euo pipefail
trap 'echo "An error occurred. Aborting operation."; exit 1' ERR

echo "=============================================="
sleep 0.2
echo "    Script updater for system and Flatpak     "
sleep 0.2
echo "=============================================="
sleep 0.2
echo
sleep 0.2
echo "What do you want to do?"
sleep 0.2
echo "1) Update entire system"
sleep 0.2
echo "2) Update Flatpak"
read -rp "Choose an option [1-2]: " choice
sleep 0.2

case "$choice" in
1)
    echo "Updating Artix.."
    sleep 0.5
    pikaur -Syu
    ;;

2)
    echo "Updating Flatpak..."
    sleep 0.5
    flatpak update
    ;;
esac
