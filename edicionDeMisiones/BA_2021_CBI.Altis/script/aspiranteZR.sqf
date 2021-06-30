// Corta el cabello, entrega parte del uniforme y el armamento al final, en cada fase

_fase      = _this select 0;
_aspirante = _this select 1;

switch _fase do 
{
	case 0: 
	{
		//Fase 1, quitar todo y sonar corte de pelo 
		[_aspirante, "pelo"] remoteExec ["say3D", -2, true];
		//playSound3D ["sfx\pelo.ogg", _aspirante];
		sleep 3;

		removeHeadgear _aspirante;
		removeGoggles _aspirante;
		removeVest _aspirante;
		removeBackpack _aspirante;
		removeUniform _aspirante;
		removeAllWeapons _aspirante;
		removeAllAssignedItems _aspirante;
		
		removeAllActions _aspirante;
	};

	case 1: 
	{
		[cucaracha_fase1, [missionNamespace, "cucaracha_fase1"], [], false ] call BIS_fnc_saveInventory;
		playSound "dress";

		[_aspirante,"AinvPercMstpSnonWnonDnon_G01"] remoteExec ["switchMove", 0];
		[_aspirante, [missionNamespace, "cucaracha_fase1"]] call BIS_fnc_loadInventory;
		
		hintSilent "Tomas y te colocas tu uniforme";
		fase1_ready = true;
	};

	case 2:
	{
		[cucaracha_fase2, [missionNamespace, "cucaracha_fase2"], [], false ] call BIS_fnc_saveInventory;
		playSound "undress";

		[_aspirante,"AinvPercMstpSnonWnonDnon_G01"] remoteExec ["switchMove", 0];
		[_aspirante, [missionNamespace, "cucaracha_fase2"]] call BIS_fnc_loadInventory;
		
		hintSilent "Tomas tu equipo básico";
		fase2_ready = true;
	};

	case 3:
	{
		[cucaracha_fase3, [missionNamespace, "cucaracha_fase3"], [], false ] call BIS_fnc_saveInventory;
		playSound "undress";

		_aspirante playAction "PutDown";
		//_aspirante playMove "AmovPercMstpSrasWrflDnon_AinvPknlMstpSlayWrflDnon";
		[_aspirante, [missionNamespace, "cucaracha_fase3"]] call BIS_fnc_loadInventory;
		
		hintSilent "Tomas el armamento del polvorín; equipo y fusil";
		fase3_ready = true;

	};
};