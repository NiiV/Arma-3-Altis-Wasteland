//	@file Version: 1.0
//	@file Name: largeGroup.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 08/12/2012 21:58
//	@file Args:

if (!isServer) exitWith {};

private ["_group","_pos","_leader","_man2","_man3","_man4","_man5","_man6","_man7","_man8","_man9","_man10"];

_group = _this select 0;
_pos = _this select 1;

//Anti Air no weapon
_leader = _group createunit ["O_Soldier_A_F", [(_pos select 0) + 30, _pos select 1, 0], [], 0.5, "Form"];
_leader addMagazine "100Rnd_65x39_caseless_mag";
_leader addMagazine "100Rnd_65x39_caseless_mag";
_leader addMagazine "100Rnd_65x39_caseless_mag";
_leader addWeapon "MX_SW_Hamr_pointer_F";
_leader setSkill ["aimingAccuracy",0.7];
_leader setSkill ["courage",1];
_leader setSkill ["aimingShake",0.8];
_leader setSkill ["aimingSpeed",0.9];
_leader setSkill ["spotDistance",1];
_leader setSkill ["spotTime",1];
_leader setSkill ["Endurance",1];
_leader setSkill ["commanding",1];

//Support
_man2 = _group createunit ["O_Soldier_A_F", [(_pos select 0) - 30, _pos select 1, 0], [], 0.5, "Form"];
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

//Rifle_man
_man3 = _group createunit ["O_Soldier_A_F", [_pos select 0, (_pos select 1) + 30, 0], [], 0.5, "Form"];
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

//Rifle_man
_man4 = _group createunit ["O_Soldier_A_F", [_pos select 0, (_pos select 1) + 40, 0], [], 0.5, "Form"];
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
//Sniper
_man5 = _group createunit ["O_Soldier_A_F", [_pos select 0, (_pos select 1) - 30, 0], [], 0.5, "Form"];
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
//Grenadier
_man6 = _group createunit ["O_Soldier_A_F", [_pos select 0, (_pos select 1) - 40, 0], [], 0.5, "Form"];
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

//Support
_man7 = _group createunit ["O_Soldier_A_F", [(_pos select 0) - 40, _pos select 1, 0], [], 0.5, "Form"];
_man7 addMagazine "30Rnd_65x39_caseless_mag";
_man7 addMagazine "30Rnd_65x39_caseless_mag";
_man7 addWeapon "MX_GL_Holo_pointer_snds_F";
_man7 setSkill ["aimingAccuracy",0.7];
_man7 setSkill ["courage",1];
_man7 setSkill ["aimingShake",0.8];
_man7 setSkill ["aimingSpeed",0.9];
_man7 setSkill ["spotDistance",1];
_man7 setSkill ["spotTime",1];
_man7 setSkill ["Endurance",1];
_man7 setSkill ["commanding",1];

//Grenadier
_man8 = _group createunit ["O_Soldier_A_F", [_pos select 0, (_pos select 1) + 50, 0], [], 0.5, "Form"];
_man8 addMagazine "30Rnd_65x39_caseless_mag";
_man8 addMagazine "30Rnd_65x39_caseless_mag";
_man8 addMagazine "30Rnd_65x39_caseless_mag";
_man8 addMagazine "1Rnd_HE_GP25";
_man8 addMagazine "1Rnd_HE_GP25";
_man8 addMagazine "1Rnd_HE_GP25";
_man8 addWeapon " arifle_MX_F";
_man8 setSkill ["aimingAccuracy",0.7];
_man8 setSkill ["courage",1];
_man8 setSkill ["aimingShake",0.8];
_man8 setSkill ["aimingSpeed",0.9];
_man8 setSkill ["spotDistance",1];
_man8 setSkill ["spotTime",1];
_man8 setSkill ["Endurance",1];
_man8 setSkill ["commanding",1];

//Sniper
_man9 = _group createunit ["O_Soldier_A_F", [_pos select 0, (_pos select 1) - 50, 0], [], 0.5, "Form"];
_man9 addMagazine "30Rnd_65x39_caseless_mag";
_man9 addMagazine "30Rnd_65x39_caseless_mag";
_man9 addMagazine "30Rnd_65x39_caseless_mag";
_man9 addWeapon "arifle_MX_F";
_man9 setSkill ["aimingAccuracy",0.7];
_man9 setSkill ["courage",1];
_man9 setSkill ["aimingShake",0.8];
_man9 setSkill ["aimingSpeed",0.9];
_man9 setSkill ["spotDistance",1];
_man9 setSkill ["spotTime",1];
_man9 setSkill ["Endurance",1];
_man9 setSkill ["commanding",1];
//Rifle_man
_man10 = _group createunit ["O_Soldier_A_F", [_pos select 0, (_pos select 1) + 30, 0], [], 0.5, "Form"];
_man10 addMagazine "30Rnd_65x39_caseless_mag";
_man10 addMagazine "30Rnd_65x39_caseless_mag";
_man10 addMagazine "30Rnd_65x39_caseless_mag";
_man10 addWeapon "arifle_MX_F";
_man10 setSkill ["aimingAccuracy",0.7];
_man10 setSkill ["courage",1];
_man10 setSkill ["aimingShake",0.8];
_man10 setSkill ["aimingSpeed",0.9];
_man10 setSkill ["spotDistance",1];
_man10 setSkill ["spotTime",1];
_man10 setSkill ["Endurance",1];
_man10 setSkill ["commanding",1];

_leader = leader _group;
[_group, _pos] call defendArea;