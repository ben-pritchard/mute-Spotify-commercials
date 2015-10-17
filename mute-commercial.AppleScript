-- Lots of extra code here that I played with, but this works! Will refactor...

-- Creates a notification with information about the currently playing track
muteTrack(getRemainingTrackDuration())

-- Main flow
set remainingTrackDuration to getRemainingTrackDuration()
displayTrackDuration(remainingTrackDuration)

-- Method to get the currently playing track
on getRemainingTrackDuration()
	tell application "Spotify"
		set trackDuration to (duration of current track) / 1000 as integer
		set playerPosition to player position as integer
		set remainingTrackDuration to trackDuration - playerPosition

		set originalVolume to sound volume
		set sound volume to 50
		delay remainingTrackDuration
		set sound volume to originalVolume

		return "Remaining duration: " & remainingTrackDuration & " seconds. Player position: " & playerPosition & " seconds. Track duration: " & trackDuration & " seconds"
		-- return remainingTrackDuration
	end tell
end getRemainingTrackDuration

-- Method to create a notification
on displayTrackDuration(duration)
	display notification duration

	-- A delay is set added make sure the notification is shown long enough before the script ends
	delay 1

end displayTrackDuration

-- Method to mute computer for set time
on muteTrack(duration)
	tell application "Spotify"
		set originalVolume to sound volume
		set sound volume to 5
		delay duration
		set sound volume to originalVolume
	end tell
end muteTrack

on playStairwayToHeaven()
	tell application "Spotify"
		play track "spotify:track:51pQ7vY7WXzxskwloaeqyj"
	end tell
end playStairwayToHeaven
