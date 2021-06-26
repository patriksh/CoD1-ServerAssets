main(phase, register) {
    switch(phase) {
        case "init": _init(register); break;
        case "load": _load(); break;
        case "start": _start(); break;
   }
}

_init(register) {
    if(!isDefined(level.dftd)) level.dftd = [];

    level.dftd["hudmessages"] = spawnStruct();
    level.dftd["hudmessages"].msgs = [];
    level.dftd["hudmessages"].next = 0;

    level.dftd["hudmessages"].x = 0; // X position
    level.dftd["hudmessages"].y = 10; // Y position
    level.dftd["hudmessages"].delay = 10; // Delay between messages.
}

_load() {
    // Set your messages here. You can copy the lines as many times you want to add multiple messages.
    message("Found a cheater^1? ^7Report them with ''^1!report <^7name^1> <^7reason^1>^7''.");
    message("Chat with us on Discord^1! ^7Join it at tiny^1.^7cc^1/^7scio");
    message("We are recruiting^1! ^7Apply on our Discord.");
    message("Wallhack, aimbot, FF, and any other cheats & glitches are ^1not ^7allowed and result in a ^1ban^7.");

    precacheShader("ui/assets/gradientbar2.tga");
    for(i = 0; i < level.dftd["hudmessages"].msgs.size; i++)
        precachestring(convert_string(level.dftd["hudmessages"].msgs[i]));
}

_start() {
    if(isDefined(game["matchstarted"]) && game["mapstarted"])
        thread showMessages();
}

showMessages() {
    while(true) {
        while(level.dftd["hudmessages"].next < level.dftd["hudmessages"].msgs.size) {
            index = level.dftd["hudmessages"].next;
            thread showMessage(level.dftd["hudmessages"].msgs[index]);

            level.dftd["hudmessages"].next += 1;
            wait level.dftd["hudmessages"].delay;
        }

        level.dftd["hudmessages"].next = 0;
    }
}

showMessage(message) {
    // Create background HUD elem
    level.dftd["hudmessages"].bg = newHudElem();
    level.dftd["hudmessages"].bg.archived = false;
    level.dftd["hudmessages"].bg.alpha = 0;
    level.dftd["hudmessages"].bg.alignX = "left";
    level.dftd["hudmessages"].bg.alignY = "top";
    level.dftd["hudmessages"].bg.x = level.dftd["hudmessages"].x;
    level.dftd["hudmessages"].bg.y = level.dftd["hudmessages"].y;
    level.dftd["hudmessages"].bg.sort = 9100;

    // Create text HUD elem
    level.dftd["hudmessages"].txt = newHudElem();
    level.dftd["hudmessages"].txt.archived = false;
    level.dftd["hudmessages"].txt.alpha = 0;
    level.dftd["hudmessages"].txt.alignX = "left";
    level.dftd["hudmessages"].txt.alignY = "top";
    level.dftd["hudmessages"].txt.x = (level.dftd["hudmessages"].x + 10);
    level.dftd["hudmessages"].txt.y = (level.dftd["hudmessages"].y + 1);
    level.dftd["hudmessages"].txt.fontScale = 1.0;
    level.dftd["hudmessages"].txt.sort = 9105;
    level.dftd["hudmessages"].txt setText(convert_string(message));

    // Set background shader with length proportional to text length.
    msg_length = codam\utils::monotone(message).size;
    back_length = (int) (6.25 * msg_length) + 10;
    level.dftd["hudmessages"].bg setShader("ui/assets/gradientbar2.tga", back_length, 16);

    // Do the cool fade in/out animation.
    animate();

    // Hide the message.
    level.dftd["hudmessages"].txt destroy();
    level.dftd["hudmessages"].bg destroy();
}

animate(text, background) {
    level.dftd["hudmessages"].bg fadeOverTime(2);
    level.dftd["hudmessages"].bg.alpha = 0.3;
    level.dftd["hudmessages"].txt fadeOverTime(2);
    level.dftd["hudmessages"].txt.alpha = 1;
    wait(9);

    level.dftd["hudmessages"].bg fadeOverTime(1);
    level.dftd["hudmessages"].bg.alpha = 0.0;
    level.dftd["hudmessages"].txt fadeOverTime(1);
    level.dftd["hudmessages"].txt.alpha = 0.0;
    wait(1);

    return;
}

message(text) {
    size = level.dftd["hudmessages"].msgs.size;
    level.dftd["hudmessages"].msgs[size] = text;
}
