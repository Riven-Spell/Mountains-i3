echo "password" | sudo -S pacman -Sy
UPDATES=$(pacaur -Qu | wc -l)
echo ":$UPDATES"
