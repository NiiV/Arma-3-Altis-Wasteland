//	@file Version: 1.0
//	@file Name: setMissionSkill.sqf
//	@file Author: AgentRev
//	@file Created: 21/10/2013 19:14
//	@file Args:

if (!isServer) exitWith {};

private ["_unit", "_skill", "_accuracy"];
_unit = _this;

_skill = if (["A3W_missionsDifficulty", 0] call getPublicVar > 0) then { 0.9 } else { 0.9 };
_accuracy = if (["A3W_missionsDifficulty", 0] call getPublicVar > 0) then { 0.9 } else { 0.9 };

_unit allowFleeing 0;
_unit setSkill 1;
_unit setSkill ["aimingAccuracy", 0.7];
_unit setSkill ["courage",1];
_unit setSkill ["aimingShake",0.8];
_unit setSkill ["aimingSpeed",0.8];
_unit setSkill ["spotDistance",1];
_unit setSkill ["spotTime",0.8];
_unit setSkill ["Endurance",1];
_unit setSkill ["commanding",1];
