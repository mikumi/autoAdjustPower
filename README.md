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

1. Open the `AppleScript Editor` app, <kbd>CMD</kbd>+<kbd>O</kbd> and open the `autoAdjustPower.app`
2. Find `-- ##### CONFIGURATION START ##### --`
3. Adjust `applicationList` accordingly
4. Adjust `userServices` and its `userServicesPlists` accordingly. userServices containts the names of the service (get names via `launchctl list`) and userServicePlists the location of the plist file. Make sure the order of both the lists is correct.
5. Adjust rootServices. Same as userService, only that these service required to be start/stopped by root. (Get service names via `sudo launchctl list`
6. Close `AppleScript Editor`

Run
===

1. Open spotlight with <kbd>CMD</kbd>+<kbd>SPACE</kbd> and enter `autoAdjustPower`
2. Leave it running in the background.


