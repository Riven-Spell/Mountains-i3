UPDATES=$(checkupdates && checkupdates-aur)

if [ "$UPDATES" != "" ]; then
	if [ "$BLOCK_BUTTON" == "1" ]; then 
		xfce4-terminal --command="pacaur -Syu"
	fi
	echo ":$(echo "$UPDATES" | wc -l)"
else
	echo ":0"
fi
