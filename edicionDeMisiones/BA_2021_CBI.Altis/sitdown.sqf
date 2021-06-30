// Sit in chair for Players and AI by RickOShay
// Works with most chairs
// Requires Standup.sqf;
// For Players place following addaction in chair's init:
// this addAction ["<t color='#0099FF'>Sit Down</t>","scripts\sitdown.sqf"];
// For AI place the following in AI init - you need to name the chair
// null = [chair4, this] execvm "scripts\sitdown.sqf";

_chair = _this select 0;
_unit = _this select 1;

Gilles_fnc_chair = _chair;

private ["_cdir","_cpos"];
_cdir = (getDir _chair) + 180;
_cpos = getPosATL _chair;

_unit disableCollisionWith _chair;

if (typeof _chair == "TTT_BriefingChair") then {
	_unit setPos [(_cpos select 0), (_cpos select 1), (_cpos select 2)-0.9];
	} else {
	_unit setPos [_cpos select 0, (_cpos select 1), _cpos select 2];
};

if (typeof _chair == "TTT_BriefingChair") then {
	_unit setdir _cdir -90;} else {
	_unit setdir _cdir;
};

//[_unit, "HubSittingChairUA_move1"] remoteExec ["switchMove", 0,false];

laMochila = backpack _unit;
itemsLaMochila = backpackItems _unit;
removeBackpack _unit;

[_unit, "amovpknlmstpsraswrfldnon"] remoteExec ["switchMove", 0,false];
[_unit, selectRandom [
    "acex_sitting_HubSittingChairA_idle1",
    "acex_sitting_HubSittingChairA_idle2",
    "acex_sitting_HubSittingChairA_idle3",
    "acex_sitting_HubSittingChairB_idle1",
    "acex_sitting_HubSittingChairB_idle2",
    "acex_sitting_HubSittingChairB_idle3",
    "acex_sitting_HubSittingChairC_idle1",
    "acex_sitting_HubSittingChairC_idle2",
    "acex_sitting_HubSittingChairC_idle3"
    ]
] remoteExec ["switchMove", 0,true];


sentado = true;

if(sentado_firstTime) then 
{
	levantarse = ['Levantarse','Levantarse','',{[player, Gilles_fnc_chair] execVM "standup.sqf";},{sentado AND !sentado_firstTime}] call ace_interact_menu_fnc_createAction; [_unit, 1, ["ACE_SelfActions"], levantarse] call ace_interact_menu_fnc_addActionToObject;
	[player, 1, ["ACE_SelfActions", "Levantarse"], levantarse] call ace_interact_menu_fnc_addActionToObject;
	
	sentado_firstTime = false;

};

