tell application "Terminal"
    -- init variable
    local allOpenedWindows
	local initialOpenedWindows
    set themeName to "Tomorrow Night Eighties"

    -- store initial window list
    set initialOpenedWindows to id of every window

    -- open terminal (due to add list of terminal theme)
    do shell script "open './macos/" & themeName & ".terminal'"

    -- wait to ensure that the theme is added
    delay 1

    -- set default theme
    set default settings to settings set themeName
    
    -- store current window list
    set allOpenedWindows to id of every window

    -- close & apply
    repeat with windowID in allOpenedWindows
        if initialOpenedWindows does not contain windowID then
            -- close new windows
            close (every window whose id is windowID)
        else
            -- apply change to current terminal
            set current settings of tabs of (every window whose id is windowID) to settings set themeName
        end if
    end repeat
end tell