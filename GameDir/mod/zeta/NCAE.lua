--NCAE.Lua
local this={
	modName = "Camera Animations and Effects",
	modDesc = "module to enable/disable camera animations and/or effects. NOTE: THE GAME WILL BE UNRESPONSIVE FOR A WHILE WHEN YOU CHOOSE 'RESET CURRENT MENU'",
	modCategory = {"Gameplay", "Camera" },
	modAuthor = "Grapjasss",
}


function this.ModMenu()
  return
  {
    {
      options=
      {
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="CqcSoundEffect",
          name="Sound Effect CQC",
          desc="toggle CQC disarm and combo finished sounds fx.",
          default=0,
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="CameraEffectShake",
          name="Camera Shake",
          desc="Affects the camera shake effect when you get fall damage for example.",
          default=0,
        },
        {
          var="CameraEffectShakeLevel",
          name="Camera Shake Level Multiplier",
          desc="Intensity of the Shake effect. Default = 1",
          default=1,
          number={min=0,max=100,inc=0.01},
        },
        {
          var="CameraEffectShakeDuration",
          name="Camera Shake Duration Multiplier",
          desc="Duration of the Shake effect. Default = 1",
          default=1,
          number={min=0,max=100,inc=0.01},
        },
        {
          var="CameraEffectShakeDecayRate",
          name="Camera Shake Decay Rate Multiplier",
          desc="Controls how fast the effect decays. Default = 1",
          default=1,
          number={min=0,max=100,inc=0.01},
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="CameraEffectFocus",
          name="Camera Focus",
          desc="Affects the camera focus effect during curing gunshot wounds for example.",
          default=0,
        },
        {
          var="CameraEffectFocusAperture",
          name="Camera Focus Aperture Multiplier",
          desc="Aperture provides two main functions. One is to control exposure. The other is to adjust the depth of field and the image sharpness. A large aperture reduces the depth of field, adding softness to the background. Default = 1",
          default=1,
          number={min=0,max=100,inc=0.01},
        },
        {
          var="CameraEffectFocusDistance",
          name="Camera Focus Distance Multiplier",
          desc="Focus distance. Default = 1",
          default=1,
          number={min=0,max=100,inc=0.01},
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="CameraSlowMotion",
          name="Camera Slow Motion",
          desc="Slow motion effect. Reverted to vanilla during FOB.",
          default=0,
        },
        {
          var="CameraSlowMotionDuration",
          name="Camera Slow Motion Duration Multiplier",
          desc="Duration of the slow motion effects for both the player and the world. Reverted to vanilla during FOB. Default = 1",
          default=1,
          number={min=0,max=100,inc=0.01},
        },
        {
          var="CameraWorldSlowMotionSpeed",
          name="Camera World Slow Motion Speed Multiplier",
          desc="World sense of time during slow motion. You can also speed up time instead, if the multiplier is high enough. Reverted to vanilla during FOB. Lower values means a stronger slow-mo effect. Default = 1",
          default=1,
          number={min=0,max=100,inc=0.01},
        },
        {
          var="CameraPlayerSlowMotionSpeed",
          name="Camera Player Slow Motion Speed Multiplier",
          desc="Player sense of time during slow motion. You can also speed up time instead, if the multiplier is high enough. Affects horse and possibly other buddies too. Reverted to vanilla during FOB. Lower values means a stronger slow-mo effect. Default = 1",
          default=1,
          number={min=0,max=100,inc=0.01},
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="CqcStandThrowFront",
          name="CqcStandThrowFront",
          desc="CqcStandThrowFront",
          default=0,
        },
        {
          var="CqcStandThrowRight",
          name="CqcStandThrowRight",
          desc="CqcStandThrowRight",
          default=0,
        },
        {
          var="CqcStandThrowBack",
          name="CqcStandThrowBack",
          desc="CqcStandThrowBack",
          default=0,
        },
        {
          var="CqcStandThrowLeft",
          name="CqcStandThrowLeft",
          desc="CqcStandThrowLeft",
          default=0,
        },
        {
          var="CqcBehindThrowStandFrontLeft",
          name="CqcBehindThrowStandFrontLeft",
          desc="CqcBehindThrowStandFrontLeft",
          default=0,
        },
        {
          var="CqcBehindThrowStandFrontRight",
          name="CqcBehindThrowStandFrontRight",
          desc="CqcBehindThrowStandFrontRight",
          default=0,
        },
        {
          var="CqcBehindThrowStandBackLeft",
          name="CqcBehindThrowStandBackLeft",
          desc="CqcBehindThrowStandBackLeft",
          default=0,
        },
        {
          var="CqcBehindThrowStandBackRight",
          name="CqcBehindThrowStandBackRight",
          desc="CqcBehindThrowStandBackRight",
          default=0,
        },
        {
          var="CqcBehindThrowSquatFrontLeft",
          name="CqcBehindThrowSquatFrontLeft",
          desc="CqcBehindThrowSquatFrontLeft",
          default=0,
        },
        {
          var="CqcBehindThrowSquatFrontRight",
          name="CqcBehindThrowSquatFrontRight",
          desc="CqcBehindThrowSquatFrontRight",
          default=0,
        },
        {
          var="CqcBehindThrowSquatBackLeft",
          name="CqcBehindThrowSquatBackLeft",
          desc="CqcBehindThrowSquatBackLeft",
          default=0,
        },
        {
          var="CqcBehindThrowSquatBackRight",
          name="CqcBehindThrowSquatBackRight",
          desc="CqcBehindThrowSquatBackRight",
          default=0,
        },
        {
          var="CqcBehindCovetThrowSquatLeft",
          name="CqcBehindCovetThrowSquatLeft",
          desc="CqcBehindCovetThrowSquatLeft",
          default=0,
        },
        {
          var="CqcBehindCovetThrowSquatRight",
          name="CqcBehindCovetThrowSquatRight",
          desc="CqcBehindCovetThrowSquatRight",
          default=0,
        },
        {
          var="CqcSeizeThrowFront",
          name="CqcSeizeThrowFront",
          desc="CqcSeizeThrowFront",
          default=0,
        },
        {
          var="CqcSeizeThrowBack",
          name="CqcSeizeThrowBack",
          desc="CqcSeizeThrowBack",
          default=0,
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="CqcLadderFront",
          name="CqcLadderFront",
          desc="CqcLadderFront",
          default=0,
        },
        {
          var="CqcLadderBack",
          name="CqcLadderBack",
          desc="CqcLadderBack",
          default=0,
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="CqcSnatchAssaultLeft",
          name="CqcSnatchAssaultLeft",
          desc=" Reverted to vanilla during FOB.",
          default=0,
        },
        {
          var="CqcSnatchAssaultRight",
          name="CqcSnatchAssaultRight",
          desc=" Reverted to vanilla during FOB.",
          default=0,
        },
        {
          var="CqcComboFinishBack",
          name="CqcComboFinishBack",
          desc="CqcComboFinishBack",
          default=0,
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="CounterToKnife",
          name="CounterToKnife",
          desc="CounterToKnife",
          default=0,
        },
        {
          var="CounterToGunStrike",
          name="CounterToGunStrike",
          desc="CounterToGunStrike",
          default=0,
        },
        {
          var="CounterToLiquidAttack1",
          name="CounterToLiquidAttack1",
          desc="CounterToLiquidAttack1",
          default=0,
        },
        {
          var="CounterToLiquidAttack2",
          name="CounterToLiquidAttack2",
          desc="CounterToLiquidAttack2",
          default=0,
        },
        {
          var="CounterToLiquidJumpAttack",
          name="CounterToLiquidJumpAttack",
          desc="CounterToLiquidJumpAttack",
          default=0,
        },
        {
          var="CounterToLiquidStrike",
          name="CounterToLiquidStrike",
          desc="CounterToLiquidStrike",
          default=0,
        },
        {
          var="CounterToParasiteFogMacheteA",
          name="CounterToParasiteFogMacheteA",
          desc="CounterToParasiteFogMacheteA",
          default=0,
        },
        {
          var="CounterToParasiteFogMacheteB",
          name="CounterToParasiteFogMacheteB",
          desc="CounterToParasiteFogMacheteB",
          default=0,
        },
        {
          var="CounterToParasiteCommonMachete",
          name="CounterToParasiteCommonMachete",
          desc="CounterToParasiteCommonMachete",
          default=0,
        },
        {
          var="CounterToParasiteHardMacheteA",
          name="CounterToParasiteHardMacheteA",
          desc="CounterToParasiteHardMacheteA",
          default=0,
        },
        {
          var="CounterToParasiteHardMacheteB",
          name="CounterToParasiteHardMacheteB",
          desc="CounterToParasiteHardMacheteB",
          default=0,
        },
        {
          var="CounterToParasiteCmoufMacheteA",
          name="CounterToParasiteCmoufMacheteA",
          desc="CounterToParasiteCmoufMacheteA",
          default=0,
        },
        {
          var="CounterToParasiteCmoufMacheteB",
          name="CounterToParasiteCmoufMacheteB",
          desc="CounterToParasiteCmoufMacheteB",
          default=0,
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="CureGunShotWoundBodyLeft",
          name="CureGunShotWoundBodyLeft",
          desc="CureGunShotWoundBodyLeft",
          default=0,
        },
        {
          var="CureGunShotWoundBodyRight",
          name="CureGunShotWoundBodyRight",
          desc="CureGunShotWoundBodyRight",
          default=0,
        },
        {
          var="CureGunShotWoundBodyCrawl",
          name="CureGunShotWoundBodyCrawl",
          desc="CureGunShotWoundBodyCrawl",
          default=0,
        },
        {
          var="CureGunShotWoundBodySupine",
          name="CureGunShotWoundBodySupine",
          desc="CureGunShotWoundBodySupine",
          default=0,
        },
        {
          var="CureArmDislocationStand",
          name="CureArmDislocationStand",
          desc="CureArmDislocationStand",
          default=0,
        },
        {
          var="CureArmDislocationSquat",
          name="CureArmDislocationSquat",
          desc="CureArmDislocationSquat",
          default=0,
        },
        {
          var="CureFootDislocation",
          name="CureFootDislocation",
          desc="CureFootDislocation",
          default=0,
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="RideOnHorseFrontRight",
          name="RideOnHorseFrontRight",
          desc="RideOnHorseFrontRight",
          default=0,
        },
        {
          var="RideOnHorseSideRight",
          name="RideOnHorseSideRight",
          desc="RideOnHorseSideRight",
          default=0,
        },
        {
          var="RideOnHorseBackRight",
          name="RideOnHorseBackRight",
          desc="RideOnHorseBackRight",
          default=0,
        },
        {
          var="RideOnHorseFrontLeft",
          name="RideOnHorseFrontLeft",
          desc="RideOnHorseFrontLeft",
          default=0,
        },
        {
          var="RideOnHorseSideLeft",
          name="RideOnHorseSideLeft",
          desc="RideOnHorseSideLeft",
          default=0,
        },
        {
          var="RideOnHorseBackLeft",
          name="RideOnHorseBackLeft",
          desc="RideOnHorseBackLeft",
          default=0,
        },
        {
          var="RideOnHorseRun",
          name="RideOnHorseRun",
          desc="RideOnHorseRun",
          default=0,
        },
        {
          var="PlaceBearersHorseLeft",
          name="PlaceBearersHorseLeft",
          desc="PlaceBearersHorseLeft",
          default=0,
        },
        {
          var="PlaceBearersHorseRight",
          name="PlaceBearersHorseRight",
          desc="PlaceBearersHorseRight",
          default=0,
        },
        {
          var="LowerBearersHorseLeft",
          name="LowerBearersHorseLeft",
          desc="LowerBearersHorseLeft",
          default=0,
        },
        {
          var="LowerBearersHorseRight",
          name="LowerBearersHorseRight",
          desc="LowerBearersHorseRight",
          default=0,
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="RideOnWalkerGear",
          name="RideOnWalkerGear",
          desc="RideOnWalkerGear",
          default=0,
        },
        {
          var="CarryAtWalkerGear",
          name="CarryAtWalkerGear",
          desc="CarryAtWalkerGear",
          default=0,
        },
        {
          var="WalkerGearCQCStand",
          name="WalkerGearCQCStand",
          desc="WalkerGearCQCStand",
          default=0,
        },
        {
          var="WalkerGearCQCSquat",
          name="WalkerGearCQCSquat",
          desc="WalkerGearCQCSquat",
          default=0,
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="RideOnVehicle",
          name="RideOnVehicle",
          desc="RideOnVehicle",
          default=0,
        },
        {
          var="RideOnVehicleFromAssistantDriversSeat",
          name="RideOnVehicleFromAssistantDriversSeat",
          desc="RideOnVehicleFromAssistantDriversSeat",
          default=0,
        },
        {
          var="PlaceBearersVehicleToAssistantDriversSeat",
          name="PlaceBearersVehicleToAssistantDriversSeat",
          desc="PlaceBearersVehicleToAssistantDriversSeat",
          default=0,
        },
        {
          var="LowerBearersVehicleFromAssistantDriversSeat",
          name="LowerBearersVehicleFromAssistantDriversSeat",
          desc="LowerBearersVehicleFromAssistantDriversSeat",
          default=0,
        },
        {
          var="PlaceBearersVehicleFromLeftSideToRearSeatLeft",
          name="PlaceBearersVehicleFromLeftSideToRearSeatLeft",
          desc="PlaceBearersVehicleFromLeftSideToRearSeatLeft",
          default=0,
        },
        {
          var="LowerBearersVehicleFromLeftSideToRearSeatLeft",
          name="LowerBearersVehicleFromLeftSideToRearSeatLeft",
          desc="LowerBearersVehicleFromLeftSideToRearSeatLeft",
          default=0,
        },
        {
          var="PlaceBearersVehicleFromRightSideToRearSeatRight",
          name="PlaceBearersVehicleFromRightSideToRearSeatRight",
          desc="PlaceBearersVehicleFromRightSideToRearSeatRight",
          default=0,
        },
        {
          var="LowerBearersVehicleFromRightSideToRearSeatRight",
          name="LowerBearersVehicleFromRightSideToRearSeatRight",
          desc="LowerBearersVehicleFromRightSideToRearSeatRight",
          default=0,
        },
        {
          var="PlaceBearersVehicleFromBackToRearSeatRight",
          name="PlaceBearersVehicleFromBackToRearSeatRight",
          desc="PlaceBearersVehicleFromBackToRearSeatRight",
          default=0,
        },
        {
          var="LowerBearersVehicleFromBackToRearSeatRight",
          name="LowerBearersVehicleFromBackToRearSeatRight",
          desc="LowerBearersVehicleFromBackToRearSeatRight",
          default=0,
        },
        {
          var="PlaceBearersVehicleFromBackToRearSeatLeft",
          name="PlaceBearersVehicleFromBackToRearSeatLeft",
          desc="PlaceBearersVehicleFromBackToRearSeatLeft",
          default=0,
        },
        {
          var="LowerBearersVehicleFromBackToRearSeatLeft",
          name="LowerBearersVehicleFromBackToRearSeatLeft",
          desc="LowerBearersVehicleFromBackToRearSeatLeft",
          default=0,
        },
        {
          var="RideOnTruck",
          name="RideOnTruck",
          desc="RideOnTruck",
          default=0,
        },
        {
          var="RideOnTruckFromAssistantDriversSeat",
          name="RideOnTruckFromAssistantDriversSeat",
          desc="RideOnTruckFromAssistantDriversSeat",
          default=0,
        },
        {
          var="PlaceBearersTruckFromLeftSideToRearSeatLeft",
          name="PlaceBearersTruckFromLeftSideToRearSeatLeft",
          desc="PlaceBearersTruckFromLeftSideToRearSeatLeft",
          default=0,
        },
        {
          var="LowerBearersTruckFromBackToRearSeatRight",
          name="LowerBearersTruckFromBackToRearSeatRight",
          desc="LowerBearersTruckFromBackToRearSeatRight",
          default=0,
        },
        {
          var="RideOnArmoredVehicleWest",
          name="RideOnArmoredVehicleWest",
          desc="RideOnArmoredVehicleWest",
          default=0,
        },
        {
          var="RideOnArmoredVehicleEast",
          name="RideOnArmoredVehicleEast",
          desc="RideOnArmoredVehicleEast",
          default=0,
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="RideOnHelicopter",
          name="RideOnHelicopter",
          desc="RideOnHelicopter",
          default=0,
        },
        {
          var="GiveCharaterRideHelicopter",
          name="GiveCharaterRideHelicopter",
          desc="GiveCharaterRideHelicopter",
          default=0,
        },
        {
          var="GiveCharaterRideHelicopterAndRideOn",
          name="GiveCharaterRideHelicopterAndRideOn",
          desc="GiveCharaterRideHelicopterAndRideOn",
          default=0,
        },
        {
          var="MissionStartOnHeli",
          name="MissionStartOnHeli",
          desc="MissionStartOnHeli",
          default=0,
        },
        {
          var="MissionStartOnHeli2",
          name="MissionStartOnHeli2",
          desc="MissionStartOnHeli2",
          default=0,
        },
        {
          var="MissionStartOnHeli3",
          name="MissionStartOnHeli3",
          desc="MissionStartOnHeli3",
          default=0,
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="GoInsideCBox",
          name="GoInsideCBox",
          desc="GoInsideCBox",
          default=0,
        },
        {
          var="GoInsideTrashBox",
          name="GoInsideTrashBox",
          desc="GoInsideTrashBox",
          default=0,
        },
        {
          var="GetOutTrashBox",
          name="GetOutTrashBox",
          desc="GetOutTrashBox",
          default=0,
        },
        {
          var="CqcDragToTrashBox",
          name="CqcDragToTrashBox",
          desc="CqcDragToTrashBox",
          default=0,
        },
        {
          var="GoInsideTrashBoxCarryBoth",
          name="GoInsideTrashBoxCarryBoth",
          desc="GoInsideTrashBoxCarryBoth",
          default=0,
        },
        {
          var="GoInsideTrashBoxCarry",
          name="GoInsideTrashBoxCarry",
          desc="GoInsideTrashBoxCarry",
          default=0,
        },
        {
          var="GetOutTrashBoxCarry",
          name="GetOutTrashBoxCarry",
          desc="GetOutTrashBoxCarry",
          default=0,
        },
        {
          var="GoInsideToilet",
          name="GoInsideToilet",
          desc="GoInsideToilet",
          default=0,
        },
        {
          var="GoInsideToiletCarryBoth",
          name="GoInsideToiletCarryBoth",
          desc="GoInsideToiletCarryBoth",
          default=0,
        },
        {
          var="CloseToiletDoor",
          name="CloseToiletDoor",
          desc="CloseToiletDoor",
          default=0,
        },
        {
          var="TakeOutFromToilet",
          name="TakeOutFromToilet",
          desc="TakeOutFromToilet",
          default=0,
        },
        {
          var="GoInsideShower",
          name="GoInsideShower",
          desc="GoInsideShower",
          default=0,
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="StartCliffClimb",
          name="StartCliffClimb",
          desc="StartCliffClimb",
          default=0,
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="WolfAttackStandFront",
          name="WolfAttackStandFront",
          desc="WolfAttackStandFront",
          default=0,
        },
        {
          var="WolfAttackStandBack",
          name="WolfAttackStandBack",
          desc="WolfAttackStandBack",
          default=0,
        },
        {
          var="WolfAttackCrawlFront",
          name="WolfAttackCrawlFront",
          desc="WolfAttackCrawlFront",
          default=0,
        },
        {
          var="WolfAttackCrawlBack",
          name="WolfAttackCrawlBack",
          desc="WolfAttackCrawlBack",
          default=0,
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
        {
          var="PazPhantomPainPassPhotos",
          name="PazPhantomPainPassPhotos",
          desc="PazPhantomPainPassPhotos",
          default=0,
        },
        {
          var="PazPhantomPainPickUpBook",
          name="PazPhantomPainPickUpBook",
          desc="PazPhantomPainPickUpBook",
          default=0,
        },
        {
          var="Seperator",
          name="----------------------------------------------------------------------",
          desc="serves as a text seperator, does nothing",
          default=0,
        },
      }
    }
  }
end

function this.TppPlayer2CallbackScript(callBackScript)

  local optionVariables=this.ModMenu()[1].options

  SetCameraNoiseEndCarry=
  function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    if this.ZVar("CameraEffectShake") >= 1 then
      local levelX=.25*this.ZVar("CameraEffectShakeLevel")
      local levelY=.25*this.ZVar("CameraEffectShakeLevel")
      local time=.15*this.ZVar("CameraEffectShakeDuration")
      local decayRate=.05*this.ZVar("CameraEffectShakeDecayRate")
      Player.RequestToSetCameraNoise{levelX=levelX,levelY=levelY,time=time,decayRate=decayRate}
    end
  end

  SetCameraNoiseOnMissileFire=
  function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    if this.ZVar("CameraEffectShake") >= 1 then
      local levelX=.5*this.ZVar("CameraEffectShakeLevel")
      local levelY=.5*this.ZVar("CameraEffectShakeLevel")
      local time=.75*this.ZVar("CameraEffectShakeDuration")
      local decayRate=.08*this.ZVar("CameraEffectShakeDecayRate")
      Player.RequestToSetCameraNoise{levelX=levelX,levelY=levelY,time=time,decayRate=decayRate}
    end
  end

  SetCameraNoiseOnRideOnAntiAircraftGun=
  function(unkP1,unkP2,unkP3,unkP4,unkP5,level,time,unkP8,fileSet,unkP10,unkP11)
    if this.ZVar("CameraEffectShake") >= 1 then
      local levelX=.2*this.ZVar("CameraEffectShakeLevel")
      local levelY=.2*this.ZVar("CameraEffectShakeLevel")
      local time=.3*this.ZVar("CameraEffectShakeDuration")
      local decayRate=.08*this.ZVar("CameraEffectShakeDecayRate")
      Player.RequestToSetCameraNoise{levelX=levelX,levelY=levelY,time=time,decayRate=decayRate}
    end
  end

  SetHighSpeeCameraOnCQCComboFinish=
  function()
    if this.ZVar("CqcSoundEffect") >= 1 then
      TppSoundDaemon.PostEvent"sfx_s_highspeed_cqc"
    end
    callBackScript._SetHighSpeedCamera(.6,.03)
  end

  SetHighSpeeCameraAtCQCSnatchWeapon=function()
    if this.ZVar("CqcSoundEffect") >= 1 then
      TppSoundDaemon.PostEvent"sfx_s_highspeed_cqc"
    end
    callBackScript._SetHighSpeedCamera(1,.1)
  end

  callBackScript._StartCameraAnimation=
  function(unkP1,unkP2,fileSet,_recoverPreOrientation,ignoreCollisionCheckOnStart,unkP6,isRiding,unkP7)
    callBackScript._SetCameraNoise(0.1, 0.1, 0.1, 0.1)
    for key, value in pairs(optionVariables) do
      if (StringId.IsEqual(fileSet, value.var)) then
        -- TppUiCommand.AnnounceLogView("option: "..tostring(key)..", var: "..tostring(value.var)..", value: "..tostring(this.ZVar(value.var))) -- log option + variable + value. log message qeueue seems to be capped at 100(?)
        local startFrame=(unkP2-unkP1)+unkP6
        local recoverPreOrientation=_recoverPreOrientation
        if ((StringId.IsEqual(fileSet,"CureGunShotWoundBodyLeft") or StringId.IsEqual(fileSet,"CureGunShotWoundBodyRight") or StringId.IsEqual(fileSet,"CureGunShotWoundBodyCrawl") or StringId.IsEqual(fileSet,"CureGunShotWoundBodySupine")) and this.ZVar("CameraEffectFocus") >= 1) then
            Player.SetFocusParamForCameraAnimation{aperture=3*this.ZVar("CameraEffectFocusAperture"),focusDistance=.6*this.ZVar("CameraEffectFocusDistance")}
        end
        if (TppMission.IsFOBMission(vars.missionCode) and StringId.IsEqual(fileSet,"CqcSnatchAssaultLeft") or StringId.IsEqual(fileSet,"CqcSnatchAssaultRight")) or this.ZVar(value.var) >= 1 then
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

  callBackScript._StartCameraAnimationUseFileSetName=
  function(unkP1,unkP2,fileSetName,_recoverPreOrientation,ignoreCollisionCheckOnStart)
    for key, value in pairs(optionVariables) do
      if (StringId.IsEqual(fileSetName, value.var)) then
        local startFrame=unkP2-unkP1
        local recoverPreOrientation=_recoverPreOrientation
        if (fileSetName=="CqcSnatchAssaultRight" or fileSetName=="CqcSnatchAssaultLeft" and this.ZVar("CameraEffectFocus") >= 1)then
          Player.SetFocusParamForCameraAnimation{aperture=20*this.ZVar("CameraEffectFocusAperture")}
        end
        if (TppMission.IsFOBMission(vars.missionCode) and fileSetName=="CqcSnatchAssaultRight" or fileSetName=="CqcSnatchAssaultLeft") or this.ZVar(value.var) >= 1 then  -- use default during FOB, causes desyncs
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
  end

  callBackScript._SetHighSpeedCamera=
  function(decayRate,timeRate)
    if TppMission.IsFOBMission(vars.missionCode) then -- use default during FOB
      HighSpeedCamera.RequestEvent{
        continueTime=decayRate,
        worldTimeRate=timeRate,
        localPlayerTimeRate=timeRate,
        timeRateInterpTimeAtStart=0,
        timeRateInterpTimeAtEnd=0,
        cameraSetUpTime=0
      }
    elseif this.ZVar("CameraSlowMotion") >= 1 then
      HighSpeedCamera.RequestEvent{
        continueTime=decayRate*this.ZVar("CameraSlowMotionDuration"),
        worldTimeRate=timeRate*this.ZVar("CameraWorldSlowMotionSpeed"),
        localPlayerTimeRate=timeRate*this.ZVar("CameraPlayerSlowMotionSpeed"),
        timeRateInterpTimeAtStart=0,
        timeRateInterpTimeAtEnd=0,
        cameraSetUpTime=0
      }
    end
  end

  callBackScript._SetCameraNoise=
  function(levelX,levelY,time,decay)
      local _levelX=levelX
      local _levelY=levelY
      local _time=time
      local decayRate=.15
      if this.ZVar("CameraEffectShake") >= 1 then
        Player.RequestToSetCameraNoise{levelX=_levelX*this.ZVar("CameraEffectShakeLevel"),levelY=_levelY*this.ZVar("CameraEffectShakeLevel"),time=_time*this.ZVar("CameraEffectShakeDuration"),decayRate=decayRate*this.ZVar("CameraEffectShakeDecayRate")}
      end
  end

end

return this