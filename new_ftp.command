osascript -e 'tell application "Terminal"
	activate
	tell application "System Events"
		keystroke "n" using {command down}
	end tell
	tell window 1
		set background color to {50000,50000,50000}
		set normal text color to "black"
	end tell
end tell'