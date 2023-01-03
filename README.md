# Nuke Camera Animations and Effects
Takes care of the annoying camera highjacking and ugly camera effects during certain events, while you could much better use that time to look around to consider your next move.

One of the events was horse mounting for example. It locks your camera for 2 to 3 seconds to a weird and useless angle and zoom level. It also made moving the horse during that time unpredictable and just made up for bad situations altogether. The removed result is the following vid;
[![Showcase horse mount event with the mod](https://img.youtube.com/vi/jz8UZtkQTgk/0.jpg)](https://www.youtube.com/watch?v=jz8UZtkQTgk)

In total, 98 camera animations, 3 visual effects and 1 sound effect have been nuked.

<details> 
  <summary> General nuke list </summary>
  
- `Camera effects` blur, noise during the animations below.
- `Camera sound effect` during animations below.
- `CQC Camera animations` combos, disarm, counterattacks, throws, etc.
- `Curing wounds camera animations`
- `Horse camera animations` mounting (seriously wtf), placing on back etc.
- `Walker camera animations` mounting, picking up, cqc etc.
- `Vehicle camera animations` enter/exit, placing people, enter as passenger etc.
- `Entering/exiting objects camera animations` Toilets, trashbox, lockers, showers, placing people in them etc.
- `Cliffclimbing camera animation` the initial step had a camera animation.
- `Animal attacks camera animations`
</details>


<details> 
  <summary> Full nuke list </summary>

- `cameraEffects` removes effects like blur and noise during the animations below
- `cameraSoundEffect` CQC combo finish and Disarm dramatic sound effects.
- `cameraSlowMotion` removes the slow motion camera during the animations below
- `CqcStandThrowFront`
- `CqcStandThrowRight`
- `CqcStandThrowBack`
- `CqcStandThrowLeft`
- `CqcBehindThrowStandFrontLeft`
- `CqcBehindThrowStandFrontRight`
- `CqcBehindThrowStandBackLeft`
- `CqcBehindThrowStandBackRight`
- `CqcBehindThrowSquatFrontLeft`
- `CqcBehindThrowSquatFrontRight`
- `CqcBehindThrowSquatBackLeft`
- `CqcBehindThrowSquatBackRight`
- `CqcBehindCovetThrowSquatLeft`
- `CqcBehindCovetThrowSquatRight`
- `CqcSeizeThrowFront`
- `CqcSeizeThrowBack`
- `CqcLadderFront`
- `CqcLadderBack`
- `CqcSnatchAssaultLeft`
- `CqcSnatchAssaultRight`
- `CqcComboFinishBack`
- `CounterToKnife`
- `CounterToGunStrike`
- `CounterToLiquidAttack1`
- `CounterToLiquidAttack2`
- `CounterToLiquidJumpAttack`
- `CounterToLiquidStrike`
- `CounterToParasiteFogMacheteA`
- `CounterToParasiteFogMacheteB`
- `CounterToParasiteCommonMachete`
- `CounterToParasiteHardMacheteA`
- `CounterToParasiteHardMacheteB`
- `CounterToParasiteCmoufMacheteA`
- `CounterToParasiteCmoufMacheteB`
- `CureGunShotWoundBodyLeft`
- `CureGunShotWoundBodyRight`
- `CureGunShotWoundBodyCrawl`
- `CureGunShotWoundBodySupine`
- `CureArmDislocationStand`
- `CureArmDislocationSquat`
- `CureFootDislocation`
- `RideOnHorseFrontRight`
- `RideOnHorseSideRight`
- `RideOnHorseBackRight`
- `RideOnHorseFrontLeft`
- `RideOnHorseSideLeft`
- `RideOnHorseBackLeft`
- `RideOnHorseRun`
- `PlaceBearersHorseLeft`
- `PlaceBearersHorseRight`
- `LowerBearersHorseLeft`
- `LowerBearersHorseRight`
- `RideOnWalkerGear`
- `CarryAtWalkerGear`
- `WalkerGearCQCStand`
- `WalkerGearCQCSquat`
- `RideOnVehicle`
- `RideOnVehicleFromAssistantDriversSeat`
- `PlaceBearersVehicleToAssistantDriversSeat`
- `LowerBearersVehicleFromAssistantDriversSeat`
- `PlaceBearersVehicleFromLeftSideToRearSeatLeft`
- `LowerBearersVehicleFromLeftSideToRearSeatLeft`
- `PlaceBearersVehicleFromRightSideToRearSeatRight`
- `LowerBearersVehicleFromRightSideToRearSeatRight`
- `PlaceBearersVehicleFromBackToRearSeatRight`
- `LowerBearersVehicleFromBackToRearSeatRight`
- `PlaceBearersVehicleFromBackToRearSeatLeft`
- `LowerBearersVehicleFromBackToRearSeatLeft`
- `RideOnTruck`
- `RideOnTruckFromAssistantDriversSeat`
- `PlaceBearersTruckFromLeftSideToRearSeatLeft`
- `LowerBearersTruckFromBackToRearSeatRight`
- `RideOnArmoredVehicleWest`
- `RideOnArmoredVehicleEast`
- `RideOnHelicopter`
- `GiveCharaterRideHelicopter`
- `GiveCharaterRideHelicopterAndRideOn`
- `MissionStartOnHeli`
- `MissionStartOnHeli2`
- `MissionStartOnHeli3`
- `GoInsideCBox`
- `GoInsideTrashBox`
- `GetOutTrashBox`
- `CqcDragToTrashBox`
- `GoInsideTrashBoxCarryBoth`
- `GoInsideTrashBoxCarry`
- `GetOutTrashBoxCarry`
- `GoInsideToilet`
- `GoInsideToiletCarryBoth`
- `CloseToiletDoor`
- `TakeOutFromToilet`
- `GoInsideShower`
- `StartCliffClimb`
- `WolfAttackStandFront`
- `WolfAttackStandBack`
- `WolfAttackCrawlFront`
- `WolfAttackCrawlBack`
- `PazPhantomPainPassPhotos`
- `PazPhantomPainPickUpBook`

</details>

## INSTALLATION
[Snakebite](https://www.nexusmods.com/metalgearsolidvtpp/mods/106) is required to install the `.MGSV` file. Place the optional [NCAESettings.lua](https://github.com/Grapjas93/MSGV-Nuke-Camera-Animations-and-Effects/files/10336605/NCAESettings.zip)
file in the game directory where the .exe is. This way you can customize the mod to your liking. You can open the file with notepad. When you save the file the settings are automatically updated ingame, no restart required. Without the file the mod will nuke all by default.

## COMPATIBILITY
The mod should be pretty compatible across the board. The only file that i modify is:
```	
/Assets/tpp/level_asset/chara/player/game_object/TppPlayer2CallbackScript.lua
```
## LINKS
[Nexusmods](https://www.nexusmods.com/metalgearsolidvtpp/mods/1575/) | [BuyMeACoffee](https://www.buymeacoffee.com/grapjas93)
