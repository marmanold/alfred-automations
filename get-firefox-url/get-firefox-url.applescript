on alfred_script(q)
tell application "System Events"
	set activeApp to name of first application process whose frontmost is true
end tell

if application "Firefox" is running then
    tell application "Firefox" to activate
    tell application "System Events"
        keystroke "l" using {command down}
        keystroke "c" using {command down}
    end tell
else if application "FirefoxDeveloperEdition" is running then
    tell application "FirefoxDeveloperEdition" to activate
    tell application "System Events"
        keystroke "l" using {command down}
        keystroke "c" using {command down}
    end tell
end if

tell application activeApp to activate
tell application "System Events"
    keystroke "v" using {command down}
end tell
return the clipboard
end alfred_script