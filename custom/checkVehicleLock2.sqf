private ["_cTarget","_inVehicle","_lockState1"];
disableSerialization;
if (!isDedicated) then {
	while {true} do {
		sleep 0.1;
		_cTarget = cursorTarget;
		waitUntil {((vehicle player) != player)};
		_inVehicle = (vehicle player) != player;
		//player globalChat format["waitUntil condition met [condition = %1]",((vehicle player) != player)];
		//_lockState1 = cursorTarget getVariable "objectLocked";
		if(_inVehicle) then {
			//_cTarget = (vehicle player);
			_lockState1 = (vehicle player) getVariable "objectLocked";
			//player globalChat format["If (_inVehicle) then... condition met (true), _lockState1 = %1",_lockState1];
			switch (_lockState1) do {
				case null:{ // UNLOCKED
				
				};
				case false:{ // UNLOCKED
				
				};
				case true:{ // LOCKED
					// kick player from vehicle
					moveOut player;
					2 cutText ["Cannot enter a locked vehicle." , "PLAIN DOWN", 1];
				};
				case "0":{ // UNLOCKED
				
				};
				case "1":{ // LOCKED
					// kick player from vehicle
					moveOut player;
					2 cutText ["Cannot enter a locked vehicle." , "PLAIN DOWN", 1];
				};
			};
			sleep 0.5;
		};
		waitUntil {((vehicle player) == player)};
	};
};