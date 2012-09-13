osascript -e 'tell application "Terminal"
	activate
	tell application "System Events"
		keystroke "n" using {command down}
	end tell
end tell'

osascript -e 'tell application "Terminal"	to set current settings of first window to settings set "FTP"'