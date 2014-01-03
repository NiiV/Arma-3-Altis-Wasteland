//	@file Author: [404] Costlyy
//	@file Version: 1.0
//  @file Date:	21/11/2012	
//	@file Description: Locks an object until the player disconnects.
//	@file Args: [object,player,int,lockState(lock = 0 / unlock = 1)]

// Check if mutex lock is active.
if(R3F_LOG_mutex_local_verrou) exitWith {
	player globalChat STR_R3F_LOG_mutex_action_en_cours;
};

private["_locking", "_currObject", "_lockState", "_lockDuration", "_stringEscapePercent", "_interation", "_unlockDuration", "_totalDuration", "_uid"];

_currObject = _this select 0;
_lockState = _this select 3;
//_lockState = _this getVariable "objectLocked";
//_ownerId = _this getVariable "ownerId";
//2 cutText [format["Object _lockState %1", _lockState], "PLAIN DOWN", 1];
//player globalChat format["Unlock Variables [_currObject = %1, _lockState = %2]",_currObject,_lockState];
_totalDuration = 0;
_stringEscapePercent = "%";

switch (_lockState) do {
	case 0:{ // LOCK
		_uid = getPlayerUID player;
		R3F_LOG_mutex_local_verrou = true;
		_totalDuration = 5;
		_lockDuration = _totalDuration;
		_iteration = 0;
		2 cutText ["", "PLAIN DOWN", 1];
		
		player switchMove "AinvPknlMstpSlayWrflDnon_medic";
		
		for "_iteration" from 1 to _lockDuration do {
			
			if (player distance _currObject > 5 || !alive player) exitWith { // If the player is too far or dies, revert state.
				2 cutText ["Object lock interrupted...", "PLAIN DOWN", 1];
				R3F_LOG_mutex_local_verrou = false;
			};
			
			if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { // Keep the player locked in medic animation for the full duration of the unlock.
				player switchMove "AinvPknlMstpSlayWrflDnon_medic";
			};
			
			_lockDuration = _lockDuration - 1;
			_iterationPercentage = floor (_iteration / _totalDuration * 100);
			
			2 cutText [format["Object lock %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
			sleep 1;
			
			if (_iteration >= _totalDuration) exitWith { // Sleep a little extra to show that lock has completed.
				sleep 1;
				_currObject setVariable ["objectLocked", true, true];
				_currObject setVariable ["ownerId", _uid, true];
				_currObject addEventHandler ["GetIn", { player call fn_gearMenuChecks; }];
				2 cutText ["", "PLAIN DOWN", 1];
				R3F_LOG_mutex_local_verrou = false;
			}; 
		};
		
		player switchMove ""; // Redundant reset of animation state to avoid getting locked in animation.       
	};
	case 1:{ // UNLOCK
		_uid = getPlayerUID player;
		_ownerId = cursorTarget getVariable "ownerId";
		//player globalChat format["_uid = %1, _ownerId = %2.",_uid,_ownerId];
		if (_uid == _ownerId) then {
			R3F_LOG_mutex_local_verrou = true;
			_totalDuration = 5;
			_unlockDuration = _totalDuration;
			_iteration = 0;
			2 cutText ["", "PLAIN DOWN", 1];
			
			player switchMove "AinvPknlMstpSlayWrflDnon_medic";
			
			for "_iteration" from 1 to _unlockDuration do {
				
				if (player distance _currObject > 5 || !alive player) exitWith { // If the player is too far or dies, revert state.
					2 cutText ["Object unlock interrupted...", "PLAIN DOWN", 1];
					R3F_LOG_mutex_local_verrou = false;
				};
				
				if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { // Keep the player locked in medic animation for the full duration of the unlock.
					player switchMove "AinvPknlMstpSlayWrflDnon_medic";
				};
				
				_unlockDuration = _unlockDuration - 1;
				_iterationPercentage = floor (_iteration / _totalDuration * 100);
				
				2 cutText [format["Object unlock %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
				sleep 1;
				
				if (_iteration >= _totalDuration) exitWith { // Sleep a little extra to show that lock has completed
					sleep 1;
					_currObject setVariable ["objectLocked", false, true];
					//_currObject setVariable ["ownerId", "", true];
					_currObject removeEventHandler ["GetIn", 0];
					2 cutText ["", "PLAIN DOWN", 1];
					R3F_LOG_mutex_local_verrou = false;
				}; 
			};
		} else {
			cutText ["You are not the owner." , "PLAIN DOWN"];
		};
		player switchMove ""; // Redundant reset of animation state to avoid getting locked in animation.     
	};
	case false:{ // LOCK
		_uid = getPlayerUID player;
		R3F_LOG_mutex_local_verrou = true;
		_totalDuration = 5;
		_lockDuration = _totalDuration;
		_iteration = 0;
		2 cutText ["", "PLAIN DOWN", 1];
		
		player switchMove "AinvPknlMstpSlayWrflDnon_medic";
		
		for "_iteration" from 1 to _lockDuration do {
			
			if (player distance _currObject > 5 || !alive player) exitWith { // If the player is too far or dies, revert state.
				2 cutText ["Object lock interrupted...", "PLAIN DOWN", 1];
				R3F_LOG_mutex_local_verrou = false;
			};
			
			if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { // Keep the player locked in medic animation for the full duration of the unlock.
				player switchMove "AinvPknlMstpSlayWrflDnon_medic";
			};
			
			_lockDuration = _lockDuration - 1;
			_iterationPercentage = floor (_iteration / _totalDuration * 100);
			
			2 cutText [format["Object lock %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
			sleep 1;
			
			if (_iteration >= _totalDuration) exitWith { // Sleep a little extra to show that lock has completed.
				sleep 1;
				_currObject setVariable ["objectLocked", true, true];
				_currObject setVariable ["ownerId", _uid, true];
				_currObject addEventHandler ["GetIn", { player call fn_gearMenuChecks; }];
				2 cutText ["", "PLAIN DOWN", 1];
				R3F_LOG_mutex_local_verrou = false;
			}; 
		};
		
		player switchMove ""; // Redundant reset of animation state to avoid getting locked in animation.       
	};
	case true:{ // UNLOCK
		_uid = getPlayerUID player;
		_ownerId = cursorTarget getVariable "ownerId";
		//player globalChat format["_uid = %1, _ownerId = %2.",_uid,_ownerId];
		if (_uid == _ownerId) then {
			R3F_LOG_mutex_local_verrou = true;
			_totalDuration = 5;
			_unlockDuration = _totalDuration;
			_iteration = 0;
			2 cutText ["", "PLAIN DOWN", 1];
			
			player switchMove "AinvPknlMstpSlayWrflDnon_medic";
			
			for "_iteration" from 1 to _unlockDuration do {
				
				if (player distance _currObject > 5 || !alive player) exitWith { // If the player is too far or dies, revert state.
					2 cutText ["Object unlock interrupted...", "PLAIN DOWN", 1];
					R3F_LOG_mutex_local_verrou = false;
				};
				
				if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { // Keep the player locked in medic animation for the full duration of the unlock.
					player switchMove "AinvPknlMstpSlayWrflDnon_medic";
				};
				
				_unlockDuration = _unlockDuration - 1;
				_iterationPercentage = floor (_iteration / _totalDuration * 100);
				
				2 cutText [format["Object unlock %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
				sleep 1;
				
				if (_iteration >= _totalDuration) exitWith { // Sleep a little extra to show that lock has completed
					sleep 1;
					_currObject setVariable ["objectLocked", false, true];
					_currObject setVariable ["ownerId", "", true];
					_currObject removeEventHandler ["GetIn", 0];
					2 cutText ["", "PLAIN DOWN", 1];
					R3F_LOG_mutex_local_verrou = false;
				}; 
			};
		} else {
			cutText ["You are not the owner." , "PLAIN DOWN"];
		};
		player switchMove ""; // Redundant reset of animation state to avoid getting locked in animation.     
	};
	default{  // This should not happen... 
		diag_log format["WASTELAND DEBUG: An error has occured in LockStateMachine.sqf. _lockState was unknown. _lockState actual: %1", _lockState];
	};
	
	if !(R3F_LOG_mutex_local_verrou) then {
		R3F_LOG_mutex_local_verrou = false;
		diag_log format["WASTELAND DEBUG: An error has occured in LockStateMachine.sqf. Mutex lock was not reset. Mutex lock state actual: %1", R3F_LOG_mutex_local_verrou];
	}; 
};
