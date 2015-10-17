-- This AppleScript mutes the rest of the current Spotify track (intended for commercials)

-- Main flow
set remainingTrackDuration to getRemainingTrackDuration()
muteTrack(remainingTrackDuration)

-- Gets the number of seconds remaining in the current Spotify track
on getRemainingTrackDuration()
	tell application "Spotify"
		set trackDuration to (duration of current track) / 1000 as integer
		set playerPosition to player position as integer
		set remainingTrackDuration to trackDuration - playerPosition

		return remainingTrackDuration
	end tell
end getRemainingTrackDuration

-- Mutes Spotify for given number of seconds
on muteTrack(duration)
	tell application "Spotify"
		set originalVolume to sound volume
		set sound volume to 1
	end tell

	delay duration

	tell application "Spotify"
		set sound volume to originalVolume
	end tell
end muteTrack
