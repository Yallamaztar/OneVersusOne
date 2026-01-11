LoadDefaultLoadouts() {
    if (!IsDefined(level.snipers)) {
        level.snipers = [];
        level.snipers[level.snipers.size] = "dsr50_mp";
        level.snipers[level.snipers.size] = "ballista_mp";
        level.snipers[level.snipers.size] = "svu_mp";
        level.snipers[level.snipers.size] = "as50_mp";
    }

    if (!IsDefined(level.lmgs)) {
        level.lmgs = [];
        level.lmgs[level.lmgs.size] = "mk48_mp";
        level.lmgs[level.lmgs.size] = "qbb95_mp";
        level.lmgs[level.lmgs.size] = "lsat_mp";
        level.lmgs[level.lmgs.size] = "hamr_mp";
    }

    if (!IsDefined(level.assaults)) {
        level.assaults = [];
        level.assaults[level.assaults.size] = "tar21_mp";
        level.assaults[level.assaults.size] = "type95_mp";
        level.assaults[level.assaults.size] = "sig556_mp";
        level.assaults[level.assaults.size] = "sa58_mp";
        level.assaults[level.assaults.size] = "hk416_mp";
        level.assaults[level.assaults.size] = "scar_mp";
        level.assaults[level.assaults.size] = "saritch_mp";
        level.assaults[level.assaults.size] = "xm8_mp";
        level.assaults[level.assaults.size] = "an94_mp";
    }

    if (!IsDefined(level.shotguns)) {
        level.shotguns = [];
        level.shotguns[level.shotguns.size] = "870mcs_mp";
        level.shotguns[level.shotguns.size] = "saiga21_mp";
        level.shotguns[level.shotguns.size] = "ksg_mp";
        level.shotguns[level.shotguns.size] = "srm1216_mp";
    }

    if (!IsDefined(level.smgs)) {
        level.smgs = [];
        level.smgs[level.smgs.size] = "mp7_mp";
        level.smgs[level.smgs.size] = "pdw57_mp";
        level.smgs[level.smgs.size] = "vector_mp";
        level.smgs[level.smgs.size] = "insas_mp";
        level.smgs[level.smgs.size] = "qcw05_mp";
        level.smgs[level.smgs.size] = "evoskorpion_mp";
        level.smgs[level.smgs.size] = "peacekeeper_mp";
    }

    if (!IsDefined(level.secondaries)) {
        level.secondaries = [];

        // pistols
        level.secondaries[level.secondaries.size] = "fiveseven_mp";
        level.secondaries[level.secondaries.size] = "fnp45_mp";
        level.secondaries[level.secondaries.size] = "beretta93r_mp";
        level.secondaries[level.secondaries.size] = "judge_mp";
        level.secondaries[level.secondaries.size] = "kard_mp";
        // launchers
        level.secondaries[level.secondaries.size] = "smaw_mp";
        level.secondaries[level.secondaries.size] = "fhj18_mp";
        level.secondaries[level.secondaries.size] = "usrpg_mp";

        // melee
        level.secondaries[level.secondaries.size] = "riotshield_mp";
        level.secondaries[level.secondaries.size] = "crossbow_mp";
        level.secondaries[level.secondaries.size] = "knife_ballistic_mp";
        level.secondaries[level.secondaries.size] = "knife_held_mp";
        level.secondaries[level.secondaries.size] = "knife_mp";
    }

    if (!IsDefined(level.tacticals)) {
        level.tacticals = [];
        level.tacticals[level.tacticals.size] = "smoke_center_mp";
        level.tacticals[level.tacticals.size] = "concussion_grenade_mp";
        level.tacticals[level.tacticals.size] = "emps_grenade_mp";
        level.tacticals[level.tacticals.size] = "sensor_grenade_mp";
        level.tacticals[level.tacticals.size] = "flash_grenade_mp";
        level.tacticals[level.tacticals.size] = "proximity_grenade_mp";
        level.tacticals[level.tacticals.size] = "pda_hack_mp";
        level.tacticals[level.tacticals.size] = "trophy_system_mp";
        level.tacticals[level.tacticals.size] = "tactical_insertion_mp";
    }

    if (!IsDefined(level.lethals)) {
        level.lethals = [];
        level.lethals[level.lethals.size] = "frag_grenade_mp";
        level.lethals[level.lethals.size] = "hatchet_mp";
        level.lethals[level.lethals.size] = "sticky_grenade_mp";
        level.lethals[level.lethals.size] = "satchel_charge_mp";
        level.lethals[level.lethals.size] = "bouncingbetty_mp";
        level.lethals[level.lethals.size] = "claymore_mp";
    }

    if (!IsDefined(level.attachments)) {
        level.attachments = [];
        level.attachments[level.attachments.size] = "red_dot";
        level.attachments[level.attachments.size] = "holographic";
        level.attachments[level.attachments.size] = "acog";
        level.attachments[level.attachments.size] = "thermal_scope";
        level.attachments[level.attachments.size] = "silencer";
        level.attachments[level.attachments.size] = "extended_mags";
        level.attachments[level.attachments.size] = "grip";
        level.attachments[level.attachments.size] = "fast_mag";
        level.attachments[level.attachments.size] = "stalker";
        level.attachments[level.attachments.size] = "swayreduc";
        level.attachments[level.attachments.size] = "ir";
        level.attachments[level.attachments.size] = "dw";
        level.attachments[level.attachments.size] = "extclip";
        level.attachments[level.attachments.size] = "halo";
        level.attachments[level.attachments.size] = "dualclip";
        level.attachments[level.attachments.size] = "fmj";
        level.attachments[level.attachments.size] = "gl";
        level.attachments[level.attachments.size] = "dualoptic";
        level.attachments[level.attachments.size] = "is";
        level.attachments[level.attachments.size] = "steadyaim";
        level.attachments[level.attachments.size] = "extbarrel";
        level.attachments[level.attachments.size] = "mms";
        level.attachments[level.attachments.size] = "fastads";
        level.attachments[level.attachments.size] = "rf";
        level.attachments[level.attachments.size] = "reflex";
        level.attachments[level.attachments.size] = "sf";
        level.attachments[level.attachments.size] = "tacknife";
        level.attachments[level.attachments.size] = "stackfire";
        level.attachments[level.attachments.size] = "rangefinder";
        level.attachments[level.attachments.size] = "vzoom";
    }
}

getRandomPrimaryWeapon(loadout) {
    switch (loadout) {
        case "sniper":  return level.snipers[randomInt(level.snipers.size)];
        case "lmg":     return level.lmgs[randomInt(level.lmgs.size)];
        case "assault": return level.assaults[randomInt(level.assaults.size)];
        case "shotgun": return level.shotguns[randomInt(level.shotguns.size)];
        case "smg":     return level.smgs[randomInt(level.smgs.size)];
        default:        return "qcw05_mp";
    }

    return "qcw05_mp"; // this should never be reached but just in case
}

getRandomSecondaryWeapon() {
    return level.secondaries[randomInt(level.secondaries.size)];
}

getRandomTactical() {
    return level.tacticals[randomInt(level.tacticals.size)];
}

getRandomLethal() {
    return level.lethals[randomInt(level.lethals.size)];
}

GiveLoadout(loadout) {
    self TakeAllWeapons();

    weap = getRandomPrimaryWeapon(loadout);
    self GiveWeapon(weap);
    self SwitchToWeapon(weap);

    self GiveWeapon(getRandomSecondaryWeapon());
    self GiveWeapon(getRandomTactical());
    self GiveWeapon(getRandomLethal());
}