private ["_cTarget","_isOk","_display","_inVehicle","_lockState2"];
disableSerialization;
while {true} do {
	waitUntil {!isnull (findDisplay 602)};
	_display = findDisplay 602;
	_inVehicle = (vehicle player) != player;
	_cTarget = cursorTarget;
	_lockState2 = cursorTarget getVariable "objectLocked";
	//player globalChat format["Gear open [_display = %1, _inVehicle = %2, _cTarget = %3, _lockState2 = %4]",_display,_inVehicle,_cTarget,_lockState2];
	if(((vehicle player) distance _cTarget) < 12) then {
		switch (_lockState2) do {
			case null:{ // UNLOCKED
			
			};
			case false:{ // UNLOCKED
			
			};
			case true:{ // LOCKED
				cutText ["Cannot access gear in a locked vehicle." , "PLAIN DOWN"];
				_display closeDisplay 1;
			};
			case "0":{ // UNLOCKED
			
			};
			case "1":{ // LOCKED
				cutText ["Cannot access gear in a locked vehicle." , "PLAIN DOWN"];
				_display closeDisplay 1;
			};
		};


	};
	//waitUntil {isnull (findDisplay 602)};
	//player globalChat "Gear closed";
};
