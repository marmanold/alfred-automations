on alfred_script(q)
tell application "System Events"
	set activeApp to name of first application process whose frontmost is true
end tell
tell application "Firefox" to activate
tell application "System Events"
	keystroke "l" using {command down}
	keystroke "c" using {command down}
end tell
tell application activeApp to activate
return the clipboard
end alfred_script