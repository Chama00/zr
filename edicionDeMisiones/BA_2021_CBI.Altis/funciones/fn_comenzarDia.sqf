private _pos = getPosATL lampi;
deleteVehicle lampi;
lampi = "Land_LampAirport_F" createVehicle _pos;
lampi setPosATL _pos; 

sleep 4;

[1] call ZR_fnc_toque;
sleep 3;

despertarse = true;
publicVariable "despertarse";
