echo "password" | sudo -S pacman -Sy | /dev/null
UPDATES=$(pacaur -Qu | wc -l)
echo ":$UPDATES"
