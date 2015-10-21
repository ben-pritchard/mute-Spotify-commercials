### Description
If you follow along with this tutorial (and you have a Mac), you will be able to press a hotkey whenever a Spotify commercial comes on and mute the player until the next song comes on!

If you're interested in how this works, it is done by assigning a hotkey to an AppleScript that queries Spotify about the current track so that it knows how long to mute the Spotify player. Normally, assigning a hotkey to an AppleScript would be very complicated since hotkeys are application specific. However, we can get around this by assigning the hotkey to a "Service", which is a part of every application's Main menu. See for yourself by clicking on the application's name up in the Menu bar at the top of the screen. (Strangely though, the Spotify Application doesn't seem to have a "Services" menu item so it will not work if Spotify is the selected application)

**Aside:** Now, I have to say, somehow I feel guilty about this. Is it our responsibility to listen to commercials if they are what pay for our free music? I didn't know it was possible to feel guilty about this, but I guess my frustration of realizing I forgot to unmute my computer 10 minutes after a commercial comes on is taking precedence. Plus, I feel like a top secret hacker figuring this stuff out which is fun.

### Setup

1. Clone the repository
2. Put the `commercial_muter.scpt` file somewhere safe where it can be referenced everytime you press your desired hotkey. (I put it in a folder I made called `AppleScripts` in the `Documents` directory)
3. Press ⌘ + Spacebar and select "automator"
4. Choose "Service"
5. Select `Utilities` in your `Library`
6. Double click on `Run AppleScript` in the adjacent pane
7. Replace **ALL** of the text in the AppleScript box with the contents of the `sample-automator-applescript.txt` file included in this repository. If you put the `commercial_muter.scpt` somewhere other than a folder called `AppleScripts` in the `Documents` directory, you will have to adjust the path for that.
8. Above the AppleScript, change the "Services receives" dropdown to say `no input` in `any application`
9. Save the Service under a name you will remember
10. Now to assign a hotkey to this service, Press ⌘ + Spacebar again
11. Select "keyboard"
12. Select the "Shortcuts" tab
13. Select "Services" in the left pane
14. Check the box next to the Service you named (probably at the bottom)
15. Assign a hotkey to it by clicking to the right of the Service name you chose (I chose: `Shift` + `⌘` + `M`)
16. Test it out!

If this worked for you, I'd love to know about it! If you star the repository I will take that as it worked for you.

For more information on this, feel free to read [this tutorial](http://blog.fosketts.net/2010/08/09/assign-keyboard-shortcut-applescript-automator-service/).
