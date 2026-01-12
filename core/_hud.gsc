#include maps\mp\gametypes\_hud_util;

createLockedHUD() {
    self.hint = CreateServerFontString("bigfixed", 1);
    self.hint SetText(" Server is ^6locked^7\npassword: ^6" + scripts\mp\core\_settings::GetPassword());
    self.hint setPoint( "TOP_RIGHT", "TOP_RIGHT", 0, 0 );
}

createUnlockedHUD() {
    self.hint = CreateServerFontString("bigfixed", 1);
    self.hint SetText("Server is ^6unlocked^7\n to lock it do ^6!lock");
    self.hint setPoint( "TOP_RIGHT", "TOP_RIGHT", 0, 0 );
}

removeHUD() {
    self.hint Destroy();
}