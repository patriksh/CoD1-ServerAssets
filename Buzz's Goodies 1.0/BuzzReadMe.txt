                              Buzz's Goodies 1.0


   Welcome to Buzz's Goodies 1.0.  This also includes an updated Buzz's 
killspree to fix the problem with the Linux servers.  This is a very powerful 
tool for timed functions.  Any CoDaM commander function can be timed. Be sure 
to look at the commander cmdlist Along with this is the ability to set a minimum 
# of players on the server before voting is allowed. It also contains new 
commander functions for timed messaging and other gameplay functions.  Not to 
mention the all powerful Buzz’s command interpreter that is to large to describe here.

   Fist thing we will is the set up of the mod.
	1. Add the BuzzGoodies.pk3 to your servers main directory.
	2. Add  [[ register ]]( "Buzz's Goodies", codam\BuzzGoodies::main ); to 
	your modlist.gsc .  This is located in the codam folder.
	3. Add set bg_goodies “1”, set bg_killspree “1”, set bg_killnotify “1” and
	bg_allowthresh “10” to you server cfg

NOTE: If you currently have bgkillspree from HopHead you will need to remove its 
entry from the modlist.gsc and remove the bgkillspree.pk3 from tha main.

   That’s it the mod is in.  Now to cover the config’s there is an example cfg 
included in this file that will show alot of the functions in detail.  You will 
need to add (set bg_goodies “1” ) to your servers cfg before the maps are 
loaded.  This activates the mod(including killspree). 

   To control killspree the same cvars are used as in the old killspree mod (set 
bg_killspree “1”) to activate the killspee messages and (set bg_killnotify “1”) 
to activate the notify messages.

   One of the new features is the voting threshold.  This cvar will set the 
minimum number of players on your server before voting is allowed. This will 
stop one guy coming in and vote changing everything on the server.  To use this 
function add (set bg_allowthresh “10”) to set the minimum to 10 players for 
voting to be allowed.  If you do not wish to use this set it to (bg_allowthresh 
“0”) to disable this function.

       That concludes the basic setup for the mod. However this is still more.  
From here on may seem a little more difficult but once you see it being used 
this can be very powerful.  These are the new commander functions added with 
this mod.

TIMED
	Timed registers a function to be executed in seconds, you can execute any 
CoDaM commander functions with this.  You will notice the new |q in the line, 
this is necessary to put it the sting as a second type of quotes. Usage: 
command "timed <interval> \q<command> <|q><message><|q>\q"
Example
command "timed 15 \qalertmsg |q Hello Everyone this is my 15 second executing 
alertmsg|q all\q"
NOTE:  This is a looping command so like in the example above that message would 
show every 15 seconds.

MAPNAME
	This is useful to show players the current map and the game type.  Usage:
command "mapname <message>"
example
command "mapname Welcome to our server!" will output –
Welcome To our server! | Map: <thecurrentmap> GT: <thecurrentgametype>
NOTE:  This is good when used with the timed function.
SAYD
	Sayd is a special server messaging command I created that does one of two 
things.  First if the player is alive this will print a message over the 
compass.  Second if the player is dead this will print in bold text in the 
center of the screen.  This will allow the server admin to send more appropriate 
and less overall annoying messages. Usage:
command "sayd \q<message>\q"
Example
command "sayd hello all!"
This will print hello all in bottom left for alive players, and in the center 
bold for dead players.

SAYI
	Sayi is the same as privmsg(that comes with codam) just does not add the 
Private Message text. Usage:
command “sayi \q<message>\q <clientnumber>”
Example
command “sayi \qHello client 5\q 5”
This will print a private message “Hello client 5” to the player in the 5th 
client spot.

SAYB
	Sayb is the same as alertmsg in codam except that it does not paste 
"global message" to the message.  Usage:
command “sayb \q<message>\q <clientnumber|all>”
Example
command “sayb \qHello all\q all”
This will print a private message “Hello all” to all players.

TIMERTOGGLE
	Timertoggle turns the timed functions an and off. If provided with no
arguments it toggles the current timer state Usage:
command "timertoggle <on|off>"
Example
Command “timertoggle on”
This would turn the timed functions on.
NOTE:  By default this is on so to stop timed functions after a server restart 
type command “timertoggle” this would tune the timed functions off.

SETWELCOMEMSG
	Setwelcomemsg will add a message to new players on your server when they 
first spawn.  These messages will print in the order they are added.  Usage:
command "setwelcomemsg \qhowdy this is a welcome message\q"
command "setwelcomemsg \qthis is line 2\q"
This will print “howdy this is a welcome message” as line 1 and “this is line 2” 
as line 2.

ADDCLANTAG
	 Addclantag with this the server admin can have the server recognize there 
clan tag on the players. Or even clans that you are friendly with.  Usage:
command “addclantag <clantag>”
Example
command “addclantag ^6[BG]”
This will look for the colored [BG] in the players name.
NOTE: One thing that can be done to stop people from faking the tag is add more 
color codes at the beginning and arriving at the same color i.e. ^5^4^3^6[BG] 
this will be the same as ^6[BG] and now you can set the addclantag to  
^5^4^3^6[BG] for some form of security in this.

SETCLANMSG
	Setclanmsg this sets the welcome message for your clan members, you can 
make it so when your clan members enter the server, they get a unique welcome 
message this makes it so that you can provide updates for them without them 
coming to the website or sending out small emails.  Usage:
command “setclanmsg <args>”
Example
command "setclanmsg \q hey guys dont forget we have a match tonight on CAL\q"
NOTE: This is used in conjunction with the addclantag function and also best use 
with the Buzz’s command interpreter which I will explain next. 


Buzz’s command interpreter is the best part of the goodie.  The command 
interpreter allows people to execute CoDaM commands at map start from a config 
file, this ability makes a very powerful program, this can be used for 
messaging, setting variables, adding clan tags, timing functions etc.

BG_COMMAND_
	Bg_command_ is a cvar without limit by number name bg_command_#.  The only 
limit is that the preceding number must be used i.e. bg_command_4 can only be 
used if  bg_command_1-3 are also used. These also must be entered in order in 
the cfg file.
NOTE:  When using this with the setclanmsg be sure to addclantag first.
Example for a cfg.
set bg_command_1 "addclantag ^3{BG}"
(This sets the clan tag to "^3{BG})
set bg_command_2 "setclanmsg \q hey guys dont forget we have a match tonight on 
CAL\q"
set bg_command_3 "setwelcomemsg \qWelcome to the {BG} Public server\q"
(This sets the clan welcome message)

	The bg_command can also recognize the game type for commands it cretin 
gametypes.
Example
set bg_sd_command_4 "setwelcomemsg \qWelcome to the {BG} Search and Destroy 
server\q"
This sets the welcome message for sd gametype only.

	Well that is it for this version, there are examples of all of these in the
cfg’s included in the zip.  The limit of you imagination is the limit.  Did not have time to put the CFG in so look for it later.



       

		
