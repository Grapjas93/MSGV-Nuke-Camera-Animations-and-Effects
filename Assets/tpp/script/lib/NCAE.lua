local this={}

local function LoadExternalModule(moduleName)

	local sucess,module=pcall(require,moduleName)
	if sucess then
		package.loaded[moduleName]=nil
		_G[moduleName]=module
		_G.NCAESettings.__loadedUserSettings=true
		TppUiCommand.AnnounceLogView("NCAE: Reloaded Settings")
	else
	end

	return sucess,module
end

function TppMission.IsFOBMission(e) -- rewrite the function from TppMission
	local e=math.floor(e/1e4)
	if e==5 then
		this.SetFOBNCAECameraSettings()
		return true
	else
		this.SetNCAECameraSettings()
		return false
	end
end

function TppDemo.SetPlayerPause() -- rewrite the function from TppDemo
	TppMission.IsFOBMission(vars.missionCode)
	mvars.dem_isPlayerPausing=true
	Player.SetPause()
end

-- Set custom settings for camera animations and effects
function this.SetNCAECameraSettings()
	LoadExternalModule"NCAESettings"
	dofile("/Assets/tpp/script/lib/NCAETppPlayer2InitializeScript.lua")
	dofile("/Assets/tpp/script/lib/NCAETppPlayer2CallbackScript.lua")
end

-- if FOB, load vanilla effects settings to prevent desyncs to players - custom animations are still enabled
function this.SetFOBNCAECameraSettings()
	LoadExternalModule"NCAESettings"
	TppUiCommand.AnnounceLogView("NCAE: Settings Adjusted For Online Mode")
	dofile("/Assets/tpp/script/lib/NCAETppPlayer2InitializeScript.lua")
	dofile("/Assets/tpp/level_asset/chara/player/game_object/TppPlayer2CallbackScript.lua")
end

return this
