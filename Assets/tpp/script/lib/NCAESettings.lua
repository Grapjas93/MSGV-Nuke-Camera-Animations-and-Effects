-- SIMPLY ENTER THE PAUSE MENU OR ALT TAB TO RELOAD/UPDATE THE SETTINGS FROM BELOW TO INGAME
local this={

-----:CAMERA ANIMATIONS AND EFFECTS SETTINGS
	-- false to enable effect / animation, true to remove effect / animation
	-- set all to false for vanilla experience
	-- NOTE: Camera effects will automatically temporarily revert to vanilla during FOB to prevent desyncs to players (animations will still be custom)
	nuke_cameraEffects=true,			-- removes effects like blur and noise during the animations below
	nuke_cameraSoundEffect=true,		-- CQC combo finish and Disarm dramatic sound effects. Other sounds are tied to their animation - meaning if you set the animation to false the sound should be gone too

	nuke_cameraSlowMotion=true,			-- removes the slow motion camera during the animations below
	cameraSlowMotionTimeMultiplier=1,   -- DEFAULT: 1 - slowmotion time length, more means more time until the slowmotion stops (e.g. 2 means 2x as long)  - only works if nuke is set to false - temporarily reverts to default during FOBs
	cameraSlowMotionSpeedMultiplier=1,	-- DEFAULT: 1 - slowmotion time sense, less (e.g. 0.1) means stronger slowmotion effect - only works if nuke is set to false - temporarily reverts to default during FOBs

	nukeAnimation_CQCCombos=true,		-- affects all combos from all angles
	nukeAnimation_CQCThrows=true,		-- affects throws done from all angles, and also wall throws and ladder attacks
	nukeAnimation_CQCFromCover=true,	-- animation for attacks from cover
	nukeAnimation_CQCDisarm=true,		-- disarm camera animation
	nukeAnimation_CQCCounterAtt=true,	-- animation for anything you can counter attack such as; gunstrikes, knifestrikes, parasite attacks etc
	nukeAnimation_CQCwalker=true,		-- walker cqc attack
	nukeAnimation_cureWounds=true,		-- animation for dislocation, gunshot wound curing
	nukeAnimation_climbing=true,		-- when interacting with a crack on a cliff
	nukeAnimation_horse=true,			-- mounting, placing people on back
	nukeAnimation_vehicles=true,		-- entering, placing people in seats, armored vehicles animations, ride along on back of truck
	nukeAnimation_walker=true,			-- mounting, picking people up
	nukeAnimation_helicopterRides=true, -- entering heli, heli ride on mission start, placing people in heli
	nukeAnimation_objects=true,			-- entering/exiting objects, also placing people in them - objects like showers, trashboxes, toilets, lockers, retrieving new item from box
	nukeAnimation_animalsAtt=true,		-- wolf attack camera animation
	nukeAnimation_pickupObjects=true,	-- not entirely sure what it does, their animation names are PazPhantomPainPassPhotos and Book, so it's probably an animation picking those up
	-- Please let me know if you find any bugs especially during FOB's on https://www.nexusmods.com/metalgearsolidvtpp/mods/1575?tab=posts

------

}
return this
