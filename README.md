#Sunrise
##Wake up to important information, read to you

Sunrise is a small set of scripts that reads things for me. Everyone but me will have to adapt it, probably heavily, to be able to make use of it.

It was built for OS X, but with small changes it can surely run on Linux.

##Usage
- Set a CLI audio player (such as qtplay) and the path to the sunrise directory in sunrise.sh
- add a LaunchAgent to ~/Library/LaunchAgents. Example de.l3vi.sunrise.plist:

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
	<dict>
		<key>Label</key>
		<string>de.l3vi.sunrise</string>
		<key>Program</key>
		<string>/Users/l3viathan/sunrise/sunrise.sh</string>
		<key>StartCalendarInterval</key>
		<dict>
			<key>Hour</key>
			<integer>7</integer>
			<key>Minute</key>
			<integer>0</integer>
		</dict>
	</dict>
</plist>
```
