--TppPlayer2CallbackScript.lua
-- look for NCAE comments for modifications.
local success,NCAESettings={}
local initialNCAELoadedLog=false;
local isFOBActive=false;

local function LoadNCAESettings()
  success,NCAESettings=dofile("/Assets/tpp/script/lib/NCAE.lua")
  if NCAESettings.showLogs or not initialNCAELoadedLog then
    initialNCAELoadedLog=true
    if success then
      TppUiCommand.AnnounceLogView("NCAE: Custom settings loaded.")
    else
      TppUiCommand.AnnounceLogView("NCAE: Failed to load custom settings. Reverting to mod defaults (nuke all).")
    end
  end
end

LoadNCAESettings()

TppPlayer2CallbackScript={

  StartCameraAnimation=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    TppPlayer2CallbackScript._StartCameraAnimation(unkP1,unkP2,fileSet,true,false,unkP3,false,true)
  end,
  StartCameraAnimationNoRecover=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    TppPlayer2CallbackScript._StartCameraAnimation(unkP1,unkP2,fileSet,false,false,unkP3,true)
  end,
  StartCameraAnimationNoRecoverNoCollsion=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    TppPlayer2CallbackScript._StartCameraAnimation(unkP1,unkP2,fileSet,false,true,unkP3)
  end,
  StartCameraAnimationForSnatchWeapon=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
  end,
  StopCameraAnimation=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    Player.RequestToStopCameraAnimation{fileSet=fileSet}
  end,
  StartCureDemoEffectStart=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
  end,
  SetCameraNoise=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    TppPlayer2CallbackScript._SetCameraNoise(level,level,time)
  end,
  SetCameraNoiseLadder=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    TppPlayer2CallbackScript._SetCameraNoise(.2,.2,.1)
  end,
  SetCameraNoiseElude=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    TppPlayer2CallbackScript._SetCameraNoise(.2,.2,.1)
  end,
  SetCameraNoiseDamageBend=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    TppPlayer2CallbackScript._SetCameraNoise(.5,.5,.2)
  end,
  SetCameraNoiseDamageBlow=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    TppPlayer2CallbackScript._SetCameraNoise(.5,.5,.5)
  end,
  SetCameraNoiseDamageDeadStart=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    TppPlayer2CallbackScript._SetCameraNoise(.45,.45,.52)
  end,
  SetCameraNoiseFallDamage=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    TppPlayer2CallbackScript._SetCameraNoise(1,.4,.5)
  end,
  SetCameraNoiseDashToWallStop=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    TppPlayer2CallbackScript._SetCameraNoise(.5,.5,.2)
  end,
  SetCameraNoiseStepOn=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    TppPlayer2CallbackScript._SetCameraNoise(.3,.3,.1)
  end,
  SetCameraNoiseStepDown=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    local levelX=0
    local levelY=0
    if(level>0)then
      levelX=level
      levelY=level*.25
    else
      levelX=.225
      levelY=.057
    end
    TppPlayer2CallbackScript._SetCameraNoise(levelX,levelY,.11)
  end,
  SetCameraNoiseStepJumpEnd=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    local levelX=0
    local levelY=0
    if(level>0)then
      levelX=level
      levelY=level*.25
    else
      levelX=.225
      levelY=.057
    end
    TppPlayer2CallbackScript._SetCameraNoise(levelX,levelY,.2)
  end,
  SetCameraNoiseStepJumpToElude=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    TppPlayer2CallbackScript._SetCameraNoise(.4,.4,.4)
  end,
  SetCameraNoiseVehicleCrash=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    TppPlayer2CallbackScript._SetCameraNoise(.5,.5,.5)
  end,
  SetCameraNoiseCqcHit=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    TppPlayer2CallbackScript._SetCameraNoise(.5,.5,.4)
  end,
  SetCameraNoiseEndCarry=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    if not NCAESettings.nuke_cameraEffectShake then
      local levelX=.25*NCAESettings.ShakeIntensityMultiplier
      local levelY=.25*NCAESettings.ShakeIntensityMultiplier
      local time=.15*NCAESettings.ShakeDurationMultiplier
      local decayRate=.05*NCAESettings.ShakeDecayRateMultiplier
      Player.RequestToSetCameraNoise{levelX=levelX,levelY=levelY,time=time,decayRate=decayRate}
    end
  end,
  SetCameraNoiseOnMissileFire=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    if not NCAESettings.nuke_cameraEffectShake then
      local levelX=.5*NCAESettings.ShakeIntensityMultiplier
      local levelY=.5*NCAESettings.ShakeIntensityMultiplier
      local time=.75*NCAESettings.ShakeDurationMultiplier
      local decayRate=.08*NCAESettings.ShakeDecayRateMultiplier
      Player.RequestToSetCameraNoise{levelX=levelX,levelY=levelY,time=time,decayRate=decayRate}
    end
  end,
  SetCameraNoiseOnRideOnAntiAircraftGun=function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    if not NCAESettings.nuke_cameraEffectShake then
      local levelX=.2*NCAESettings.ShakeIntensityMultiplier
      local levelY=.2*NCAESettings.ShakeIntensityMultiplier
      local time=.3*NCAESettings.ShakeDurationMultiplier
      local decayRate=.08*NCAESettings.ShakeDecayRateMultiplier
      Player.RequestToSetCameraNoise{levelX=levelX,levelY=levelY,time=time,decayRate=decayRate}
    end
  end,
  SetNonAnimationCutInCameraFallDeath=function()
  end,
  SetHighSpeeCameraOnCQCDirectThrow=function()
  end,
  SetHighSpeeCameraOnCQCComboFinish=function()
    if not NCAESettings.nuke_cameraSoundEffect then -- NCAE
      TppSoundDaemon.PostEvent"sfx_s_highspeed_cqc"
    end
    TppPlayer2CallbackScript._SetHighSpeedCamera(.6,.03) -- NCAE, the function is adjusted
  end,
  SetHighSpeeCameraAtCQCSnatchWeapon=function()
    if not NCAESettings.nuke_cameraSoundEffect then -- NCAE
      TppSoundDaemon.PostEvent"sfx_s_highspeed_cqc"
    end
    TppPlayer2CallbackScript._SetHighSpeedCamera(1,.1)
  end,
  defaultStopPlayingByCollision=false,
  defaultEnableCamera={PlayerCamera.Around,PlayerCamera.Vehicle},
  defaultInterpTimeToRecoverOrientation=.24,
  defaultStopRecoverInterpByPadOperation=true,
  defaultInterpType=2,
  _StartCameraAnimation=function(unkP1,unkP2,fileSet,_recoverPreOrientation,ignoreCollisionCheckOnStart,unkP6,isRiding,unkP7)

    LoadNCAESettings()

    for key, value in pairs(NCAESettings) do
      if (StringId.IsEqual(fileSet, key)) then
        local startFrame=(unkP2-unkP1)+unkP6
        local recoverPreOrientation=_recoverPreOrientation
        if(StringId.IsEqual(fileSet,"CureGunShotWoundBodyLeft") or StringId.IsEqual(fileSet,"CureGunShotWoundBodyRight") or StringId.IsEqual(fileSet,"CureGunShotWoundBodyCrawl") or StringId.IsEqual(fileSet,"CureGunShotWoundBodySupine") and not NCAESettings.nuke_CameraEffectFocus)then
          Player.SetFocusParamForCameraAnimation{aperture=3*NCAESettings.FocusApertureMultiplier,focusDistance=.6*NCAESettings.FocusFocusDistanceMultiplier}
        end
        if (TppMission.IsFOBMission(vars.missionCode) and StringId.IsEqual(fileSet,"CqcSnatchAssaultLeft") or StringId.IsEqual(fileSet,"CqcSnatchAssaultRight")) or not value then
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
  end,

  _StartCameraAnimationUseFileSetName=function(unkP1,unkP2,fileSetName,_recoverPreOrientation,ignoreCollisionCheckOnStart)

    LoadNCAESettings()

    for key, value in pairs(NCAESettings) do
      if (StringId.IsEqual(fileSetName, key)) then
        local startFrame=unkP2-unkP1
        local recoverPreOrientation=_recoverPreOrientation
        if(fileSetName=="CqcSnatchAssaultRight" or fileSetName=="CqcSnatchAssaultLeft" and not NCAESettings.nuke_CameraEffectFocus)then
          Player.SetFocusParamForCameraAnimation{aperture=20*NCAESettings.FocusApertureMultiplier}
        end
        if (TppMission.IsFOBMission(vars.missionCode) and fileSetName=="CqcSnatchAssaultRight" or fileSetName=="CqcSnatchAssaultLeft") or not value then
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
    if not NCAESettings.nuke_cameraEffectShake then
      local _levelX=levelX
      local _levelY=levelY
      local _time=time
      local decayRate=.15
      Player.RequestToSetCameraNoise{levelX=_levelX*NCAESettings.ShakeIntensityMultiplier,levelY=_levelY*NCAESettings.ShakeIntensityMultiplier,time=_time*NCAESettings.ShakeDurationMultiplier,decayRate=decayRate*NCAESettings.ShakeDecayRateMultiplier}
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
        continueTime=decayRate*NCAESettings.SlowMotionDurationMultiplier,
        worldTimeRate=timeRate*NCAESettings.worldSlowMotionSpeedMultiplier,
        localPlayerTimeRate=timeRate*NCAESettings.playerSlowMotionSpeedMultiplier,
        timeRateInterpTimeAtStart=0,
        timeRateInterpTimeAtEnd=0,
        cameraSetUpTime=0
      }
    end
  end
}

