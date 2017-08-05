ARTIST=$(cmus-remote -Q | grep -o "artist.*" | cut -d" " -f2- | head -1)
TITLE=$(cmus-remote -Q | grep -o "title.*" | cut -d" " -f2- | head -1)
TIME=$(cmus-remote -Q | grep -o "position.*" | cut -d" " -f2- | head -1)
VOLUME=$(cmus-remote -Q | grep -o "vol_.*" | cut -d " " -f2- | head -1)

if [ "$BLOCK_BUTTON" == "1" ]; then
	cmus-remote -r
elif [ "$BLOCK_BUTTON" == "2" ]; then
	cmus-remote -u
elif [ "$BLOCK_BUTTON" == "3" ]; then
	cmus-remote -n
fi

if [ "$TITLE" == "" ]; then
	echo "Not Playing"
else
	MIN=$((TIME/60))
	SEC=$((TIME%60))
	if [ $(echo "$SEC" | wc -m) == 2 ]; then
		SEC=$(echo "$SEC" | awk '{print "0"$0}')
	fi
	echo "$ARTIST - $TITLE ($MIN:$SEC) vol: $VOLUME"
fi
