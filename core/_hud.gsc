#include maps\mp\gametypes\_hud_util;

createLockedHUD() {
    self.hint = self CreateServerFontString("bigfixed", 1);
    self.hint SetText(" Server is ^6locked^7\npassword: ^6" + scripts\mp\core\_settings::GetPassword());
    self.hint setPoint( "TOP_RIGHT", "TOP_RIGHT", 0, 0 );
}

createUnlockedHUD() {
    self.hint = self CreateServerFontString("bigfixed", 1);
    self.hint SetText("Server is ^6unlocked^7\n to lock it do ^6!lock");
    self.hint setPoint( "TOP_RIGHT", "TOP_RIGHT", 0, 0 );
}

removeHUD() {
    self.hint Destroy();
}

createHUD() {
    if (scripts\mp\core\_settings::IsLocked()) {
        removeHUD();
        self scripts\mp\core\_hud::createLockedHUD();
    } else {
        removeHUD();
        self scripts\mp\core\_hud::createUnlockedHUD();
    }
}