-- track => spotify:track:53Pgsvu3qSYO2aXt5J2vcL
-- ad => spotify:ad:0000000000000000000000131d7c107c

tell application "Spotify"
	set originalVolume to sound volume
end tell

set AppleScript's text item delimiters to ":"
repeat
	tell application "Spotify"
		set trackID to (id of current track)
	end tell
	if text item 2 of trackID is "ad" then
		tell application "Spotify"
			set originalVolume to sound volume
			set sound volume to 0
		end tell
		delay getRemainingTrackDuration()
	else
		tell application "Spotify"
			set sound volume to originalVolume
		end tell
		delay getRemainingTrackDuration()
	end if
end repeat

on getRemainingTrackDuration()
	tell application "Spotify"
		set trackDuration to (duration of current track) / 1000 as integer
		set playerPosition to player position as integer
		set remainingTrackDuration to trackDuration - playerPosition

		return remainingTrackDuration
	end tell
end getRemainingTrackDuration
