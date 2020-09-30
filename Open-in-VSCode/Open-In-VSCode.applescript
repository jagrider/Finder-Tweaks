tell application "Finder"
	set mySelected to get selection as list

	# Resolve the selected file / path / folder
	if (count of mySelected) is not 0 then
		set myItem to first item of mySelected
		if class of myItem is alias file then
			set myItem to original item of myItem
		end if
		if class of myItem is in {file, document file, internet location file} then
			set myItem to container of myItem
		end if
	else if the (count of window) is not 0 then
		set myItem to folder of the front window
	else
		set myItem to path to desktop folder
	end if

	# Tell VSCode to open this filepath
	set myPath to POSIX path of (myItem as string)
	tell application "VSCode"
		open myPath
	end tell

end tell
