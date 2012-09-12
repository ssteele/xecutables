osascript -e 'tell application "Terminal"
	activate
	tell application "System Events"
		keystroke "n" using {command down}
	end tell
	tell window 1
		set background color to {0, 0, 0}
		set normal text color to "white"
	end tell
end tell'