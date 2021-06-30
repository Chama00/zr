// Standup for players by RickOShay
// Requires sitdown.sqf;

_unit = _this select 0;
_chair = _this select 1;

sleep 0.5;

_unit enableCollisionWith _chair;
_unit addBackpack laMochila;
{_unit addItemToBackpack _x} forEach itemsLaMochila;

[_unit, ""] remoteExec ["switchMove", 0,false];
_unit setPosATL [(getPosATL _chair select 0) -0.7, (getPosATL _chair select 1), getPosATL _chair select 2];
sentado = false;
