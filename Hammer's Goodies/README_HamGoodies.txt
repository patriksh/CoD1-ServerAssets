                          HamGoodies - A CoDaM Plug-in

The HamGoodies CoDaM plug-in provides useful examples on integrating mod ideas
using the CoDaM framework.  This CoDaM-mod provides many interesting new
features that greatly enhance the CoD game play experience.

For additional information on the CoDaM project, please visit the CoDaM forums
hosted over at IW Nation (http://www.iwnation.com/Hosted/CoDaM/) and the release
notes at the end of this file.  CoDaM cvars descriptions available from:
http://www.iwnation.com/Hosted/CoDaM/cvars.php

                          HamMortars - A CoDaM Plug-in

Another example CoDaM plug-in.  This one allows assigning random explosions
to any point within a map.  Pre-configured positions are included targetting all mortar
bomb craters in stock maps.   Includes provision for additional placements.

                           HamRotor - A CoDaM Plug-in

A powerful map rotation plug-in for CoDaM.   Allows granular map control and
cvar settings per rotation entry.  Includes simplified configuration via cvar
aliasing (which helps reduce number of config settings), cvar expansion within
strings values (for dynamic cvar settings) and more.

                     HamGametypes - CoDaM Custom Gametypes

Gametype examples using the CoDaM framework.  Objective (obj), Roundbased-TDM
(rb) and multi-team configuration which allows using 2-4 teams on standard TDM,
DM and HQ gametypes.   All multi-team gametypes require client-side download
for proper operation.

--Hammer
CoDaM Team/Development Lead
hammer@iwnation.com
http://www.iwnation.com/Hosted/CoDaM/


Version Support:
_______________________________________________________________________________

  This plug-in is supported under the following framework:
  - CoDaM Version 1.3 and above
  - CoD Versions 1.1 - 1.4

Current Features:
_______________________________________________________________________________

o HamGoodies
  - Multi-file game log capability
  - Mechanism for adding action "key-code" sequences to CoD (example framework)
  - Control 2nd weapon slot availability (disable is needed)
  - Ability to disable minefields globally or per map and/or gametype
  - Hud score display incl. number of players on team (ALL GAMETYPES)
  - Option to only show live teammates on hud score display
  - Example killcam replacement
  - Example commands: privmsg, alertmsg, rename
  - Auto-renaming of Unnamed Soldier players
  - Stackable dynamic function examples
  - Pain sounds on damage and death
  - Stopwatch in SD (and OBJ)

o HamGametypes
  - MultiTeam HQ (requires client-side download)
  - MultiTeam TDM and DM gametypes (requires client-side download)
  - Objective (obj) - similar to SD, but both targets must be destroyed
  - Roundbased-TDM (rb) - TDM with a twist ... once you die, you cannot respawn

o HamMortars
 - Per-map mortar explosion configuration
 - Pre-configured mortar positions on stock maps (more can be added).

o (NEW) HamRotor
  - Control map rotation with custom settings
  - Ordered or random rotation control
  - Global, gametype and/or map-level cvar settings
  - Cvar aliasing to reduce number of configuration settings (and typing)
  - Dynamic cvar expansion in strings.


Files included in this release:
_______________________________________________________________________________
        README_HamGoodies.txt              - this file
        CoDaM_HamGoodies.cfg               - Config file for this plug-in
        CoDaM_HamGametypes.cfg             - Config file for custom GTs
        CoDaM_HamRotor.cfg                 - Config file for HamRotor
        codam\ham_mortars.gsc              - Used to define mortar locations
        ___CoDaM_HamGoodies_CoD1.1__.pk3   - HamGoodies plug-in for CoD V1.1
        ___CoDaM_HamGoodies_CoD1.2__.pk3   - HamGoodies plug-in for CoD V1.2
        ___CoDaM_HamGoodies_CoD1.3__.pk3   - HamGoodies plug-in for CoD V1.3
        ___CoDaM_HamGoodies_CoD1.4__.pk3   - HamGoodies plug-in for CoD V1.4


HamGoodies CoDaM Plug-in Installation:
_______________________________________________________________________________

  NOTE: Before proceeding with the installation of this plug-in, ensure that the
        CoDaM base framework is setup and running properly!!!!!!!!!!!!!!!!!!!!!!

  - REMOVE ANY PREVIOUS COPIES OF HAMGOODIES, i.e. ___CoDaM_HamGoodies_*.pk3
  - Extract the .zip archive into a temporary folder.
  - Copy the HamGoodies file for the proper CoD version you run on your server,
    e.g. if running CoD V1.1 use ___CoDaM_HamGoodies_CoD1.1__.pk3.  ONLY COPY
    THE APPROPRIATE FILE FOR THE CORRECT VERSION OF COD RUNNING ON YOUR SERVER!
    DO NOT COPY THE REMAINING FILES.
  - Copy any files under the "codam" folder extracted from the .zip file to your
    server's main\codam folder (which should have been created during the CoDaM
    framework installation).
  - Edit CoDaM_HamGoodies.cfg and CoDaM_HamRotor.cfg as needed and copy them to
    your server's main folder.
  - Add the following statements near the bottom of CoDaM.cfg (which should have
    been added during the base CoDaM framework installation).   Alternatively,
    add these lines to your server's config file after the CoDaM.cfg statement.

    	exec CoDaM_HamMultiTeam.cfg
    	exec CoDaM_HamGoodies.cfg
    	exec CoDaM_HamRotor.cfg

  - Add the following lines to the server file located at main\codam\modlist.gsc.
    Check any comments available on that file and follow any directions found
    there as appropriate.  Make sure that you add these line BEFORE ANY other
    plug-in registration lines already in modlist.gsc.  Do not add another copy
    of this line if it's already there.

        [[ register ]]( "Hammer's Goodies",	codam\HamGoodies::main );
        [[ register ]]( "Hammer's Mortars",	codam\HamMortars::main );
        [[ register ]]( "Hammer's Rotor",	codam\HamRotor::main );

    NOTE: If the modlist.gsc file does not exist, then the CoDaM framework has
          not been properly configured!!!!
  - Add the following lines to the server file located at main\codam\modtypes.gsc.
    Check any comments available on that file and follow any directions found
    there as appropriate.

	[[ register ]]( "DEFAULT",  "obj", codam\GameTypes\_obj::main );
	[[ register ]]( "DEFAULT",   "rb", codam\GameTypes\_rb::main );
	[[ register ]]( "DEFAULT", "mtdm", codam\GameTypes\_mtdm::main );
	[[ register ]]( "DEFAULT",  "mdm", codam\GameTypes\_mdm::main );
	[[ register ]]( "DEFAULT",  "mhq", codam\GameTypes\_mhq::main );

    NOTE: If the modtypes.gsc file does not exist, then the CoDaM framework has
          not been properly configured!!!!
  - Re-start the server.


Release History:
_______________________________________________________________________________

=== V1.35 === 5/14/2004

- New: HamRotor, a map rotation plug-in (see CoDaM_HamRotor.cfg)
- Change: Moved all custom gametype configuration to separate config file (see
  CoDaM_HamGametypes.cfg)
- Change: ability to disable auto rename of Unnamed Soldier
- New: feature to remove MG42s (scr_allow_mg42); suggested by NM156
  (will be part of the CoDaM framework at a later release)


=== V1.31 === 5/7/2004

- Change: HamGoodies separated from the base CoDaM package
- New: support for changing attacker/defender roles in OBJ (scr_switchroles)
- New: multi-gamelog support (see ham_gamelog cvar)


=== V1.3 === 4/21/2004

- New: added mortar locations for new CoD 1.4 map (mp_stalingrad)
- New: Added ham_hitaction cvar and associated code to perform player actions
  when hit or damage occurs (things like weapon drop on hand/arm hit, go prone
  on foot/leg).  Includes logic to prevent too many instances of the actions (to
  make it seem random).


=== V1.2 === 4/7/2004

- Change: additional mortar targets added (thanks =DMG=Zippy)
- Fix: ham_mortar_{delay, random, harmless} incorrect in config file
- Fix: OBJ drops server after setting bomb in mp_bocage and mp_neuville


=== V1.01 === 3/27/2004

- Change: ham_hudscores now a (pseudo) bit-field (see the config file)
- Update: some changes to hud score display (includes players "connecting")
- New: cvar to control whether 2nd weapon slot is active
- New: (preliminary) mortar configurator allows adding mortar explosions to maps
- New: mechanism to add new "key" sequences in CoD (see config file for cvars)

  Currently the following key sequences are programmed into HamGoodies.  These
  sequences utilize combinations of the CoD keys that perform the functions of
  USE, MELEE and/or ATTACK.  To activate a sequence, PRESS AND RELEASE each
  appropriate CoD key in the order listed below WITHIN A TOTAL of 2 seconds
  (player character must be alive in all cases).  If entered correctly, the
  corresponding action will take place.

        LEGEND:   U = USE key, M = MELEE key, A = ATTACK key
        U M M A         - Cause current weapon to be dropped (if enabled)
        U U U M         - Causes a health pack to be dropped (if available)
        U M M M         - Switch to last weapon used (if any)
        U M A A         - Swap weapon(s) between primary and secondary slots


=== See README_CoDaM.txt for previous release notes.
