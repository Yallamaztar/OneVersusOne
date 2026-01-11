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

generatePassword() {
    password = "";
    for (i = 0; i < 5; i++) {
        password += randomInt(9);
    }
    return password;
}