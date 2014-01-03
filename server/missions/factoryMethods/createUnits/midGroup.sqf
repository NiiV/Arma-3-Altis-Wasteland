//	@file Version: 1.0
//	@file Name: midGroup.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 21:58
//	@file Args:

if (!isServer) exitWith {};

private ["_group", "_pos", "_leader", "_man2", "_man3", "_man4", "_man5", "_man6", "_man7"];

_group = _this select 0;
_pos = _this select 1;

// Leader
_leader = _group createUnit ["O_Soldier_A_F", [(_pos select 0) + 10, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _leader;
_leader addUniform "U_B_CombatUniform_mcam";
_leader addVest "V_PlateCarrier1_rgr";
_leader addMagazine "30Rnd_65x39_caseless_mag";
_leader addMagazine "30Rnd_65x39_caseless_mag";
_leader addMagazine "30Rnd_65x39_caseless_mag";
_leader addWeapon "arifle_MX_F";
_leader addMagazine "RPG32_HE_F";
_leader addWeapon "launch_RPG32_F";
_leader addMagazine "RPG32_HE_F";
_leader setSkill ["aimingAccuracy",0.7];
_leader setSkill ["courage",1];
_leader setSkill ["aimingShake",0.8];
_leader setSkill ["aimingSpeed",0.9];
_leader setSkill ["spotDistance",1];
_leader setSkill ["spotTime",1];
_leader setSkill ["Endurance",1];
_leader setSkill ["commanding",1];
// Rifleman
_man2 = _group createUnit ["O_Soldier_A_F", [(_pos select 0) - 30, _pos select 1, 0], [], 1, "Form"];
removeAllAssignedItems _man2;
_man2 addUniform "U_B_CombatUniform_mcam_vest";
_man2 addVest "V_PlateCarrier1_rgr";
_man2 addMagazine "100Rnd_65x39_caseless_mag";
_man2 addMagazine "100Rnd_65x39_caseless_mag";
_man2 addWeapon "MX_SW_Hamr_pointer_F";
_man2 setSkill ["aimingAccuracy",0.7];
_man2 setSkill ["courage",1];
_man2 setSkill ["aimingShake",0.8];
_man2 setSkill ["aimingSpeed",0.9];
_man2 setSkill ["spotDistance",1];
_man2 setSkill ["spotTime",1];
_man2 setSkill ["Endurance",1];
_man2 setSkill ["commanding",1];
// Rifleman
_man3 = _group createUnit ["O_Soldier_A_F", [_pos select 0, (_pos select 1) + 30, 0], [], 1, "Form"];
removeAllAssignedItems _man3;
_man3 addUniform "U_B_CombatUniform_mcam_vest";
_man3 addVest "V_PlateCarrier1_rgr";
_man3 addMagazine "30Rnd_65x39_caseless_mag";
_man3 addMagazine "30Rnd_65x39_caseless_mag";
_man3 addMagazine "30Rnd_65x39_caseless_mag";
_man3 addWeapon "arifle_MX_F";
_man3 setSkill ["aimingAccuracy",0.7];
_man3 setSkill ["courage",1];
_man3 setSkill ["aimingShake",0.8];
_man3 setSkill ["aimingSpeed",0.9];
_man3 setSkill ["spotDistance",1];
_man3 setSkill ["spotTime",1];
_man3 setSkill ["Endurance",1];
_man3 setSkill ["commanding",1];
// Rifleman
_man4 = _group createUnit ["O_Soldier_A_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man4;
_man4 addUniform "U_B_CombatUniform_mcam_vest";
_man4 addVest "V_PlateCarrier1_rgr";
_man4 addMagazine "30Rnd_65x39_caseless_mag";
_man4 addMagazine "30Rnd_65x39_caseless_mag";
_man4 addMagazine "30Rnd_65x39_caseless_mag";
_man4 addWeapon "arifle_MX_F";
_man4 setSkill ["aimingAccuracy",0.7];
_man4 setSkill ["courage",1];
_man4 setSkill ["aimingShake",0.8];
_man4 setSkill ["aimingSpeed",0.9];
_man4 setSkill ["spotDistance",1];
_man4 setSkill ["spotTime",1];
_man4 setSkill ["Endurance",1];
_man4 setSkill ["commanding",1];
// Rifleman
_man5 = _group createUnit ["O_Soldier_A_F", [_pos select 0, (_pos select 1) + 40, 0], [], 1, "Form"];
removeAllAssignedItems _man5;
_man5 addUniform "U_B_CombatUniform_mcam_vest";
_man5 addVest "V_PlateCarrier1_rgr";
_man5 addMagazine "30Rnd_65x39_caseless_mag";
_man5 addMagazine "30Rnd_65x39_caseless_mag";
_man5 addMagazine "30Rnd_65x39_caseless_mag";
_man5 addWeapon "arifle_MX_F";
_man5 setSkill ["aimingAccuracy",0.7];
_man5 setSkill ["courage",1];
_man5 setSkill ["aimingShake",0.8];
_man5 setSkill ["aimingSpeed",0.9];
_man5 setSkill ["spotDistance",1];
_man5 setSkill ["spotTime",1];
_man5 setSkill ["Endurance",1];
_man5 setSkill ["commanding",1];
// Rifleman
_man6 = _group createUnit ["O_Soldier_A_F", [_pos select 0, (_pos select 1) - 30, 0], [], 1, "Form"];
removeAllAssignedItems _man6;
_man6 addUniform "U_B_CombatUniform_mcam_vest";
_man6 addVest "V_PlateCarrier1_rgr";
_man6 addMagazine "30Rnd_65x39_caseless_mag";
_man6 addMagazine "30Rnd_65x39_caseless_mag";
_man6 addMagazine "30Rnd_65x39_caseless_mag";
_man6 addMagazine "1Rnd_HE_GP25";
_man6 addMagazine "1Rnd_HE_GP25";
_man6 addMagazine "1Rnd_HE_GP25";
_man6 addWeapon " arifle_MX_F";
_man6 setSkill ["aimingAccuracy",0.7];
_man6 setSkill ["courage",1];
_man6 setSkill ["aimingShake",0.8];
_man6 setSkill ["aimingSpeed",0.9];
_man6 setSkill ["spotDistance",1];
_man6 setSkill ["spotTime",1];
_man6 setSkill ["Endurance",1];
_man6 setSkill ["commanding",1];
// Grenadier
_man7 = _group createUnit ["O_Soldier_A_F", [_pos select 0, (_pos select 1) - 40, 0], [], 1, "Form"];
removeAllAssignedItems _man7;
_man7 addUniform "U_B_CombatUniform_mcam_tshirt";
_man7 addVest "V_PlateCarrier1_rgr";
_man7 addMagazine "30Rnd_65x39_caseless_mag";
_man7 addMagazine "30Rnd_65x39_caseless_mag";
_man7 addWeapon "MX_GL_Holo_pointer_snds_F";
_man7 addMagazine "1Rnd_HE_Grenade_shell";
_man7 addMagazine "1Rnd_HE_Grenade_shell";
_man7 addMagazine "1Rnd_HE_Grenade_shell";
_man7 setSkill ["aimingAccuracy",0.7];
_man7 setSkill ["courage",1];
_man7 setSkill ["aimingShake",0.8];
_man7 setSkill ["aimingSpeed",0.9];
_man7 setSkill ["spotDistance",1];
_man7 setSkill ["spotTime",1];
_man7 setSkill ["Endurance",1];
_man7 setSkill ["commanding",1];
_leader = leader _group;

{
	_x spawn refillPrimaryAmmo;
	_x spawn addMilCap;
	_x addRating 9999999;
	_x addEventHandler ["Killed", {_this call server_playerDied; (_this select 1) call removeNegativeScore}];
} forEach units _group;

[_group, _pos] call defendArea;
