params ["_toque"];

ZR_SPEAKER = allVariables missionNamespace select {_x find "zr_speaker" == 0};
ZR_SPEAKER = ZR_SPEAKER apply {missionNameSpace getVariable _x};

switch _toque do
{
	case 1:
	{
		_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
		_soundToPlay = _soundPath + "sonidos\toque1.ogg";
		{playSound3D [_soundToPlay, _x, false, getPosATL _x, 16, 1, 110]} forEach ZR_SPEAKER;
	};
	case 2:
	{
		_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
		_soundToPlay = _soundPath + "sonidos\toque2.ogg";
		{playSound3D [_soundToPlay, _x, false, getPosATL _x, 16, 1, 110]} forEach ZR_SPEAKER;
		sleep 12;
		{playSound3D [_soundToPlay, _x, false, getPosATL _x, 16, 1, 110]} forEach ZR_SPEAKER;
	};
	case 3:
	{
		_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
		_soundToPlay = _soundPath + "sonidos\toque3.ogg";
		{playSound3D [_soundToPlay, _x, false, getPosATL _x, 16, 1, 110]} forEach ZR_SPEAKER;
	};
	case 4:
	{
		_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
		_soundToPlay = _soundPath + "sonidos\toque4.ogg";
		{playSound3D [_soundToPlay, _x, false, getPosATL _x, 16, 1, 110]} forEach ZR_SPEAKER;
	};

};

