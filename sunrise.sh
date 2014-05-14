#!/bin/sh

export player='~/qtplay'

#replace with sunrise directory
cd ~/sunrise

say $(curl -L api.l3vi.de/motd.txt 2>/dev/null)
curl -o heute.mov `curl -ss -L http://www.zdf.de/ZDFmediathek/100sec | grep mov | head -n 1|perl -pe 's/.*(http.*mov).*/$1/g'` >/dev/null 2>&1
eval $player heute.mov >/dev/null 2>&1
./mensa.sh >/dev/null 2>&1
say "Have a nice day."
