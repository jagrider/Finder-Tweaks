on run {input, parameters}

    tell application "Finder"
        set dir_path to quoted form of (POSIX path of (folder of the front window as alias))
    end tell
    tell application "iTerm"
        activate
        set win to (create window with default profile)
        set sesh to (current session of win)
        tell sesh to write text "cd " & dir_path & ";clear"
    end tell

end run
