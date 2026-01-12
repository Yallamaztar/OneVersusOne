main() {
    level thread scripts\mp\core\_loadout::LoadDefaultLoadouts();
    level thread scripts\mp\core\_id::MonitorMatchID();
}

init() {
    SetDvar("customGameMode", 2);
    SetDvar("ui_customModeName", "OneVersusOne");
    SetDvar("ui_customModeDesc", "1v1 duels powered by Perplex");
    
    SetDvar("com_busyWait", 1);
    SetDvar("bg_burstFireInputFix", 1);

    SetGametypeSetting("prematchperiod", 5);    
    SetGametypeSetting("preroundperiod", 5);

    level thread onPlayerConnect();
}

onPlayerConnect() {
    level endon("game_ended");
    for(;;) {
        level waittill("connected", player);
        player SetClientDvar("bg_fixFramerateDependentPhysics", 1);
        player SetClientDvar("cg_drawDisconnect", 0);
        player thread onPlayerSpawned();
    }
}

onPlayerSpawned() {
    self endon("disconnect");
    for(;;) {
        self waittill("spawned_player");
    }
}