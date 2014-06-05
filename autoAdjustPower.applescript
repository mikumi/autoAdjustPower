# autoAdjustPower.app
# VERSION 1.0.0
#
# Author: me@michael-kuck.com
#
# Start/stop applications & services automatically on your Mac if you switch power source (AC
# or battery).
# 
# Copyright (c) 2014, Michael Kuck
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without modification, are 
# permitted provided that the following conditions are met:
# 
# 1. Redistributions of source code must retain the above copyright notice, this list of 
#   conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright notice, this list of 
#   conditions and the following disclaimer in the documentation and/or other materials 
#   provided with the distribution.
# 
# 3. Neither the name of the copyright holder nor the names of its contributors may be used 
#   to endorse or promote products derived from this software without specific prior written 
#   permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE 
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

-- Global vars
global isCurrentPowerAC
global applicationList
global userServices
global userServicesPlists
global rootServices
global rootServicesPlists

-- Initialization
on run
	-- ##### CONFIGURATION START ##### --
	set applicationList to {"Dropbox", "CrashPlan menu bar", "smcFanControl"}
	set userServices to {}
	set userServicesPlists to {}
	set rootServices to {"com.crashplan.engine"}
	set rootServicesPlists to {"/Library/LaunchDaemons/com.crashplan.engine.plist"}
	-- ##### CONFIGURATION END ##### --
	
	set isCurrentPowerAC to not my isPowerAC()
	
	-- Below only if run as script directly without export as application using "stay open after run handler"
	-- repeat 
	--	delay (idle)
	-- end repeat
	idle
end run

-- Main run loop
on idle
	if my hasPowerChanged() is true then
		set isCurrentPowerAC to my isPowerAC()
		if my shouldReactToPowerChange() is true then
			set isCurrentPowerAC to my isPowerAC()
			if isCurrentPowerAC is true then
				my startServices()
			else
				my stopServices()
			end if
		end if
	end if
	return 30
end idle

-- stopServices
--
on stopServices()
	-- stop apps
	repeat with theItem in applicationList
		tell application theItem to quit
	end repeat
	
	-- stop root services
	set counter to 1
	repeat with theItem in rootServices
		set isRunning to isServiceRunning(theItem, true)
		if isRunning is true then
			set plist to item counter of rootServicesPlists
			set cmd to "launchctl unload " & plist
			try
				do shell script cmd with administrator privileges
			end try
		end if
		set counter to counter + 1
	end repeat
	
	-- stop user services
	set counter to 1
	repeat with theItem in userServices
		set isRunning to isServiceRunning(theItem, false)
		if isRunning is true then
			set plist to item counter of userServicesPlists
			set cmd to "launchctl unload " & plist
			try
				do shell script cmd
			end try
		end if
		set counter to counter + 1
	end repeat
end stopServices

-- startServices
--
on startServices()
	-- stop apps
	repeat with theItem in applicationList
		tell application theItem to run
	end repeat
	
	-- start root services
	set counter to 1
	repeat with theItem in rootServices
		set isRunning to isServiceRunning(theItem, true)
		if isRunning is false then
			set plist to item counter of rootServicesPlists
			set cmd to "launchctl load " & plist
			try
				do shell script cmd with administrator privileges
			end try
		end if
		set counter to counter + 1
	end repeat
	
	-- start user services
	set counter to 1
	repeat with theItem in userServices
		set isRunning to isServiceRunning(theItem, false)
		if isRunning is false then
			set plist to item counter of userServicesPlists
			set cmd to "launchctl load " & plist
			try
				do shell script cmd
			end try
		end if
		set counter to counter + 1
	end repeat
end startServices

-- shouldReactToPowerChange()
-- 
-- Will display a dialog to the user asking if he wishes to react to the
-- power changes
on shouldReactToPowerChange()
	if isCurrentPowerAC is true then
		set source to "AC power"
	else
		set source to "battery"
	end if
	set messageText to "You are now on " & source & ". Start/Stop service accordingly?"
	try
		tell current application to activate
		display alert "Power source has changed" message messageText buttons {"No", "Yes"} default button "No" giving up after 60
		if button returned of result = "YES" then
			return true
		else
			return false
		end if
	on error errMsg
		return false
	end try
end shouldReactToPowerChange

-- hasPowerChanged()
--
-- returns true if power has changed, false if not
on hasPowerChanged()
	if isCurrentPowerAC is my isPowerAC() then
		return false
	else
		return true
	end if
end hasPowerChanged

-- isServiceRunning(serviceName, root)
-- 
-- serviceName - The name of the service which should be checked
-- root - True if this is a root service, false if this is a user service
-- 
-- Returns true if running, false if not
on isServiceRunning(serviceName, root)
	-- This is a fix, otherwise string compare below won't work
	set serviceName to do shell script "echo " & serviceName
	-- fix end
	
	set cmd to "launchctl list | grep -o \"" & serviceName & "\""
	-- log "cmd: " & cmd
	set active to false
	if root is true then
		try
			set greppedName to do shell script cmd with administrator privileges
		on error errMsg
			set greppedName to ""
		end try
	else
		try
			set greppedName to do shell script cmd
		on error errMsg
			set greppedName to ""
		end try
	end if
	if greppedName is equal to serviceName then
		set active to true
	else
		set active to false
	end if
	return active
end isServiceRunning

-- isPowerAC()
-- 
-- Returns true if AC, false if battery
on isPowerAC()
	set power to do shell script "pmset -g | grep AC"
	set power to last character of power
	
	if power = "*" then
		return true
	else
		return false
	end if
end isPowerAC

