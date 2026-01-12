generateID() {
    id = "";
    for (i = 0; i < 20; i++) {
        id += randomInt(9);
    }
    return id;
}

setMatchID(id) {
    level.match_id = id;
    SetDvar("match_id", id);
}

getMatchID() {
    return GetDvarInt("match_id");
}

canChangeMatchID() {
    return true;
}

isValidMatchID(id){
    if (!IsDefined(id))
        return false;

    if (id == "")
        return false;

    if (id == "-1")
        return false;

    return true;
}

MonitorMatchID() {
    last_id = getMatchID();

    if (!IsDefined(last_id) || last_id == "") {
        last_id = generateID();
        setMatchID(last_id);
    }
 
    for (;;) {
        current_id = GetDvar("custom_match_id");
        if (current_id != last_id) {
            if (IsDefined(game["state"]) && game["state"] == "postgame") {
                setMatchID(last_id);
                wait 0.1; continue;
            }

            if (!canChangeMatchID()) {
                setMatchID(last_id);
                wait 0.1; continue;
            }

            if (!isValidMatchID(current_id)) {
                setMatchID(last_id);
                wait 0.1; continue;
            }

            last_id = current_id;
            level notify("match_restart");
            iprintln("^2Match ID changed → restarting");

            wait 1;
            Map_Restart(false);
        }

        wait 0.1;
    }
}
