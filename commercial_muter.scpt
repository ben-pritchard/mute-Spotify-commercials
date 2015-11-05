-- This AppleScript mutes the rest of the current Spotify track (intended for commercials)
-- Currently mutes the Spotify player, but commented out another method which mutes the CPU master volume

-- Main Flow
-- set remainingTrackDuration to getRemainingTrackDuration()
-- muteSpotify(remainingTrackDuration)
-- muteCPU(remainingTrackDuration)
muteAllCommercials()


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
on muteSpotify(duration)
	tell application "Spotify"
		set originalVolume to sound volume
		set sound volume to 0
	end tell

	delay duration

	tell application "Spotify"
		set sound volume to originalVolume
	end tell
end muteSpotify

-- Mutes CPU for given number of seconds (not used unless user activates it by uncommenting third line of "Main Flow" near the top of the document)
on muteCPU(duration)
	set savedSettings to get volume settings
	set volume output volume 1
	delay duration
	set volume output volume (output volume of savedSettings)
end muteCPU

on muteAllCommercials()
	--tell application "Spotify"
	--repeat
	--display dialog (spotify url of current track) as string
	--end repeat
	--end tell
	set track to "spotify:track:2dNnedX2HPpmm7ZuuAWHJi"
	trim_line(track, "spotify:", 0)
	display dialog track

end muteAllCommercials

--spotify:track:2dNnedX2HPpmm7ZuuAWHJi
--spotify:ad:0000000000000000000000129455a4d4
--spotify:track:2NoLuJDRh7V8zz64w8675S
--spotify:track:2NoLuJDRh7V8zz64w8675S
