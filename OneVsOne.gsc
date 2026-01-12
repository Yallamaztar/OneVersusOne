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
}

onPlayerConnect() {
    level endon("game_ended");
    for(;;) {
        level waittill("connected", player);
        if (level.players.size < 2 && !IsDefined(level.original_player)) {
            level.original_player = player; // remember to undefine it too
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

        if (scripts\mp\core\_settings::IsLocked()) {
            self scripts\mp\core\_hud::createLockedHUD();
        } else {
            self scripts\mp\core\_hud::createUnlockedHUD();
        }
    }
}
