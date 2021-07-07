/*
###################################################################################
#										
# SCRIPT: AIrespawner							
# AUTOR:  Riquelme								
# FECHA:  3-12-2018							
# REV:    1.0
#               
# Descripción:  Crea unidades IA luego de que estas mismas han sido asesinadas. 
# 
# Uso:			Agregar en el init de cada unidad con respawn lo siguiente:
#
#				this addEventHandler ["Killed", {params ["_unit", "_killer"]; [_unit, _killer, TIEMPO, PANTERA] spawn AIrespawner;}];
#					
#				_unit y killer: son parámetros necesarios y no pueden cambiarse.
#				TIEMPO: integer, El tiempo en segundos que tomará la unidad en respawnear (ejemplo 10).								
#				PANTERA: boolean, si TRUE entonces toma la config que necesita Pantera (ejemplo true).									
#################################################################################
*/
_muerto   = _this select 0;
_asesino  = _this select 1;
AIrespawner_tiempo   = _this select 2; 
AIrespawner_pantera  = _this select 3;

//Inicio del script 
_postura  = stance _muerto;

if (_postura == "stand") then {_postura = "up";};

if (_postura == "crouch") then {_postura = "middle";};

if (_postura == "prone") then {_postura = "down";};


_posicion = getPosATL _muerto;
_dir      = getDir _muerto;
_clase    = typeOf _muerto;
deleteVehicle _muerto;


sleep AIrespawner_tiempo;

_nuevo = _clase createVehicle _posicion;

_nuevo setPosATL _posicion;
_nuevo setDir _dir;
_nuevo setUnitPos _postura;

_nuevo addEventHandler ["Killed", 
{	params ["_unit", "_killer"];
	[_unit, _killer, 60, true] spawn AIrespawner;
}];

if(AIrespawner_pantera) then 
{
	_nuevo disableAI "ALL";
	_nuevo enableAI "ANIM";
};

