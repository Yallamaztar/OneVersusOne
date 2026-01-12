#include scripts\mp\core\_chat;

main() {
    level thread scripts\mp\core\_settings::LoadDefaultSettings();
    level thread scripts\mp\core\_loadout::LoadDefaultLoadouts();
    level thread scripts\mp\core\_id::MonitorMatchID();
    scripts\mp\core\_settings::UnlockServer();

    SetGametypeSetting("prematchperiod", 5);    
    SetGametypeSetting("preroundperiod", 5);
}

init() {
    SetDvar("customGameMode", 2);
    SetDvar("ui_custom_name", "OneVersusOne");
    SetDvar("ui_customModeName", "OneVersusOne");
    SetDvar("ui_customModeDesc", "1v1 duels powered by Perplex");

    SetDvar("sv_maxPing", 350);
    SetDvar("com_busyWait", 1);
    SetDvar("bg_burstFireInputFix", 1);

    level thread onPlayerConnect();
    level thread monitorChat();
    level thread trackGameState();
}

onPlayerConnect() {
    level endon("game_ended");
    for(;;) {
        level waittill("connected", player);
        if (level.players.size < 2 && !IsDefined(level.original_player)) {
            level.original_player = player;
            game["state"] = "prematch";
            player scripts\mp\core\_hud::createHUD();

        } else if (level.players.size >= 2 && IsDefined(level.original_player)) {
            level.original_player maps\mp\gametypes\_globallogic_spawn::forcespawn(0);
            level.original_player scripts\mp\core\_hud::removeHUD();
        }

        player SetClientDvar("bg_fixFramerateDependentPhysics", 1);
        player SetClientDvar("cg_drawDisconnect", 0);
        
        player thread onPlayerSpawned();
    }
}

onPlayerSpawned() {
    self endon("disconnect");
    for(;;) {
        self waittill("spawned_player");
        self scripts\mp\core\_loadout::GiveLoadout();
    }
}

trackGameState() {
    for(;;) {
        if (game["state"] == "postgame") {
            level thread handlePostGame();
            break;
        }

        if (game["state"] == "playing") {
            foreach (player in level.players) {
                player scripts\mp\core\_hud::removeHUD();
            }
        }

        wait 0.1;
    }
}


handlePostGame() {
    foreach (player in level.players) {
        level.original_player scripts\mp\core\_hud::removeHUD();
        level.original_player = undefined;
        Kick(player.client_num);
    }
}