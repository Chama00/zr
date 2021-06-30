fase1_ready = false;
fase2_ready = false;
fase3_ready = false;

sentado_firstTime = true;
sentado = false;

Sentarse = ["Sentarse","Sentarse", "", {[_target, _player] execVM "sitdown.sqf"}, {!sentado}] call ace_interact_menu_fnc_createAction;
["TTT_BriefingChair", 0, ["ACE_MainActions"], Sentarse] call ace_interact_menu_fnc_addActionToClass;

waitUntil {not isNull player};

esInstructor = player getVariable["esInstructor", false];
esAspirante  = player getVariable["esAspirante", false];

if(esAspirante) then {
	player allowDamage false;
	private _animation = selectRandom ["kka3_unc_1_1", "kka3_unc_7","kka3_unc_7_1","kka3_unc_8"];
	[player, _animation] remoteExec ["switchMove", 0 , true];

	waitUntil {not isNil "despertarse"};
	[player, "UnconsciousOutProne"] remoteExec ["switchmove", 0, true];
	sleep 20;
	player allowDamage true;
};

_action0 = ["ZRCastigos","Castigos","",{},{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _action0] call ace_interact_menu_fnc_addActionToObject;
_statement1 = {
    [player] call ZR_fnc_castigoFlexiones;
};
_action1 = ["Flexiones","Castigo flexiones","",_statement1,{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","ZRCastigos"], _action1] call ace_interact_menu_fnc_addActionToObject;
_statement2 = {
    [player] call ZR_fnc_castigoSentadillas;
};
_action2 = ["Sentadillas","Castigo sentadillas","",_statement2,{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions","ZRCastigos"], _action2] call ace_interact_menu_fnc_addActionToObject;

[] execVM "dmb\dmb_addAction.sqf";