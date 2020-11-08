/*
 * CoDaM HUD Messages plugin
 * Stripped down version for HUD Messages only by dftd.
 *
 * Original author: Hellspawn (CoDaM Server Messages plugin v1.3)
*/

__cacheMessages() {
    codam\utils::debug(0, "======== HUDMessages/__cacheMessages");
    level.hud_messages = [];

    // Set your messages here. Do not touch anything else.
    // You can copy the lines as many times you want to add multiple messages.
    level.hud_messages[level.hud_messages.size] = "Found a cheater^1? ^7Report them with ''^1!report <^7name^1> <^7reason^1>^7''.";
    level.hud_messages[level.hud_messages.size] = "Chat with us on Discord^1! ^7Join it at tiny^1.^7cc^1/^7scio";
    level.hud_messages[level.hud_messages.size] = "We are recruiting^1! ^7Apply on our Discord.";
    level.hud_messages[level.hud_messages.size] = "Wallhack, aimbot, FF, and any other cheats & glitches are ^1not ^7allowed and result in a ^1ban^7.";
    // Set your messages here. Do not touch anything else.

    for(i=0; i < level.hud_messages.size; i++) xprecachestring(level.hud_messages[i]);

    precacheShader("ui/assets/gradientbar2.tga");
    return;
}

main(phase, register) {
    codam\utils::debug(0, "======== HUDMessages/main:: |", phase, "|",register, "|");
    if(!codam\utils::getVar("sm_", "enable", "bool", 1|2, false)) return;

    switch(phase) {
        case "init": _init(register); break;
        case "load": _load(); break;
        case "start": _start(); break;
        case "standalone": _standAlone(); break;
   }

   return;
}

_init(register) {
    codam\utils::debug(0, "======== HUDMessages/_init:: |", register, "|");
    if(isdefined(level.HUDMessages_init)) return;
    level.HUDMessages_init = true;

    __updateVars();
    return;
}

_load() {
    codam\utils::debug(0, "======== HUDMessages/_load");
    if(isdefined(level.HUDMessages_load)) return;
    level.HUDMessages_load = true;

    __cacheMessages();

    return;
}

_start() {
    codam\utils::debug(0, "======== HUDMessages/_start");
    if(isdefined(level.HUDMessages_start)) return;
    level.HUDMessages_start = true;

    if(isDefined(game["matchstarted" ]) && game["mapstarted"]) thread cycleMessages();

    return;
}

_standAlone() {
    codam\utils::debug(0, "======== HUDMessages/_standalone");
    if(isdefined(level.HUDMessages_standalone)) return;
    level.HUDMessages_standalone = true;

    _init();
    _load();

    if(isdefined(game["standalone_started"])) game["roundsplayed"] += 1;
    else game["standalone_started"] = true;

    thread cycleMessages();

    return;
}

__updateVars() {
    codam\utils::debug(0, "======== HUDMessages/__updateVars");

    level.message_delay = codam\utils::getVar("sm_", "messagedelay", "int", 1|2, 15, 15, 600);
    level.start_delay = codam\utils::getVar("sm_", "startdelay", "int", 1|2, 5, 5);
    level.next_message = 0;

   return;
}

cycleMessages() {
    codam\utils::debug(0, "======== HUDMessages/cycleMessages");
    firstWait();

    while(true) {
        while(level.next_message < level.hud_messages.size) {
            thread showHudMessage(level.next_message, 0, 10);

            game["t_next_mess" ] = (getTime() + (1000.0 * level.message_delay));
            level.next_message += 1;
            wait level.message_delay;
        }

        level.next_message = 0;
    }
}

firstWait() {
    codam\utils::debug(0, "======== HUDMessages/firstWait");
    if(game["roundsplayed" ] < 1) {
        wait level.start_delay;
    } else {
        wait_time = (game["t_next_mess"] - getTime()) / 1000.0;
        if(wait_time < level.message_delay) wait(wait_time);
        else wait(level.message_delay);
   }
}

showHudMessage(which_message, x, y) {
    codam\utils::debug(0, "======== HUDMessages/showHudMessage");

    offset_x = 10;
    offset_y = 1;

    if(!isdefined(level.hud_map_text)) {
        level.text_back = newHudElem();
        level.text_back.archived = false;
        level.text_back.alpha = 0;
        level.text_back.alignX = "left";
        level.text_back.alignY = "top";
        level.text_back.x = x;
        level.text_back.y = y;
        level.text_back.sort = 9100;

        level.hud_text = newHudElem();
        level.hud_text.archived = false;
        level.hud_text.alpha = 0;
        level.hud_text.alignX = "left";
        level.hud_text.alignY = "top";
        level.hud_text.x = (x + offset_x);
        level.hud_text.y = (y + offset_y);
        level.hud_text.fontScale = 1.0;
        level.hud_text.sort = 9105;
    }

    level.hud_text setText(convert_string(level.hud_messages[which_message]));

    msg_length = codam\utils::monotone(level.hud_messages[which_message]).size;
    back_length = (int) (6.25 * msg_length) + offset_x;
    level.text_back setShader("ui/assets/gradientbar2.tga", back_length, 16);

    animateHudMessage(level.hud_text, level.text_back);

    if(isdefined(level.hud_text)) {
        level.hud_text destroy();
        level.text_back destroy();
        if(isdefined(level.hud_game_text)) {
            level.hud_game_text destroy();
            level.game_text_back destroy();
        }
    }

   return;
}

animateHudMessage(text, background) {
    background fadeOverTime(2);
    background.alpha = 0.3;
    text fadeOverTime(2);
    text.alpha = 1;
    wait(9);

    background fadeOverTime(1);
    background.alpha = 0.0;
    text fadeOverTime(1);
    text.alpha = 0.0;
    wait(1);

    return;
}
