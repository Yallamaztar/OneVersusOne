LoadDefaultSettings() {
    level.locked = false;
    level.match_started = false;
    level.original_player = undefined;
}

GetPassword() {
    return GetDvar("g_password");
}

LockServer() {
    if (!level.locked) {
        password = generatePassword();
        SetDvar("password",   password);
        SetDvar("g_password", password);
        level.locked = true;
    }
}

UnlockServer() {
    if (level.locked) {
        SetDvar("password",   "");
        SetDvar("g_password", "");
        level.locked = false;
    }
}

IsLocked() {
    return level.locked;
}

generatePassword() {
    password = "";
    for (i = 0; i < 5; i++) {
        password += randomInt(9);
    }
    return password;
}