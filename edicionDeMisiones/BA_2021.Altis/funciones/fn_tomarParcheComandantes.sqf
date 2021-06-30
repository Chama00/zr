this addAction ["<t color='#FF0000'>TOMAR PARCHE|RADIO</t>", 
{
switch (groupId (group player)) do
{
  case "espectro": {[player,"infanteria_des"] call BIS_fnc_setUnitInsignia;};
  case "_CABALLERIA": {[player,"blindados_des"] call BIS_fnc_setUnitInsignia;};
  case "_FAZR": {[player,"fazr_multicam"] call BIS_fnc_setUnitInsignia;};
  case "_PARACA": {[player,"paracas_multicam"] call BIS_fnc_setUnitInsignia;};
  case "_ECO": {[player,"espectros_multicam"] call BIS_fnc_setUnitInsignia;};
  default: {diag_log format ["El jugador %1 intentó tomar insignia con unidad inválida", player];};
};
}, nil,1.5,false,false,"","true",5,false,"",""];

this addAction ["<t color='#FF0000'>TOMAR PARCHE|RADIO</t>",  
{ 
switch (groupId (group player)) do 
{ 
  case "infanteria": {[player,"infanteria_des"] call BIS_fnc_setUnitInsignia;}; 
  case "caballeria": {[player,"blindados_des"] call BIS_fnc_setUnitInsignia;}; 
  case "fazr": {[player,"fazr_multicam"] call BIS_fnc_setUnitInsignia;};
  case "paraca": {[player,"paracas_multicam"] call BIS_fnc_setUnitInsignia;}; 
  case "espectro": {[player,"espectros_multicam"] call BIS_fnc_setUnitInsignia;}; 
  default {diag_log format ["El jugador %1 intentó tomar insignia con unidad inválida", player];}; 
};
if (rank player=="SERGEANT") then {player addItem "TFAR_anprc152";}; 
}, nil,1.5,false,false,"","true",5,false,"",""];



