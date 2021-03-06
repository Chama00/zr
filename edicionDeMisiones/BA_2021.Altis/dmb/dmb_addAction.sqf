waitUntil {not isNull player};

private _isDM = player getVariable ["esInstructor", false];

if (!_isDM) exitWith{
    diag_log "DMB_DEBUG: Player is not DM";
};

player addAction ["Dungeon Master Board", {
    [] execVM "dmb\dmb_init.sqf";
}, [], 0, false, true, "", "true", -1];

player addEventHandler[
    "Respawn", {
        params["_unit", "_corpse"];

        _unit setVariable ["esInstructor", true];

        [] execVM "dmb\dmb_Addaction.sqf";
    }
];