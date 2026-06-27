#!/bin/bash
set -euo pipefail
trap 'echo "An error occurred. Aborting operation."; exit 1' ERR

echo "=============================================="
sleep 0.1
echo "    Niri Artix Linux power menu script     "
sleep 0.1
echo "=============================================="
sleep 0.1
echo
sleep 0.1
echo "What do you want to do?"
sleep 0.1
echo "1)  Lock screen and session"
sleep 0.1
echo "2)  Hibernate session"
sleep 0.1
echo "3) 󰈆 Logout from session"
sleep 0.1
echo "4)  Restart system"
sleep 0.1
echo "5)  Power off system"
sleep 0.1
echo "6)  Close this menu"
sleep 0.1
echo
sleep 0.1
read -rp "Choose an option [1-6]: " choice
sleep 0.1

case "$choice" in
1)
    swaylock
    echo "Locking.."
    exit 0
    ;;

2)
    loginctl hibernate
    echo "Hibernating..."
    exit 0
    ;;

3)
    pkill niri
    ;;

4)
    echo "Super user privleges requires"
    sudo reboot
    ;;

5)
    echo "Super user privleges requires"
    sudo poweroff
    ;;

6)
    echo "Aborting. Closing"
    exit 0
esac
