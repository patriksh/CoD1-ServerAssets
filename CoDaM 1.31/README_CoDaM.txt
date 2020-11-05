                                   CoDaM

The CoDaM project (pronounced co-dam) provides a set of standard modules
for managing a wide variety of game capabilities.  For mod developers, CoDaM
includes modules for such things as spawn-point management, team & weapon
administration, game-type control and more; for server administrators, CoDaM
provides as much freedom as possible for managing custom modules, it also
includes mod registration functionality and new command add-ons (via mods).

For additional information on the CoDaM project, please visit the CoDaM forums
hosted over at IW Nation (http://www.iwnation.com/Hosted/CoDaM/) and the release
notes at the end of this file.  CoDaM cvars descriptions available from:
http://www.iwnation.com/Hosted/CoDaM/cvars.php

--Hammer
CoDaM Team/Development Lead
hammer@iwnation.com
http://www.iwnation.com/Hosted/CoDaM/


Current Features:
_______________________________________________________________________________

o ModType Module
  - Allows integration of non-CoDaM mods on CoDaM servers.
o ModAdmin Module
  - Custom mod registration: allows configuring customs mods and have their
    startup managed by CoDaM.  This prevents having mods that override other
    mods.
  - Commander allows for new "command" integration via mod scripts.  Simple
    command registration and powerful parsing capabilities to help enhance
    current game commands.
o Utilities Module
  - Many useful functions to assist mod developers.  There'll be a document in
    the future, for now it's best to look at actual source to see what's
    available and how it works.
o GameType Module
  - (NEW) Weapon aliasing that allows replacing one weapon with another
  - Supports all versions of CoD (incl. 1.1)
 - BEL gametype CoDaMized (finally)
  - HQ gametype CoDaMized
  - Grenade limiter based on weapon class assignment
  - Map Start delay support across all CoDaMized gametypes
  - Gametype commands to help admin control certain aspects (switch2,kill,
    force2, swapteams, playerReset, playerLock, playerUnlock, fixName, monoName)
  - Ability to define what weapons cannot be dropped when a player dies
  - Feature to select spawnpoint method for REspawning in round-based GTs
  - Powerful weapon limiting and initial ammo assignment via server cvar.
  - Ability to play retail gametypes or CoDaM-enhanced versions.
  - Team-damage checking (like TK check, but performed on team damage)
  - Common functions broken-up into individual components for easy re-use by
    new gametypes.
  - Stackable function calls which allows replacing/enhancing existing gametype
    functions via custom mods WITHOUT overriding methods.  Almost all GT calls
    are now dynamically managed, including standard callbacks.  Several call
    modes available, takeover (which replaces existing methods), thread (runs
    in parallel with existing) and in-line (runs in serial fashion).  Provides
    ability to toggle methods and re-insert different functions as logic changes.
  - Multiple spectate modes (none, free, team-lock, black screen)
  - Individually control dropping of health packs, weapons, player body on death
  - Killcam toggle via cvar and ability to enable killcam on yourself
  - Multi-cvar configuration, with individual gametype and/or map overrides
  - Basic TK (with limit and rate parameters); TK'ers sent to black-screen spec
  - Weapon/team stays on map rotation, no need to keep re-selecting after change
  - Forced auto-team assignment (simple team balancing)
  - Toggle multi-weapon keep on SD/RE gametypes
  - Toggle respawn for round-based gametypes
  - Toggle quick-menu operation (menus appear, but no action is performed)
  - TDM/DM/SD/RE retail gametypes converted to CoDaM.
  - Prevent errors on maps without certain gametype-required capability, e.g.
    trying to run SD on mp_chateau.  Forces map rotation on such incidents
    preventing server going down.


Files included in this release:
_______________________________________________________________________________
        README_CoDaM.txt                - this file
        CoDaM.cfg                       - Convenient server config file
        codam\modlist.gsc               - The ModAdmin mod configuration script
        codam\modtypes.gsc              - The ModType mod configuration script
        codam\hq_radio.gsc              - Radio definitions used by HQ, et.al.
        ___CoDaM_CoD1.1__.pk3           - The base CoDaM file for CoD 1.1
        ___CoDaM_CoD1.2__.pk3           - The base CoDaM file for CoD 1.2
        ___CoDaM_CoD1.3__.pk3           - The base CoDaM file for CoD 1.3
        ___CoDaM_CoD1.4__.pk3           - The base CoDaM file for CoD 1.4

	NOTE: Other files may appear in the archive, e.g. HamGoodies plug-in.
	      For purposes of this installation, they can be ignored; consult
	      other README files, e.g. README_HamGoodies.txt, as necessary.


CoDaM Base Framework Installation:
_______________________________________________________________________________

  NOTE: Before proceeding with the installation of this mod, ensure that the
        CoD server is setup and running properly!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  NOTE: If you've installed CoDaM before, ensure you have a BACKUP of all files
  under your server's main\codam folder!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

  - REMOVE ANY PREVIOUS COPIES OF CODAM FROM YOUR SERVER, i.e. ___CoDaM_*.pk3
  - Extract the .zip archive to a temporary folder.
  - Copy the CoDaM base file for the proper CoD version you run on your server,
    e.g. if you're running CoD V1.1 use ___CoDaM_CoD1.1__.pk3.  ONLY COPY
    THE APPROPRIATE FILE FOR THE CORRECT VERSION OF COD RUNNING ON YOUR SERVER,
    DO NOT COPY THE REMAINING FILES!
  - Copy the "codam" folder extracted from the .zip file to your server's main
    folder.   Keep the file structure the same, i.e. on your server you should
    end up with a folder under "main" called codam and several files beneath it.
  - Edit CoDaM.cfg to fit your needs and copy it to your server's main folder.
  - Add "exec CoDaM.cfg" to your server's main configuration file, e.g.
    server.cfg.  Place the statement near the bottom of said file AFTER all your
    server configs are established, HOWEVER MAKE SURE THAT IT IS READ BEFORE
    THE FIRST MAP IS STARTED. (NOTE: If you run a LINUX server, make sure to
    keep the file name case as shown above, since the linux CoD server is case-
    sensitive).
  - Start the server.
  - Once a map is running, verify that CoDaM is active by looking for the
    following server cvars: codam_version and codam_session.  They should have
    values greater than 0.  You should also see a CoDaM version identifier on
    the bottom left of every player's screen.  If the version id contains the
    string "GT" (without the quotes), then the gametype currently running is
    the CoDaM-enhanced version of that gametype.

  OPTIONAL:
  - When you are comfortable that the new CoDaM version is set up and working
    properly, you may want to consider adding plug-ins to further enhance the
    CoD gaming experience.  It is strongly recommended that you DO NOT attempt
    to enable plug-ins until you've configured the base CoDaM files.  All
    plug-ins should provide proper instructions on how to register it with
    CoDaM.  Should a plug-in lack this information, you should contact the
    appropriate developer for assistance.


Release History:
_______________________________________________________________________________

=== V1.31 === 5/7/2004

- New: added feature to allow weapon mapping (scr_weapon_map)
- Fix: BEL allies position not updating in compass
- New: support for changing scoring system (scr_scoresystem)
- New: support for changing attacker/defender roles in SD/RE (scr_switchroles)
- Fix: gtd_modlimit not case sensitive.


=== V1.3 === 4/21/2004

- New: Support for CoD version 1.4
- Fix: scr_allies/scr_axis overridden by map scripts after map-start delay
- New: added gtd_disable cvar to disable CoDaM methods.  For example, setting
  it to "PlayerDamage" will disable any damage to players.  To find out what
  methods exist, see the CoDaM scripts. :-P  WARNING: disabling methods can
  be hazardous to server's health!
- New: added gtd_modlimit cvar to conditionally disable plug-in mod processing.
  ONLY PLUG-INS SPECIFICALLY DESIGNED FOR THIS WILL BE USING IT -- SUCH PLUG-INS
  MUST DESCRIBE PROPER CONFIGURATION IN THEIR README FILE.


=== V1.2 === 4/7/2004

- New: ModType module allows non-CoDaM mods to integrate on CoDaM servers.
  Removed Compat files as a result.  See g_modtype in CoDaM.cfg.
- New: Restricted spectator view (see scr_restrictspec in CoDaM.cfg)
- New: scr_teambalance support (like 1.3 auto team balance)
- Fix: SD on mp_bocage and mp_neuville kills server


=== V1.01 === 3/27/2004

- CoDaM.cfg: many changes, please go over the config file again.
- Moved: HamGoodies now has its own separate README
- Change: HamGoodies disabled in modlist.gsc -- see the HamGoodies README
- Change: renamed ham_hq_radios.gsc to hq_radios.gsc
- New: CoDaMized BEL gametype
- New: Support for CoD V1.1, 1.2 and 1.3
- Update: eventeams no longer requires scr_autoassign enabled
- New: scr_nonamechange cvar to control player name changing
- Fix: force2/switch2 doesn't work under MultiTeam gametypes


=== V0.94 === 2/18/2004

- CoDaM.cfg: removed scr_usecodam (not needed since gametypes are now CoDaM-
  specific).
- CoDaM_HamGoodies - lots of cvars for MultiTeam HQ
- CHANGE: All CoDaMized GTs have been renamed using a prefix of "c_", e.g. tdm
  is now known as c_tdm.  Admins must convert to using the new gametypes ASAP.
  This includes c_tdm, c_dm, c_sd, c_re, c_hq, c_obj, c_rb, c_mdm, c_mtdm,
  c_mhq.  NOTE: for backwards compatibility, to keep things tidy, the gametype-
  specific cvars, i.e. those using the original gametype strings, will continue
  to be honored.  For example, scr_tdm_timelimit will be used for C_TDM and not
  scr_c_tdm_timelimit.
- New: codam\ham_hq_radios.gsc allows modifying radio spawns on a per map basis
  (will probably convert this to cvars in a future release).
- Fix: privmsg not working
- New: MultiTeam HQ (beta version) -- with a few gameplay changes to fit into
  the multi-team environment.
- Fix: combined "client" pk3 into HamGoodies to work around problems with auto
  downloads of pk3 not referenced by server.
- Fix: scr_keep_locked not working as described
- Fix?: MultiTeam menus sometimes don't show (precachemenu CoD bug?!?!)


=== V0.93 === 2/8/2004

- CoDaM.cfg: added scr_keep_locked, scr_sd_ignorebomb, scr_noobituary
- CoDaM_HamGoodies: added ham_statusicon
- New: scr_noobituary to control kill messages
- Change: scr_specmode "free" honors scr_freelook
- Fix: Double Match Starts in round-based GTs
- Fix: HQ mode doesn't start when scr_mapstart_delay is zero
- Fix: cannot disable friendlyfire
- Changed: a few tweaks here and there to hud_score icons and scoreboard
- Added spectator player-count to hud scores
- New: Added ham_statusicon to HamGoodies to control team avatar icons on
  scoreboard window
- New: Added cvar to allow locked players to reconnect (scr_keep_locked)
- New: Added cvar to control SD round-end when bomb planted (scr_sd_ignorebomb)
- Fix: exporting serverinfo menu UI vars not displayed correctly


=== V0.92 === 2/2/2004

- Change: ham_hudscores 3 always show number of live players (any gametype)
- New: grenade limit based on class (scr_grenade_class)
- CoDaM.cfg: new cvars added (scr_noserverinfo)
- All gametypes can now use map start delay (scr_mapstart_delay)
- Lots of changes integrating 1.2 features
- CoDaMized HQ gametype; provided cvars for some parameters


=== V0.91 === 1/30/2004

- Converted to patch 1.2


=== V0.9 === 1/29/2004

- CoDaM.cfg: renamed and added some cvars.
- Moved cvars specific to HamGoodies into new file: CoDaM_HamGoodies.cfg
- Fix: eventeams not running
- New: Multi-Team TDM and DM gametypes (mtdm/mdm) added to HamGoodies as a
  more complicated example of creating new CoDaM-aware gametypes.
- Enhance: hud score works with ANY gametype (incl. non-CoDaM aware ones)
- New: Added map start delay on round-based matches (see scr_mapstart_delay)
- Fix: roundlimit ignores draw rounds
- Moved a bunch of files around (particularly most files that resided under
  codam\GameTypes were moved up a level; only the gametype files remain there)
- Removed codam\gtmodlist.gsc (all mods now registered using only modlist.gsc).
- Reworked mod registration; now only one modlist.gsc file used to avoid issues
  during initial add-on mod configuration.
- CHANGED: custom mod calling mechanism changed due to gtmodlist.gsc removal.
  Existing plugins will break!!!!  CUSTOM MOD DEVELOPERS MUST LOOK AT THE
  HAMGOODIES.GSC EXAMPLE AND UPDATE THEIR MODS APPROPRIATELY.  (SORRY!)
- Adjusted team-spectate so that when all teammates die in a round-based GT,
  dead players simply free spectate.
- Fix: locked players can disconnect and reconnect without being locked


=== V0.85 === 1/18/2004

- Fix: precache errors switching same map from retail to CoDaM (mostly a hack)
- Adjusted specmode "team" to act like "stay" when no teammates are alive
- Removed: ___CoDaM_Config__.pk3 (now that custom CoDaM mods have appeared!)
- Fix: alertmsg, privmsg, rename not working
- Fix: playerLock command not running
- Fix: certain combinations of menu selections may cause team spectate to lock
  on the wrong team
- Fix: retrieval obj disappears when carrier player goes into spectator
- Fix: round-based matches sometimes don't end when last player disconnects,
  is moved to spectator or gets locked/kicked.  (Ham note: hopefully this is
  the end of this problem, otherwise I'm completely re-doing the logic.)


=== V0.8 === 1/13/2004

- NOTE NOTE NOTE NOTE NOTE: CoDaM.cfg has been changed to match CoD default
  gameplay where possible.  YOU MUST CHANGE IT TO MATCH YOUR SERVER NEEDS!
- Fix: nosuicide on round-based matches (without respawn) keeps player in
  original team, but is actually on another (a spy?)
- Simplified scr_respawnpoints values to "dm", "nearteam", and "random"
- Fix: saving weapons on live players doesn't work when roundcam enabled
- Fix: roundcam fails when last player is killed by a non-player (minefield,
  suicide, nade, etc.)
- Reworked hud score display (see ham_hudscores cvar)
- NOTE TO MODDERS adding new commands via Commander:::: there's been a slight
  change in the way command functions are called (extra argument) and how
  usage information is returned ... check the scripts.
- Change: Commander "commands" are now caseless.
- Draft CoDaM cvars document at http://www.iwnation.com/Hosted/CoDaM/cvars.php


=== V0.7 === 1/9/2004

- Changed scr_specmode to accept only "stay", "team", "free", "black" or "score"
- Fix: if attack/melee pressed when you die, you can free spectate as long as
  button being pressed.
- Added scr_tkwarn and scr_tdwarn to control when to warn on player's offense
- New: Gametype commands added to help admins ...
  NOTE: learn how CoDaM commands are entered and how to obtain command usage
        at http://www.iwnation.com/Forums/index.php?showtopic=2396
  o kill                - Force one or more players to commit suicide
  o switch2             - Switch one or more players to a team or spectator
                          (honors setting in scr_autoassign and scr_graceperiod)
  o force2              - Force one or more players to a team or spectator
                          (ignores scr_autoassign, but honors scr_graceperiod)
  o swapteams           - Swaps existing players in teams
  o eventeams           - Attempts to balance teams by shuffling players
                          around (scr_autoassign must be enabled)
  o playerReset         - Erases any player information saved for map changes
                          (i.e. when scr_saveplayers is enabled)
  o playerLock          - Locks out a player from game play (so when you kick
                          them and they reconnect, they won't be able to play)
  o playerUnlock        - Unlocks them after they've been locked (takes effect
                          after map/round changes)
  o fixName             - Ensure player(s)' name end in a "readable" color
  o monoName            - Removes color changes in player(s)' name
- New: Changed scr_noweapondrop so that it now lists the weapon class(es) for
  weapons that CANNOT be dropped on player death
- New: added new spec mode (scoreboard)
- Changed scr_allowrespawn back to yes/no and added scr_respawnpoints to
  determine how to assign spawnpoints on respawn (see CoDaM.cfg)
- Fix: locked (kicked) player becomes unlocked on round (match) start
- Fix: player that disconnect after death and immediately reconnect in
  round-based match start out alive after grace period.
- Fix: player joining match in progress can select team and still spectate
  other team


=== V0.64 === 1/5/2004

- Fix: roundcam still not working properly
- Adjusted "match start" for SD-type gametypes to require less time.
- Fix: SD/RE end-of-round problems and scores not resetting properly
- Fix: timing problem in SD/RE when scr_allowrespawn is enabled can end round
  when all team members die at the same time.
- Fix: team-damage checks in DM gametype (oops)
- Fix: test bots sometime stay in spectator (can't be fixed)
- Fix: test bots cannot use pistols  :angry:
- Added no-minefields cvar to HamGoodies
- Enhanced hud scores to show alive players on round-type matches.
- Enhanced respawn logic for round-based gametypes so that after grace-period
  expires spawnpoints are treated like DM, TDM-nearteam, or TDM-random.
- Fix: defuse icon stays after bomb blows and kills player in SD (and OBJ)
- Added stopwatch to SD bomb timer
- Fix: roundlimit doesn't always end map


=== V0.61 === 1/1/2004

- Allow using retail gametypes (no CoDaM enhancements) without messing around
  with pk3 files.
- Fix: problem running standard or non-CoDaM-aware gametypes
- Fix: several roundcam problems (still needs some work)
- Alpha WeaponManagement with weapon limiting and initial ammo configurations
  (see scr_weapon_assign and scr_weapon_ammo in CoDaM.cfg)
- Removed codam\weaplist.gsc since now it done in cvars
- Added Team Damage checking, similar to Team Killing but concentrates on a
  single player causing team damage w/o actually TK'ing.
- Fix: sometimes cannot respawn; get stuck in spectate mode


=== V0.5 === 12/22/2003

(NOTE: MAKE SURE YOU UPDATE THE modlist.gsc and gtmodlist.gsc files)

- Integrated Commander into ModAdmin module (no longer a separate add-on).
  Changed Commander registration var from level.ham_f_commander to
  level.codam_f_commander
- Moved the gametype scripts to a separate pk3 to give admins the option of
  using the retail gametypes instead of the CoDaM-enhanced versions.
- Fix: script problems when scr_nosuicide was enabled and players changed teams.
  Strange errors and script failures no longer occur.
- Added new functions in Utilities module.
- Fix: killcam server crasher (I HOPE!)
- Enhanced: cvar setup; now most cvars allow overriding down to map names, e.g.
  scr_tdm_timelimit_mp_brecourt, scr_timelimit_mp_brecourt, scr_tdm_timelimit,
  scr_timelimit, searched in that order ... first non-empty cvar is used.  A
  table listing available cvars, with default, min and max values will be
  provided in the near future.
- Fix: If "scr_autoassign" is enabled and teams are even, then use team
  selected from the menus instead of assigning randomly.
- Enhanced: generalized saving player information across maps
- Combined HamMAgoodies and HamGTgoodies into a single HamGoodies.pk3.
- HamGoodies: new on-hud scores.  Toggle with ham_hudscores.
- HamGoodies: new gametypes converted to CoDaM: RB (round-based death-match) and
  OBJ (Mohaa-style Objective)
- This could very well be the last "0.x" release, although I would like to hold-
  off on 1.0 until after the new game patch is released.  This will give me
  time to update patch changes and add the new HQ gametype.  Then the "real"
  work begins enhacing CoDaM with newer features, like additional spawning
  functions, weapon management, etc.


=== V0.4 === 12/14/2003

- Alpha version of the converted SD and RE gametypes.  All retail gametypes
  but BEL are now under the CoDaM framework.  A whole lot of changes went in
  to get these gametypes converted, so please let me know if you encounter
  any problems during gameplay.
- Fixed some missing game logging in TDM/DM; all GTs now fully log to game log.
- Updated many cvars and their functions, see CoDaM.cfg
- Please let me know if you experience server crashes while running CoDaM.  On
  one of my test servers, it seems to crash randomly.  Have been unable to
  determine cause, however disabling killcam seems to remove the problem
  (set scr_killcam 0).  I looked over the killcam code and cannot see anything
  obvious that might be the cause; it could be an interaction with respawning
  or perhaps the spectator control functions.  NOTE: these are actual game
  server crashes, not script failures, which is why it's been so difficult to
  pin-point.


=== V0.3 === 12/10/2003

- Official CoDaM web site is up (although some links are still being worked on)
  Visit here: http://www.iwnation.com/Hosted/CoDaM/
- Fix problem of registering game-type script callbacks AFTER mod ones.  Caused
  mod functions to run after the standard ones.
- TK'ers are now sent to spec and can only view main menu.  If spec-to-black is
  enabled, all they'll see is a black screen after the notice that friendly
  fire is not tolerated.
- Spec to black disables menu actions to prevent players from changing settings
  while they are dead.
- Added more examples to HamGTgoodies (add threads to the PlayerKilled and
  PlayerDamage callbacks to play a death / pain sounds; idea taken from Ravir's
  Demolition gametype to show how simple it is to integrate without hacking
  gametype script.  Setting cvar, ham_playsounds, to 0 disables plaing these
  sounds,if they become annoying).  Moved the fallDamage multiplier code from
  the gametype script and made it part of the add-on goodies as another example
  and renamed the cvar to ham_falldamagemult
- Added CoDaM.cfg to set CoDaM cvars to my preferred values (edit and/or merge
  into your servers config as needed).
- Started working on the SD game-type coversion.


=== V0.2 === 12/9/2003

- This release includes fixes to the ModAdmin and Utilities modules, and the
  HamCommander & HamGoodies ModAdmin add-on mods (with .pk3 files renamed).

  In addition, the alpha release of the GameType module is included with a
  working version of the TDM and DM gametypes already converted.  Please note
  that I've only tested this with 2 people on a small server.  The GameType
  module includes the following features (so far):
        o Stacking function calling, which allows dymanic changes to gametype
          code and ability to enhance or takeover existing functionality using
          custom mods.  An example is provided in HamGTgoodies, which replaces
          the standard killcam with a 15-second one that can be manually
          disabled to revert to standard killcam (on the fly) and then toggled
          back on without having to restart server.  Almost all functions can
          be stacked, INCLUDING all game callbacks (an idea provided by
          BuzzLitebeer)!
        o Custom mod registration similar to that used in ModAdmin, but
          configured using a different file: codam\gtmodlist.gsc.  Very
          powerful mechanism for making gametype changes "on-the-fly".
        o A bunch of gametype enhancements:
                + Common functions separated into individual files.
                + Killcam fixed to revert back to your dead body after done
                  viewing.  Provides option to view yourself after own death.
                + scr_forcerespawn now correctly causes automatic respawn
                  after N seconds.  No longer controls killcam (there's a
                  separate cvar for that).
                + Ability to control such things as weapon, health-pack and
                  player's body on death drop.  You can disable dropping any
                  of these.  For player's body, it will show your death but
                  then remove body after a few seconds (configurable) or on
                  respawn (like MoHAA)
                + Spectate team-locking, with option to specate to a black
                  screen (while not really useful in TDM/DM, I've included
                  it in this release for testing purposes; at least until
                  I've had a chance to convert the SD and RE gametypes.)
                + Ability to save player spawn info across map rotation,
                  i.e. team/weapon.  Automatically adjusts for proper weapon
                  type based on which nationality is used in a map.
                + TK control parameters with TK-limit and TK-rate/min
                  settings.  Currently forces TK'er to spectate without
                  ability to re-enter a game.
                + Option to not commit suicide when changing team.
                + Ability to control operation of Quick-menus (menus still
                  pop-up, but they do not perform the "order")
                + And a bunch of other smaller things ...
        o You can have global cvars for common vars like timelimit, with the
          ability to override them by gametype.  For example, if you set
          scr_timelimit, it will be used as the standard timelimit for all the
          included gametypes unless overridden by its gametype counterpart, e.g
          scr_tdm_timelimit.  Current cvars include:
                scr_timelimit
                scr_roundlimit
                scr_roundlength
                scr_scorelimit
                scr_graceperiod
                scr_forcerespawn
                scr_friendlyfire
                (plus most of the new ones shown below)
        o The following new cvars are available:
------------------------------------------------------------------------------
set scr_dontarchive     0       // Enable archiving? 0=yes, 1=no
                                // ... basically makes killcam unusable
set scr_nogamelog       0       // Generate game log? 0=yes, 1=no
set scr_saveplayers     1       // Save player info between maps? 0=no, 1=yes

set scr_falldamagemult  2.5     // Adjust damage due to falling (default: 0)

set scr_killcam         1       // Do killcam? 0=no, 1=yes
set scr_killcamself     1       // Let me see myself? 0=no, 1=yes

set scr_nosuicide       0       // Suicide on Team switch? 0=yes, 1=no

set scr_tklimit         4       // Max TKs permitted (per round/map)
set scr_tkrate          3       // TKs/min (per round or map)
set scr_nohealthdrop    0       // Drop health packs? 0=yes, 1=no
set scr_noplayerbody    0       // Show dead player? 0=yes, 1=no
set scr_deadbodydelay   4       // Delay before removing dead body (in secs.)
set scr_noweapondrop    0       // Drop weapon on death? 0=yes, 1=no
set scr_allow_quick     1       // Allow "quick" menus? 0=no, 1=yes

set scr_spectoblack     0       // Spectate to black screen? 0=no, 1=yes

// HamGTgoodies mod example
set ham_killcam         1       // HamKillcam mod: 0=off, 1=on
set ham_nodroptime      30      // Time from map start when weapon drop when
-------------------------------------------------------------------------------


=== V0.1 === 11/29/2003

- First release: The initial CoDaM framework includes the ModAdmin and Utilities
  module, and two (useable) modules, HamCommander and HamGoodies.  See above for
  installation instructions.
