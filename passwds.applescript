tell application "Safari" to activate
#delay 2
try
	tell application "Safari"
		close (every tab of window 1 whose name is equal to "Start Page")
	end tell
end try
tell application "System Events" to tell process "Safari"
	keystroke "," using command down
	tell window 1
		click button "Passwords" of toolbar 1
		#activate "Extensions"
		#keystroke return
	end tell
end tell

