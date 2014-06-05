autoAdjustPower
===============

A little script to help you auto start/stop applications &amp; services on your Mac if you switch power source (AC or battery).

When power changes, a popup will be shown and you can chose to start/stop the applications & services you specified or just leave it as is.

I am working a lot in the coffee stores and this helps me to save my battery. I am not really into AppleScript, so please be forgiving. I am open to any suggestions :-)

Installation
============

1. `git clone https://github.com/mikumi/autoAdjustPower.git`

Configuration
=============

1. Open the `autoAdjustPower.applescript`
2. Find `-- ##### CONFIGURATION START ##### --`
3. Adjust `applicationList` accordingly
4. Adjust `userServices` and its `userServicesPlists` accordingly. userServices containts the names of the service (get names via `launchctl list`) and userServicePlists the location of the plist file. Make sure the order of both the lists is correct.
5. Adjust rootServices. Same as userService, only that these service required to be start/stopped by root. (Get service names via `sudo launchctl list`
6. Export to Application with `Stay open after run handler` checked. Leave everything else unchecked.
7. Close editor
8. If you want you can open the app in Finder with "Show Package Contents", go to `Contents/Resources` and replace `applet.icns` with this icon (or any other): `http://www.iconseeker.com/search-icon/xi4dox/power-1.html`


Run
===

1. Open spotlight with <kbd>CMD</kbd>+<kbd>SPACE</kbd> and enter `autoAdjustPower`
2. Leave it running in the background.
