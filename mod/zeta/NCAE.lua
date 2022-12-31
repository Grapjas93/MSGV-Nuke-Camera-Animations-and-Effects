--NCAE.Lua
local this={
	modName = "Nuke Camera Animations and Effects",
	modDesc = "module to enable/disable camera animations and/or effects.",
	modCategory = {"Gameplay", "Camera" },
	modAuthor = "Grapjasss",
}

function this.ModMenu()
    return{
        {
			options={
				{
					var="CqcStandThrowFront",
					name="CqC throw front",
					desc="",
					bool=true,
				},
				{
					var="CqcStandThrowRight",
					name="CqC throw right",
					desc="",
					bool=true,
				},
			}
        }
    }
end

TppPlayer2CallbackScript._StartCameraAnimation={
    function(unkP1,unkP2,fileSet,_recoverPreOrientation,ignoreCollisionCheckOnStart,unkP6,isRiding,unkP7)

        for key, value in pairs(this.ModMenu()) do
            if (StringId.IsEqual(fileSet, key)) then

                if (TppMission.IsFOBMission(vars.missionCode) and StringId.IsEqual(fileSet,"CqcSnatchAssaultLeft") or StringId.IsEqual(fileSet,"CqcSnatchAssaultRight")) or not value then
                    local startFrame=(unkP2-unkP1)+unkP6
                    local recoverPreOrientation=_recoverPreOrientation
                    if(((StringId.IsEqual(fileSet,"CureGunShotWoundBodyLeft")or StringId.IsEqual(fileSet,"CureGunShotWoundBodyRight"))or StringId.IsEqual(fileSet,"CureGunShotWoundBodyCrawl"))or StringId.IsEqual(fileSet,"CureGunShotWoundBodySupine"))then
                    if not NCAESettings.nuke_cameraEffects then -- NCAE
                        Player.SetFocusParamForCameraAnimation{aperture=3,focusDistance=.6}
                    end
                    end
                    Player.RequestToPlayCameraAnimation{
                        fileSet=fileSet,
                        startFrame=startFrame,
                        ignoreCollisionCheckOnStart=ignoreCollisionCheckOnStart,
                        recoverPreOrientation=recoverPreOrientation,
                        isRiding=isRiding,
                        stopPlayingByCollision=true,
                        enableCamera=TppPlayer2CallbackScript.defaultEnableCamera,
                        interpTimeToRecoverOrientation=TppPlayer2CallbackScript.defaultInterpTimeToRecoverOrientation,
                        stopRecoverInterpByPadOperation=TppPlayer2CallbackScript.defaultStopRecoverInterpByPadOperation,
                        interpType=TppPlayer2CallbackScript.defaultInterpType
                    }
                end
            end
        end
    end
}

TppPlayer2CallbackScript._StartCameraAnimationUseFileSetName={
function(unkP1,unkP2,fileSetName,_recoverPreOrientation,ignoreCollisionCheckOnStart)

        for key, value in pairs(this.ModMenu()) do
          if (StringId.IsEqual(fileSetName, key)) then

            if (TppMission.IsFOBMission(vars.missionCode) and fileSetName=="CqcSnatchAssaultRight" or fileSetName=="CqcSnatchAssaultLeft") or not value then
              local startFrame=unkP2-unkP1
              local recoverPreOrientation=_recoverPreOrientation
              if(fileSetName=="CqcSnatchAssaultRight"or fileSetName=="CqcSnatchAssaultLeft")then
                if not NCAESettings.nuke_cameraEffects then -- NCAE
                  Player.SetFocusParamForCameraAnimation{aperture=20}
                end
              end
              Player.RequestToPlayCameraAnimation{
                fileSetName=fileSetName,
                startFrame=startFrame,
                ignoreCollisionCheckOnStart=ignoreCollisionCheckOnStart,
                recoverPreOrientation=recoverPreOrientation,
                stopPlayingByCollision=TppPlayer2CallbackScript.defaultStopPlayingByCollision,
                enableCamera=TppPlayer2CallbackScript.defaultEnableCamera,
                interpTimeToRecoverOrientation=TppPlayer2CallbackScript.defaultInterpTimeToRecoverOrientation,
                stopRecoverInterpByPadOperation=TppPlayer2CallbackScript.defaultStopRecoverInterpByPadOperation,
                interpType=TppPlayer2CallbackScript.defaultInterpType
              }
            end
          end
        end
      end,
      _SetCameraNoise=function(levelX,levelY,time)
        local _levelX=levelX
        local _levelY=levelY
        local _time=time
        local decayRate=.15
        if not NCAESettings.nuke_cameraEffects then -- NCAE
          Player.RequestToSetCameraNoise{levelX=_levelX,levelY=_levelY,time=_time,decayRate=decayRate}
        end
      end,
      _SetHighSpeedCamera=function(decayRate,timeRate)
        if TppMission.IsFOBMission(vars.missionCode) then
          if not isFOBActive then
            isFOBActive=true
            TppUiCommand.AnnounceLogView("NCAE: Settings adjusted for FOB.")
          end
          HighSpeedCamera.RequestEvent{
            continueTime=decayRate,
            worldTimeRate=timeRate,
            localPlayerTimeRate=timeRate,
            timeRateInterpTimeAtStart=0,
            timeRateInterpTimeAtEnd=0,
            cameraSetUpTime=0
          }
        elseif not NCAESettings.nuke_cameraSlowMotion then -- NCAE
          if isFOBActive then
            isFOBActive=false
            TppUiCommand.AnnounceLogView("NCAE: Settings adjusted for singleplayer.")
          end
          HighSpeedCamera.RequestEvent{
            continueTime=decayRate*NCAESettings.cameraSlowMotionTimeMultiplier,
            worldTimeRate=timeRate*NCAESettings.cameraSlowMotionSpeedMultiplier,
            localPlayerTimeRate=timeRate*NCAESettings.cameraSlowMotionSpeedMultiplier,
            timeRateInterpTimeAtStart=0,
            timeRateInterpTimeAtEnd=0,
            cameraSetUpTime=0
          }
        end
      end
}
TppPlayer2CallbackScript._SetCameraNoise={
    function(levelX,levelY,time)
        local _levelX=levelX
        local _levelY=levelY
        local _time=time
        local decayRate=.15
        if not NCAESettings.nuke_cameraEffects then -- NCAE
        Player.RequestToSetCameraNoise{levelX=_levelX,levelY=_levelY,time=_time,decayRate=decayRate}
        end
    end
}

TppPlayer2CallbackScript._SetHighSpeedCamera={
    function(decayRate,timeRate)
    if TppMission.IsFOBMission(vars.missionCode) then
        if not isFOBActive then
            isFOBActive=true
            TppUiCommand.AnnounceLogView("NCAE: Settings adjusted for FOB.")
        end
        HighSpeedCamera.RequestEvent{
            continueTime=decayRate,
            worldTimeRate=timeRate,
            localPlayerTimeRate=timeRate,
            timeRateInterpTimeAtStart=0,
            timeRateInterpTimeAtEnd=0,
            cameraSetUpTime=0
        }
    elseif not NCAESettings.nuke_cameraSlowMotion then -- NCAE
        if isFOBActive then
            isFOBActive=false
            TppUiCommand.AnnounceLogView("NCAE: Settings adjusted for singleplayer.")
        end
        HighSpeedCamera.RequestEvent{
            continueTime=decayRate*NCAESettings.cameraSlowMotionTimeMultiplier,
            worldTimeRate=timeRate*NCAESettings.cameraSlowMotionSpeedMultiplier,
            localPlayerTimeRate=timeRate*NCAESettings.cameraSlowMotionSpeedMultiplier,
            timeRateInterpTimeAtStart=0,
            timeRateInterpTimeAtEnd=0,
            cameraSetUpTime=0
        }
    end
end
}

function this.EquipParameters()
	local ironsightDistance = this.ZVar("IronsightAdjustment") --Weapon distance
	local newIronsightSettings = { --MGS3/4 Settings
		{sIndex=1,[6]=.4 + ironsightDistance},
		{sIndex=2,[6]=.4 + ironsightDistance},
		{sIndex=3,[6]=.4 + ironsightDistance},
		{sIndex=4,[6]=.4 + ironsightDistance},
		{sIndex=5,[6]=.4 + ironsightDistance},
		{sIndex=6,[6]=.4 + ironsightDistance},
		{sIndex=7,[6]=.4 + ironsightDistance},
		{sIndex=8,[6]=.4 + ironsightDistance},
		{sIndex=9,[6]=.4 + ironsightDistance},
		{sIndex=10,[6]=.4 + ironsightDistance},
		{sIndex=11,[6]=.4 + ironsightDistance},
		{sIndex=12,[6]=.4 + ironsightDistance},
		{sIndex=13,[6]=.4 + ironsightDistance},
		{sIndex=14,[6]=.4 + ironsightDistance},
		{sIndex=15,[6]=.4 + ironsightDistance},
		{sIndex=16,[6]=.4 + ironsightDistance},
		{sIndex=17,[6]=.45 + ironsightDistance},
		{sIndex=18,[6]=.45 + ironsightDistance},
		{sIndex=19,[6]=.45 + ironsightDistance},
		{sIndex=20,[6]=.55 + ironsightDistance},
		{sIndex=21,[6]=.55 + ironsightDistance},
		{sIndex=22,[6]=.55 + ironsightDistance},
		{sIndex=23,[6]=.7 + ironsightDistance},
		{sIndex=24,[6]=.4 + ironsightDistance},
		{sIndex=25,[6]=.4 + ironsightDistance},
		{sIndex=26,[6]=.4 + ironsightDistance},
		{sIndex=27,[6]=.35 + ironsightDistance},
		{sIndex=28,[6]=.35 + ironsightDistance},
		{sIndex=29,[6]=.35 + ironsightDistance},
		{sIndex=30,[6]=.35 + ironsightDistance},
		{sIndex=31,[6]=.35 + ironsightDistance},
		{sIndex=32,[6]=.35 + ironsightDistance},
		{sIndex=33,[6]=.35 + ironsightDistance},
		{sIndex=34,[6]=.35 + ironsightDistance},
		{sIndex=35,[6]=.42 + ironsightDistance},
		{sIndex=36,[6]=.54 + ironsightDistance},
		{sIndex=37,[6]=.3 + ironsightDistance},
		{sIndex=38,[6]=.33 + ironsightDistance},
		{sIndex=39,[6]=.33 + ironsightDistance},
		{sIndex=40,[6]=.4 + ironsightDistance},
		{sIndex=41,[6]=.4 + ironsightDistance},
		{sIndex=42,[6]=.5 + ironsightDistance},
		{sIndex=43,[6]=.5 + ironsightDistance},
		{sIndex=44,[6]=.5 + ironsightDistance},
		{sIndex=45,[6]=.5 + ironsightDistance},
		{sIndex=46,[6]=.5 + ironsightDistance},
		{sIndex=47,[6]=.5 + ironsightDistance},
		{sIndex=48,[6]=.5 + ironsightDistance},
		{sIndex=49,[6]=.5 + ironsightDistance},
		{sIndex=50,[6]=.5 + ironsightDistance},
		{sIndex=51,[6]=.5 + ironsightDistance},
		{sIndex=52,[6]=.5 + ironsightDistance},
		{sIndex=53,[6]=.5 + ironsightDistance},
		{sIndex=54,[6]=.5 + ironsightDistance},
		{sIndex=55,[6]=.5 + ironsightDistance},
		{sIndex=56,[6]=.5 + ironsightDistance},
		{sIndex=57,[6]=.5 + ironsightDistance},
		{sIndex=58,[6]=.5 + ironsightDistance},
		{sIndex=59,[6]=.5 + ironsightDistance},
		{sIndex=81,[6]=.6 + ironsightDistance},
		{sIndex=82,[6]=.6 + ironsightDistance},
		{sIndex=83,[6]=.4 + ironsightDistance},
		{sIndex=84,[6]=.4 + ironsightDistance},
		{sIndex=85,[6]=.5 + ironsightDistance},
		{sIndex=86,[6]=.2 + ironsightDistance},
	}
	if this.ZVar("IronsightDistanceMode") <= 0 then --MGSV Settings
		local paramTable = ZetaEquipParameters.GetTable()
		if paramTable ~= nil then
			local receiverParamSetsBase = paramTable.receiverParamSetsBase
			for i,param in ipairs(newIronsightSettings)do param[6] = receiverParamSetsBase[param.sIndex][6] + ironsightDistance end
		end
	end
	return { receiverParamSetsBase = newIronsightSettings}
end

return this