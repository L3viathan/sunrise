if grep -q `date +%d` .heutelastplayed; then
	echo Doing nothing >/dev/null
else
	if [ $(date +%k) -lt "7" ] ; then
		echo "Doing nothing, too early" >/dev/null
	else
		if [[ "`./getIdleTime.sh`" < "20" ]] ; then
			./heute.sh
		else
			echo "doing nothing, too high idle time" >/dev/null
		fi
	fi
fi
