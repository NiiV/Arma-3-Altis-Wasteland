//	@file Version: 1.0
//	@file Name: fn_refillbox.sqf  "fn_refillbox"
//	@file Author: [404] Pulse , [404] Costlyy , [404] Deadbeat, AgentRev
//	@file Created: 22/1/2012 00:00
//	@file Args: [OBJECT (Weapons box that needs filling), STRING (Name of the fill to give to object)]

if (!isServer) exitWith {};

private ["_box", "_boxType", "_box", "_boxItems", "_mag"];
_box = _this select 0;
_boxType = _this select 1;

_box allowDamage false; // No more fucking busted crates

// Clear pre-existing cargo first
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearItemCargoGlobal _box;

switch (_boxType) do
{
    case "mission_USLaunchers":
 {
     _boxItems =
  [
   // Item type, Item class, # of items, # of magazines per weapon
   ["wep", "launch_NLAW_F", 1, 2],
   ["wep", "launch_RPG32_F", 1, 2],
   ["wep", "launch_Titan_F", 1, 2],
   ["wep", "aunch_Titan_short_F", 1, 2],
   ["mag", "ClaymoreDirectionalMine_Remote_Mag", 1],
   ["mag", "DemoCharge_Remote_Mag", 2],
   ["mag", "SatchelCharge_Remote_Mag", 2],
   ["mag", "ATMine_Range_Mag", 2],
   ["mag", "HandGrenade", 2],
   ["mag", "APERSMine_Range_Mag", 2],
   ["mag", "APERSTripMine_Wire_Mag", 2],
   ["itm", "V_TacVestIR_blk", 2 ],
   ["itm", "U_O_OfficerUniform_ocamo", 2 ],
   ["itm", "H_Shemag_olive", 2 ],
   ["mag", "MiniGrenade", 4 ]
   
  ];
    };
    case "mission_USSpecial":
 {
     _boxItems =
  [
   // Item type, Item class, # of items, # of magazines per weapon
   ["itm", "NVGoggles", 3],
   ["itm", "H_HelmetB", 3 ],
   ["itm", "U_I_CombatUniform", 3 ],
   ["itm", "V_Rangemaster_belt", 3 ],
   ["wep", "Binocular", 3],
   ["wep", "arifle_MXM_F", 1, 3],
   ["wep", "arifle_Katiba_ACO_F", 1, 3],
   ["wep", "arifle_MX_SW_F", 1, 3],
   ["wep", "LMG_Mk200_F", 1, 2],
   ["wep", "LMG_Zafir_F", 1, 2],
   ["mag", "30Rnd_65x39_caseless_mag", 8],
   ["mag", "30Rnd_65x39_caseless_green", 12],
   ["mag", "20Rnd_762x45_Mag", 5]
   
  ];
    };
    case "mission_USSpecial2":
 {
     _boxItems =
  [
   // Item type, Item class, # of items, # of magazines per weapon
   ["itm", "NVGoggles", 3],
   ["itm", "U_O_SpecopsUniform_ocamo", 3],
   ["itm", "V_HarnessO_brn", 3],
   ["itm", "H_CrewHelmetHeli_O", 3],
   ["wep", "arifle_Katiba_GL_F", 2, 5],
   ["wep", "arifle_MX_GL_F", 2, 5],
   ["mag", "1Rnd_HE_Grenade_shell", 10],
   ["mag", "SmokeShell", 2],
   ["mag", "SmokeShellPurple", 2],
   ["mag", "SmokeShellBlue", 2],
   ["mag", "SmokeShellGreen", 2],
   ["mag", "SmokeShellYellow", 2],
   ["mag", "SmokeShellOrange", 2],
   ["mag", "SmokeShellRed", 2],
   ["mag", "UGL_FlareWhite_F", 2],
   ["mag", "UGL_FlareGreen_F", 2],
   ["mag", "UGL_FlareYellow_F", 2],
   ["mag", "UGL_FlareRed_F", 2],
   ["mag", "UGL_FlareCIR_F", 2]
  ];
    };
 
 
     case "mission_USSpecial3":
 {
     _boxItems =
  [
   // Item type, Item class, # of items, # of magazines per weapon
   ["itm", "NVGoggles", 3],
   ["itm", "U_I_Wetsuit", 2],
   ["itm", "V_HarnessO_brn", 2],
   ["itm", "V_RebreatherIR", 2],
   ["wep", "arifle_Katiba_ARCO_pointer_snds_F", 2, 5],
   ["wep", "srifle_EBR_ARCO_pointer_snds_F", 1, 6]
    ];
    };
 
 
 
 case "mission_Main_A3snipers":
 {
     _boxItems =
  [
   // Item type, Item class, # of items, # of magazines per weapon
   ["itm", "NVGoggles", 2],
   ["itm", "U_B_GhillieSuit", 1],
   ["itm", "U_I_GhillieSuit", 1],
   ["itm", "optic_SOS", 1],
   ["itm", "optic_NVS", 1],
   ["wep", "srifle_GM6_F", 1, 7],
   ["wep", "srifle_LRR_F", 1, 5],
   ["wep", "srifle_EBR_F", 2, 6],
   ["wep", "Rangefinder", 2]
  ];
    };
};

// Add items
{
	switch (_x select 0) do
	{
		case "wep":
		{
			_box addWeaponCargoGlobal [_x select 1, _x select 2];
			
			if (count _x > 3 && {_x select 3 > 0}) then
			{
				_mag = ((getArray (configFile >> "CfgWeapons" >> (_x select 1) >> "magazines")) select 0) call getBallMagazine;
				_box addMagazineCargoGlobal [_mag, (_x select 2) * (_x select 3)];
			};
		};
		case "mag":
		{
			_box addMagazineCargoGlobal [_x select 1, _x select 2];
		};
		case "itm":
		{
			_box addItemCargoGlobal [_x select 1, _x select 2];
		};
	};
} forEach _boxItems;
