### Description
If you follow along with this tutorial, you will be able to press a hotkey whenever a Spotify commercial comes on and mute the player until the next song comes on!

**Aside:** Now, I have to say, somehow I feel guilty about this. Is it our responsibility to listen to commercials if they are what pay for our free music? I didn't know it was possible to feel guilty about this, but I guess my frustration of realizing I forgot to unmute my computer 10 minutes after a commercial comes on is getting the best of me. Plus, it's pretty stinking fun to figure this stuff out.

### Setup

1. Clone the repository
2. Put the `commercial_muter.scpt` file somewhere safe where it can be referenced everytime you press your desired hotkey. (I put it in a folder I made called `AppleScripts` in the `Documents` directory)
3. Press ⌘ + Spacebar and select "automator"
4. Choose "Service"
5. Select `Utilities` in your `Library`
6. Double click on `Run AppleScript` in the adjacent pane
7. Replace **ALL** of the text in the AppleScript box with the contents of the `sample-automator-applescript.txt` file included in this repository
8. Above the AppleScript, change the "Services receives" dropdown to say `no input` in `any application`
9. Save the Service under a name you will remember
10. Now to assign a hotkey to this service, Press ⌘ + Spacebar again
11. Select "keyboard"
12. Select the "Shortcuts" tab
13. Select "Services" in the left pane
14. Check the box next to the Service you named
15. Assign a hotkey to it by clicking to the right of the Service name you chose
16. Test it out!

**Note**: Usually when assigning a hotkey, you would have to assign it to each application individually. However, if you assign it through a service (like we are doing here) then the hotkey will work in most applications. Some of them however don't have the "Services" option when clicking the Application Name in the top menu bar so will not work until you click into an application (or desktop) that does.


For more information on this, feel free to read [this tutorial](http://blog.fosketts.net/2010/08/09/assign-keyboard-shortcut-applescript-automator-service/).
