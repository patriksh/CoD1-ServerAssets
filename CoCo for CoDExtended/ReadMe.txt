/*
    The MIT License (MIT)

    Copyright (c) 2016 Indy

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    More information can be acquired at https://opensource.org/licenses/MIT
*/

CoDaM CoDCommands ( CoCo ) by Indy
==================================================================================================
Features:
- In Game Commands: no more having to look through Rcontool to execute commands!
- Permissions for users
- Multiple Groups: Guest, VIP, Moderator, Admin, God
- Partial Name Matching: for commands that require ID input, admins can insert a part of target's name instead of ID!
- Safer servers: by seperating rcon and admin passwords, server owners can safely share their adminPassword to those they trust
- Updated CoDExtended ( Stable v20 )
- Suffixes for groups 
- CoDaM and custom gametype compatibility
- Customizable: Wide array of cvars to edit-> Modders can even add custom commands to fit their needs; possibilities are endless ;)
==================================================================================================
*** TO USE THE MOD WITH CUSTOM/DEFAULT GAMETYPE, PLEASE READ INSTRUCTIONS IN CUSTOM\COMMANDS.GSC ***
==================================================================================================
*** Custom CoDExtended REQUIRED ***
* Modders can add or edit more commands in custom/commands.gsc
==================================================================================================
Instructions for CoDaM:
1. Install Custom CodExtended -> Provided with download in CoDExtended/codextended.so
        Instructions: https://github.com/iindy/CoDExtended#usage
2. Put __CoDaM_CoDCommands.pk3 in main
3. Open Codam\modlist.gsc and register the mod:
	[[ register ]]( "CoCo - CodCommands - Indy", codam\coco::main);
4. [OPTIONAL] Adding new commands:
   * Follow instructions in custom\commands.gsc
5. Add exec CoCo.cfg in "dedicated.cfg" and modify the CoCo config file to your liking!
6. Run server- distribute appropriate passwords to group members
7. Groups and Members can now login with !login
===================================================================================================
Instructions for Custom or Default gametypes:
- Check github for instructions: https://github.com/iindy/CoDCommands
===================================================================================================
Updates:
- Check github or forum thread for latest updates: https://github.com/iindy/CoDCommands
===================================================================================================
All questions and bugs should be directed to the forum thread
					OR
Contact me on Steam: http://steamcommunity.com/id/indyanz/
===================================================================================================
List of Commands:

Guest Commands
- !login        
- !help        
- !alias      
- !tell      
- !reply      
- !name 

VIP Commands      
- !fuck       
- !poke       
- !trout       
- !rainbow 

Mod Commands
- !status
- !mute
- !unmute
- !warn

Admin Commands
- !say
- !shout       
- !slap        
- !spank          
- !kick      
- !kill            
- !endgame 
- !forcespec   
- !giveweap   
- !drop
- !blind
- !runover
- !squash
- !insult
- !rape
- !restart
- !map
- !noclan
- !swapteams
- !swapclans
- !axisclan
- !alliedclan
- !disarm
- !matrix
- !force
- !forcespec
- !burn
- !explode
- !mortar
- !cow
- !teamlock
- !teamunlock
- !matchsetup
- !matchstart
- !matchstop
- !forcevote

God Commands 
- !resetlogins 
- !resetplayer 
- !resetgroup 