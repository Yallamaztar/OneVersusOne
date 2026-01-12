monitorChat() {
    for(;;) {
        level waittill("say", message, player, isTeamChat);
        parts = StrTok(message, " ");
        command = ToLower(parts[0]);

        if (command[0] != "!") {
            continue;
        }

        if (player != level.original_player) {
            player IPrintLn("^1Only ^7the ^1original player ^7can ^1lock ^7or ^1unlock ^7the server");
            continue;
        }

        if (command == "!lock") {
            if (scripts\mp\core\_settings::IsLocked()) {
                player IPrintLn("Server is ^1already^7 locked");
                continue;
            }

            scripts\mp\core\_settings::LockServer();        
            player scripts\mp\core\_hud::removeHUD();
            player scripts\mp\core\_hud::createLockedHUD();
        } 
        
        if (command == "!unlock") {
            if (!scripts\mp\core\_settings::IsLocked()) {
                player IPrintLn("Server is ^1already^7 unlocked");
                continue;
            }

            scripts\mp\core\_settings::UnlockServer();
            player scripts\mp\core\_hud::removeHUD();
            player scripts\mp\core\_hud::createUnlockedHUD();
        }

        wait 0.1;
    }
}