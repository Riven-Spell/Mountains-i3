TODO=$(cat /home/adele/todo | wc -l)

if [ "$TODO" != "" ]; then
	echo ":$TODO"
else
	echo ": Nothing!"
fi
