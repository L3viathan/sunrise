curl -ss -o mensa.html http://happa.dfki.de >/dev/null 2>&1
say -v Anna "Heute in der Mensa:" >/dev/null 2>&1
cat mensa.html | grep "<li>" | perl -pe 's/^\s+//g' | sed 's/^....//g;s/......$//g;s/&auml;/ae/g;s/&ouml;/oe/g;s/&uuml;/ue/g;s/&Auml;/Ae/g;s/&Ouml;/Oe/g;s/&Uuml;/Ue/g;s/&szlig;/ss/g;s/&quot;//g;s/veg\./vegetarisch/g' | while read line ; do
	say -v Anna >/dev/null 2>&1
	sleep 2 >/dev/null 2>&1
done
