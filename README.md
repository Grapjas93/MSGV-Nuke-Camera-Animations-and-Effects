# Nuke Camera Animations and Effects
This is a mod for Metal Gear Solid: The Phantom Pain, [Snakebite](https://www.nexusmods.com/metalgearsolidvtpp/mods/106) is required to install. Check the [Nexus](https://www.nexusmods.com/metalgearsolidvtpp/mods/1575) page for more info.

Takes care of the annoying camera highjacking and ugly camera effects during certain events, while you could much better use that time to look around to consider your next move.

One of the events was horse mounting for example. It locks your camera for 2 to 3 seconds to a weird and useless angle and zoom level. It also made moving the horse during that time unpredictable and just made up for bad situations altogether. The removed result is the following vid;
[![Showcase horse mount event with the mod](https://img.youtube.com/vi/jz8UZtkQTgk/0.jpg)](https://www.youtube.com/watch?v=jz8UZtkQTgk)


## COMPATABILITY
There are compatible versions available for [Infinite Heaven](https://www.nexusmods.com/metalgearsolidvtpp/mods/45) and [The Ultimate Phantom Pain Mod](https://www.nexusmods.com/metalgearsolidvtpp/mods/188), they each have their own branch. 


Are you a mod creator and want to make it compatible with mine? You should only be concerned if you use the Tpp.lua script file. if so add the following 2 lines to it in the requires variable up top:
```	
"/Assets/tpp/script/lib/NCAE.lua",
"/Assets/tpp/script/lib/NCAESettings.lua"
```
And instruct people to install your mod after mine and to ignore conflicts, its intended. Do note that uninstalling either mod requires a reinstall of the one thats left.
