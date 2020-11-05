////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
//   	    __
//        //_\\
//       //   \\ W E   For Cod 1.1
//   ----------------------------------------------				
//   M                     O                      D
//
//                             
//    CREATED BY BELL    
//             
//    MODIFIED FOR COD 1.1 BY Indy  
//
////////////////////////////////////////////////////////////

INFO
====
This is a serversided modification for AWE Mod to work with Cod 1.1.

*THIS IS ONLY SERVERSIDED. CLIENTSIDED IS NOT NEEDED.*
*CODAM MOD WILL NOT WORK WITH THIS.*

FEATURES
========

- Painscreens.
- Effects from Ravir's Demolition
  (Mortar Attacks, shellshock, hitblip and pain/death sounds)
* Taunts. (DOES NOT WORK
- Progressbar for grenade cooking.
- Override grenade count
* Grenade warnings ("Grenade!", "Fire in the hole!" etc.). (MAY NOT WORK)
- Force/disable weapons (for example: disable grenades, assign fg42 as 
  secondary weapon etc.)
* Helmet popping. DO NOT ENABLE
- Damaged helmets complete with bullet hole.
- Enhanced Bullet impact sounds.
- Weapon drop on hand/arm hit.
- Trip on foot and/or leg hit.
- Drop weapon using V Key.
- Drop health-pack for injured Players using V Key.
- Camping detection and marking of campers.
- Teamkill and/or teamdamage detection with different punishments.
- TeamBalance.
- C47 planes flying by on all stock maps and should work on most custom 
  maps too.
- Stukas.
- Random maprotation.
- Mapvote
- Parachuting.
- Spawn protection.
- Crosshair disabling.
- Laserdot.
- Disable minefields.
- Tracers.
- Skyflashes.
- Server messages.
- Namechecker. Automatically renames a namefakers name
- KD: Kill death ratio. 

Some features not working
- Killcam (VERY BUGGY)
- HEADPOP/PAINSOUNDS 
- HELMET POP
- Disable Freelook Spectating
- Disable spectating enemy players

NEW GAMETYPES ADDED:
V1.1:
Headquarters - hq
Capture the Flag - ctf
Conquest TDM - cnq
Demolition v0.96b - dem
Last Team Standing - lts
Hold the Flag - htf
Reinforced Search And Destroy - rsd
V1.2:
Gungame - gungame
Vanilla Kill Confirmed - kc 
AWE Kill Confirmed - akc
Jump - jump

ZIP MAP
=======
AWE v1.2.ZIP -
	* __awe_4_1.2.pk3 - THIS IS YOUR MAIN FILE 
	* __awe_4_1.2_no_nades.pk3 - THIS FILE REMOVES COOKED NADES
	
CFG'S FOLDER -
	* awe.cfg - YOUR MAIN AWE.CFG
	* gtcvars.cfg - SET YOUR GAMETYPE CVARS HERE
	* fog.cfg - FOG OPTIONS
	
README_FIRST.TXT

INSTALLATION
============
	TO INSTALL: just put in your myserver/main folder.
				add 'exec awe.cfg' in your server.cfg
	TO UNINSTALL: just take out of your Call of Duty/main folder.
				remove 'exec awe.cfg' in your server.cfg

	EXAMPLE cfg files are included in the 'cfg' folder

CHANGES and UPDATES
===================
1.0 - Initial release

1.01 - Fixed issues with CNQ gametype. Updated readme and .zip

1.2 - Added new gametypes: Gungame, Kill Confirmed, Behind Enemy Lines, Retrieval.
	- Fixed issues regarding could not load 'serverinfo_dm' and similiar problems in other gametypes
	- Fixed HQ, BEL, RE 'getguid' errors
	- Removed Headpop, helmet pop cvars from cfgs
	- Simplified all the cfg's. Easy to find things now :D
	- Added a Global KD Mod: It will track your kill/death ratio and print what it is.
	  Wont work with VANILLA KILL CONFIRMED
	- Fixed various bugs that I can't remember
	- and other stuff that I can't remember right now

TODO
====
In v1.3:
Add Domination gametype
Add more features for the server admin

CREDITS
=======
BELL - for original AWE mod
L4ZY - for his droptagTrigger used in Kill Confirmed
CHEESE and JONA - for helping me with KD feature
AND OTHERS
