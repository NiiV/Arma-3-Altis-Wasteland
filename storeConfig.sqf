/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

pistolArray = compileFinal str
[
        // Handguns
    ["P07 Pistol", "hgun_P07_F", 150],
        ["Rook-40 Pistol", "hgun_Rook40_F", 150],
        ["ACP-C2 Pistol", "hgun_ACPC2_F", 175],
        ["Zubr Revolver", "hgun_Pistol_heavy_02_F", 175],
        ["4-Five Pistol", "hgun_Pistol_heavy_01_F", 200]
];

smgArray = compileFinal str
[
        ["PDW2000 SMG", "hgun_PDW2000_F", 250],
        ["Sting SMG", "SMG_02_F", 300],
        ["Vermin SMG", "SMG_01_F", 300]
];

rifleArray = compileFinal str
[
    // Underwater Gun
        ["SDAR Underwater Rifle", "arifle_SDAR_F", 100],

        // Assault Rifles
        ["Mk20 Carbine", "arifle_Mk20C_F", 150],
        ["Mk20 Rifle", "arifle_Mk20_F", 200],        
        ["Mk20 EGLM Rifle", "arifle_Mk20_GL_F", 250],

        ["TRG-20 Carbine", "arifle_TRG20_F", 150],        
        ["TRG-21 Rifle ", "arifle_TRG21_F", 200],
        ["TRG-21 EGLM Rifle", "arifle_TRG21_GL_F", 250],

        ["Katiba Carbine", "arifle_Katiba_C_F", 150],
        ["Katiba Rifle", "arifle_Katiba_F", 200],
        ["Katiba GL Rifle", "arifle_Katiba_GL_F", 250],
        
        ["MX Carbine", "arifle_MXC_F", 150],
        ["MX Rifle", "arifle_MX_F", 200],
        ["MX 3GL Rifle", "arifle_MX_GL_F", 250],
        
        // Markman Rifles
        ["MXM Rifle", "arifle_MXM_F", 450],
        ["DMR Rifle", "srifle_DMR_01_F", 500],
        ["Mk18 ABR Rifle", "srifle_EBR_F", 550],

        // Sniper Rifles
        ["M320 LRR Sniper", "srifle_LRR_F", 1000],
        ["GM6 Lynx Sniper", "srifle_GM6_F", 1000]
];

lmgArray = compileFinal str
[
        ["MX SW LMG", "arifle_MX_SW_F", 400],
        ["Mk200 LMG", "LMG_Mk200_F", 450],
        ["Zafir LMG", "LMG_Zafir_F", 500]
];

shotgunArray = compileFinal str
[
        // Currently unused
];

launcherArray = compileFinal str
[
        ["RPG-42 Alamut", "launch_RPG32_F", 400],
        ["PCML", "launch_NLAW_F", 500],
        ["Titan MPRL Compact", "launch_Titan_short_F", 600],
        ["Titan MPRL AA", "launch_Titan_F", 600]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call shotgunArray + call launcherArray);

staticGunsArray = compileFinal str
[
    ["Mk30 HMG .50 Low (NATO)", "B_HMG_01_F", 5000],
    ["Mk30 HMG .50 Low (CSAT)", "O_HMG_01_F", 5000],
        ["Mk30 HMG .50 Low (AAF)", "I_HMG_01_F", 5000],
        // ["Mk30A HMG .50 (NATO)", "B_HMG_01_A_F", 5300], // "A" = Autonomous = Overpowered
        // ["Mk30A HMG .50 (CSAT)", "O_HMG_01_A_F", 5300],
        // ["Mk30A HMG .50 (AAF)", "I_HMG_01_A_F", 5300],
        ["Mk30 HMG .50 Raised (NATO)", "B_HMG_01_high_F", 5500],
        ["Mk30 HMG .50 Raised (CSAT)", "O_HMG_01_high_F", 5500],
        ["Mk30 HMG .50 Raised (AAF)", "I_HMG_01_high_F", 5500],
        ["Mk32 GMG 20mm Low (NATO)", "B_GMG_01_F", 7500],
        ["Mk32 GMG 20mm Low (CSAT)", "O_GMG_01_F", 7500],
        ["Mk32 GMG 20mm Low (AAF)", "I_GMG_01_F", 7500],
        // ["Mk32A GMG 20mm (NATO)", "B_GMG_01_A_F", 7700],
        // ["Mk32A GMG 20mm (CSAT)", "O_GMG_01_A_F", 7700],
        // ["Mk32A GMG 20mm (AAF)", "I_GMG_01_A_F", 7700],
        ["Mk32 GMG 20mm Raised (NATO)", "B_GMG_01_high_F", 8000],
        ["Mk32 GMG 20mm Raised (CSAT)", "O_GMG_01_high_F", 8000],
        ["Mk32 GMG 20mm Raised (AAF)", "I_GMG_01_high_F", 8000],
        ["Static Titan AT (NATO)", "B_static_AT_F", 11000],
        ["Static Titan AT (CSAT)", "O_static_AT_F", 11000],
        ["Static Titan AT (AAF)", "I_static_AT_F", 11000],
        ["Static Titan AA (NATO)", "B_static_AA_F", 12000],
        ["Static Titan AA (CSAT)", "O_static_AA_F", 12000],
        ["Static Titan AA (AAF)", "I_static_AA_F", 12000],
        ["Mk6 Mortar (NATO)", "B_Mortar_01_F", 15000],
        ["Mk6 Mortar (CSAT)", "O_Mortar_01_F", 15000],
        ["Mk6 Mortar (AAF)", "I_Mortar_01_F", 15000],
        ["Mk6 Mortar (FIA)", "B_G_Mortar_01_F", 15000]
]; 

throwputArray = compileFinal str
[
        ["Mini Grenade", "MiniGrenade", 50],
        ["Frag Grenade", "HandGrenade", 100],
        ["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 100],
        ["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 150],
        ["APERS Mine", "APERSMine_Range_Mag", 200],
        ["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 250],
        ["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 250],
        ["AT Mine", "ATMine_Range_Mag", 300],
        ["Explosive Charge", "DemoCharge_Remote_Mag", 350],
        ["Explosive Satchel", "SatchelCharge_Remote_Mag", 300],
        ["Smoke Grenade (White)", "SmokeShell", 50],
        ["Smoke Grenade (Purple)", "SmokeShellPurple", 50],
        ["Smoke Grenade (Blue)", "SmokeShellBlue", 50],
        ["Smoke Grenade (Green)", "SmokeShellGreen", 50],
        ["Smoke Grenade (Yellow)", "SmokeShellYellow", 50],
        ["Smoke Grenade (Orange)", "SmokeShellPurple", 50],
        ["Smoke Grenade (Red)", "SmokeShellRed", 50]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
        ["9mm 16Rnd Mag", "16Rnd_9x21_Mag", 100],
        ["9mm 30Rnd Mag", "30Rnd_9x21_Mag", 200],
        [".45 ACP 6Rnd Cylinder", "6Rnd_45ACP_Cylinder", 50],
        [".45 ACP 9Rnd Mag", "9Rnd_45ACP_Mag", 100],
        [".45 ACP 11Rnd Mag", "11Rnd_45ACP_Mag", 150],
        [".45 ACP 30Rnd Vermin Mag", "30Rnd_45ACP_MAG_SMG_01", 200],
        [".45 ACP 30Rnd Tracer (Green) Mag", "30Rnd_45ACP_Mag_SMG_01_tracer_green", 150],
        ["5.56mm 20Rnd Underwater Mag", "20Rnd_556x45_UW_mag", 100],
        ["5.56mm 30Rnd STANAG Mag", "30Rnd_556x45_Stanag", 200],
        ["5.56mm 30Rnd Tracer (Green) Mag", "30Rnd_556x45_Stanag_Tracer_Green", 150],
        ["5.56mm 30Rnd Tracer (Yellow) Mag", "30Rnd_556x45_Stanag_Tracer_Yellow", 150],
        ["5.56mm 30Rnd Tracer (Red) Mag", "30Rnd_556x45_Stanag_Tracer_Red", 150],
        ["6.5mm 30Rnd STANAG Mag", "30Rnd_65x39_caseless_mag", 200],
        ["6.5mm 30Rnd Tracer (Red) Mag", "30Rnd_65x39_caseless_mag_Tracer", 150],
        ["6.5mm 30Rnd Caseless Mag", "30Rnd_65x39_caseless_green", 200],
        ["6.5mm 30Rnd Tracer (Green) Mag", "30Rnd_65x39_caseless_green_mag_Tracer", 150],
        ["6.5mm 100Rnd Belt Case", "100Rnd_65x39_caseless_mag", 750],
        ["6.5mm 100Rnd Tracer (Red) Belt Case", "100Rnd_65x39_caseless_mag_Tracer", 500],
        ["6.5mm 200Rnd Belt Case", "200Rnd_65x39_cased_Box", 500],
        ["6.5mm 200Rnd Tracer (Green) Belt Case", "200Rnd_65x39_cased_Box_Tracer", 500],
        ["7.62mm 10Rnd Mag", "10Rnd_762x51_Mag", 250],
        ["7.62mm 20Rnd Mag", "20Rnd_762x51_Mag", 250],
        ["7.62mm 150Rnd Box", "150Rnd_762x51_Box", 750],
        ["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x51_Box_Tracer", 750],
        [".408 7Rnd Cheetah Mag", "7Rnd_408_Mag", 350],
        ["12.7mm 5Rnd Mag", "5Rnd_127x108_Mag", 350],
        ["RPG-42 Missile", "RPG32_F", 700],        // Direct damage: high   | Splash damage: low    | Guidance: none
        ["RPG-42 HE Missile", "RPG32_HE_F", 700],  // Direct damage: medium | Splash damage: medium | Guidance: none
        ["PCML Missile", "NLAW_F", 700],           // Direct damage: high   | Splash damage: low    | Guidance: laser, land vehicles
        ["Titan AT Missile", "Titan_AT", 700],     // Direct damage: high   | Splash damage: low    | Guidance: mouse, laser, land vehicles
        ["Titan AP Missile", "Titan_AP", 700],     // Direct damage: low    | Splash damage: high   | Guidance: mouse, laser
        ["Titan AA Missile", "Titan_AA", 700],     // Direct damage: low    | Splash damage: high   | Guidance: aircraft
        ["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 500],
        ["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 500],
        ["40mm Flare Round (White)", "UGL_FlareWhite_F", 25],
        ["40mm Flare Round (Green)", "UGL_FlareGreen_F", 25],
        ["40mm Flare Round (Yellow)", "UGL_FlareYellow_F", 25],
        ["40mm Flare Round (Red)", "UGL_FlareRed_F", 25],
        ["40mm Flare Round (IR)", "UGL_FlareCIR_F", 25],
        ["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 50],
        ["40mm Smoke Round (Purple)", "1Rnd_SmokePurple_Grenade_shell", 50],
        ["40mm Smoke Round (Blue)", "1Rnd_SmokeBlue_Grenade_shell", 50],
        ["40mm Smoke Round (Green)", "1Rnd_SmokeGreen_Grenade_shell", 50],
        ["40mm Smoke Round (Yellow)", "1Rnd_SmokeYellow_Grenade_shell", 50],
        ["40mm Smoke Round (Orange)", "1Rnd_SmokeOrange_Grenade_shell", 50],
        ["40mm Smoke Round (Red)", "1Rnd_SmokeRed_Grenade_shell", 50],
        ["40mm 3Rnd Flares (White)", "3Rnd_UGL_FlareWhite_F", 50],
        ["40mm 3Rnd Flares (Green)", "3Rnd_UGL_FlareGreen_F", 50],
        ["40mm 3Rnd Flares (Yellow)", "3Rnd_UGL_FlareYellow_F", 50],
        ["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 50],
        ["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 50],
        ["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 100],
        ["40mm 3Rnd Smokes (Purple)", "3Rnd_SmokePurple_Grenade_shell", 100],
        ["40mm 3Rnd Smokes (Blue)", "3Rnd_SmokeBlue_Grenade_shell", 100],
        ["40mm 3Rnd Smokes (Green)", "3Rnd_SmokeGreen_Grenade_shell", 100],
        ["40mm 3Rnd Smokes (Yellow)", "3Rnd_SmokeYellow_Grenade_shell", 100],
        ["40mm 3Rnd Smokes (Orange)", "3Rnd_SmokeOrange_Grenade_shell", 100],
        ["40mm 3Rnd Smokes (Red)", "3Rnd_SmokeRed_Grenade_shell", 100]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
        ["Suppressor 9mm", "muzzle_snds_L", 200, "item"],
        ["Suppressor .45 ACP", "muzzle_snds_acp", 210, "item"],
        ["Suppressor 5.56mm", "muzzle_snds_M", 400, "item"],
        ["Suppressor 6.5mm", "muzzle_snds_H", 700, "item"],
        ["Suppressor 6.5mm LMG", "muzzle_snds_H_MG", 700, "item"],
        ["Suppressor 7.62mm", "muzzle_snds_B", 1000, "item"],
        ["Flashlight", "acc_flashlight", 100, "item"],
        ["IR Laser Pointer", "acc_pointer_IR", 100, "item"],
        ["Yorris Zubr Sight", "optic_Yorris", 250, "item"],
        ["MRD 4-Five Sight", "optic_MRD", 250, "item"],
        ["Holosight (CQB)", "optic_Holosight_smg", 250, "item"],
        ["ACO (Red)", "optic_Aco", 700, "item"],
        ["ACO (Green)", "optic_Aco_grn", 700, "item"],
        ["Holosight", "optic_Holosight", 275, "item"],
        ["MRCO", "optic_MRCO", 700, "item"],
        ["ARCO", "optic_Arco", 700, "item"],
        ["RCO", "optic_Hamr", 700, "item"],
        ["DMS", "optic_DMS", 2000, "item"],
        ["SOS", "optic_SOS", 2000, "item"],
        //["NVS", "optic_NVS", 400, "item"],
        //["TWS", "optic_tws", 600, "item"],
        //["TWS MG", "optic_tws_mg", 650, "item"],
        ["Nightstalker", "optic_Nightstalker", 56000, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
        ["Bandanna (Coyote)", "H_Bandanna_cbr", 10, "hat"],
        ["Bandanna (Camo)", "H_Bandanna_camo", 10, "hat"],
        ["Bandanna (Gray)", "H_Bandanna_gry", 10, "hat"],
        ["Bandanna (Khaki)", "H_Bandanna_khk", 10, "hat"],
        ["Bandanna (MTP)", "H_Bandanna_mcamo", 10, "hat"],
        ["Bandanna (Sage)", "H_Bandanna_sgg", 10, "hat"],
        ["Bandanna (Surfer)", "H_Bandanna_surfer", 10, "hat"],
        // ["Bandanna Mask (Black)", "H_BandMask_blk", 10, "hat"],
        // ["Bandanna Mask (Demon)", "H_BandMask_demon", 10, "hat"],
        // ["Bandanna Mask (Khaki)", "H_BandMask_khk", 10, "hat"],
        // ["Bandanna Mask (Reaper)", "H_BandMask_reaper", 10, "hat"],
        ["Beanie (Black)", "H_Watchcap_blk", 10, "hat"],
        // ["Beanie (Camo)", "H_Watchcap_camo", 10, "hat"],
        // ["Beanie (Khaki)", "H_Watchcap_khk", 10, "hat"],
        // ["Beanie (Sage)", "H_Watchcap_sgg", 10, "hat"],
        ["Beret (Black)", "H_Beret_blk", 25, "hat"],
        // ["Beret (Green)", "H_Beret_grn", 25, "hat"],
        // ["Beret (Police)", "H_Beret_blk_POLICE", 25, "hat"],
        // ["Beret (Red)", "H_Beret_red", 25, "hat"],
        // ["Beret (SAS)", "H_Beret_brn_SF", 25, "hat"],
        // ["Beret (SF)", "H_Beret_grn_SF", 25, "hat"],
        // ["Beret (RED)", "H_Beret_ocamo", 25, "hat"],
        // ["Black Turban", "H_TurbanO_blk", 50, "hat"],
        // ["Booniehat (Dirty)", "H_Booniehat_dirty", 25, "hat"],
        // ["Booniehat (Green)", "H_Booniehat_grn", 25, "hat"],
        // ["Booniehat (Khaki)", "H_Booniehat_indp", 25, "hat"],
        ["Booniehat (Tan)", "H_Booniehat_tan", 25, "hat"],
        ["Booniehat (MTP)", "H_Booniehat_mcamo", 25, "hat"],
        // ["Booniehat (Hex)", "H_Booniehat_khk", 25, "hat"],
        ["Booniehat (Digi)", "H_Booniehat_dgtl", 25, "hat"],
        ["Fedora (Blue)", "H_Hat_blue", 25, "hat"],
        ["Fedora (Brown)", "H_Hat_brown", 25, "hat"],
        ["Fedora (Camo)", "H_Hat_camo", 25, "hat"],
        ["Fedora (Checker)", "H_Hat_checker", 25, "hat"],
        ["Fedora (Gray)", "H_Hat_grey", 25, "hat"],
        ["Fedora (Tan)", "H_Hat_tan", 25, "hat"],
        ["Cap (Black)", "H_Cap_blk", 25, "hat"],
        ["Cap (Blue)", "H_Cap_blu", 25, "hat"],
        ["Cap (Green)", "H_Cap_grn", 25, "hat"],
        ["Cap (Olive)", "H_Cap_oli", 25, "hat"],
        ["Cap (Red)", "H_Cap_red", 25, "hat"],
        ["Cap (Tan)", "H_Cap_tan", 25, "hat"],
        ["Cap (BI)", "H_Cap_grn_BI", 25, "hat"],
        ["Cap (CMMG)", "H_Cap_blk_CMMG", 25, "hat"],
        ["Cap (ION)", "H_Cap_blk_ION", 25, "hat"],
        ["Cap (Raven Security)", "H_Cap_blk_Raven", 25, "hat"],
        ["Cap (SAS)", "H_Cap_khaki_specops_UK", 25, "hat"],
        ["Cap (SF)", "H_Cap_tan_specops_US", 25, "hat"],
        ["Cap (SPECOPS)", "H_Cap_brn_SPECOPS", 25, "hat"],
        // ["Shemag (Khaki)", "H_ShemagOpen_khk", 25, "hat"],
        ["Shemag (Tan)", "H_ShemagOpen_tan", 25, "hat"],
        ["Shemag mask (Khaki)", "H_Shemag_khk", 25, "hat"],
        ["Shemag mask (Olive)", "H_Shemag_olive", 25, "hat"],
        // ["Shemag mask (Tan)", "H_Shemag_tan", 25, "hat"],
        ["Straw Hat", "H_StrawHat", 25, "hat"],
        ["Straw Hat (Dark)", "H_StrawHat_dark", 25, "hat"],
        ["Military Cap (Blue)", "H_MilCap_blue", 25, "hat"],
        ["Military Cap (Gray)", "H_MilCap_gry", 25, "hat"],
        ["Military Cap (Urban)", "H_MilCap_oucamo", 25, "hat"],
        ["Military Cap (Russia)", "H_MilCap_rucamo", 25, "hat"],
        ["Military Cap (MTP)", "H_MilCap_mcamo", 25, "hat"],
        ["Military Cap (Hex)", "H_MilCap_ocamo", 25, "hat"],
        ["Military Cap (AAF)", "H_MilCap_dgtl", 25, "hat"],
        ["Rangemaster Cap", "H_Cap_headphones", 25, "hat"],
        ["ECH", "H_HelmetB", 100, "hat"],
        // ["ECH (Camo)", "H_HelmetB_camo", 100, "hat"],
        ["ECH (Light)", "H_HelmetB_light", 100, "hat"],
        // ["ECH (Spraypaint)", "H_HelmetB_paint", 100, "hat"],
        ["MICH", "H_HelmetIA", 100, "hat"],
        // ["MICH (Camo)", "H_HelmetIA_net", 100, "hat"],
        // ["MICH 2 (Camo)", "H_HelmetIA_camo", 100, "hat"],
        ["SF Helmet", "H_HelmetSpecB", 400, "hat"],
        // ["SF Helmet (Black)", "H_HelmetSpecB_blk", 400, "hat"],
        // ["SF Helmet (Light Paint)", "H_HelmetSpecB_paint1", 400, "hat"],
        // ["SF Helmet (Dark Paint)", "H_HelmetSpecB_paint2", 400, "hat"],
        // ["Combat Helmet (Black)", "H_HelmetB_plain_blk", 100, "hat"],
        // ["Combat Helmet (Camo)", "H_HelmetB_plain_blk", 100, "hat"],
        ["Protector Helmet (Hex)", "H_HelmetO_ocamo", 100, "hat"],
        ["Protector Helmet (Urban)", "H_HelmetO_oucamo", 100, "hat"],
        // ["Assassin Helmet (Hex)", "H_HelmetSpecO_ocamo", 250, "hat"],
        ["Assassin Helmet (Black)", "H_HelmetSpecO_blk", 250, "hat"],
        // ["Defender Helmet (Hex)", "H_HelmetLeaderO_ocamo", 400, "hat"],
        // ["Defender Helmet (Urban)", "H_HelmetLeaderO_oucamo", 400, "hat"],
        ["Heli Crew Helmet (NATO)", "H_CrewHelmetHeli_B", 400, "hat"],
        ["Heli Crew Helmet (CSAT)", "H_CrewHelmetHeli_O", 400, "hat"],
        ["Heli Crew Helmet (AAF)", "H_CrewHelmetHeli_I", 400, "hat"],
        ["Heli Pilot Helmet (NATO)", "H_PilotHelmetHeli_B", 400, "hat"],
        ["Heli Pilot Helmet (CSAT)", "H_PilotHelmetHeli_O", 400, "hat"],
        ["Heli Pilot Helmet (AAF)", "H_PilotHelmetHeli_I", 400, "hat"],        
        ["Crew Helmet (NATO)", "H_HelmetCrew_B", 400, "hat"],
        ["Crew Helmet (CSAT)", "H_HelmetCrew_O", 400, "hat"],
        ["Crew Helmet (AAF)", "H_HelmetCrew_I", 400, "hat"],
        ["Pilot Helmet (NATO)", "H_PilotHelmetFighter_B", 400, "hat"],
        ["Pilot Helmet (CSAT)", "H_PilotHelmetFighter_O", 400, "hat"],
        ["Pilot Helmet (AAF)", "H_PilotHelmetFighter_I", 400, "hat"]
];

uniformArray = compileFinal str
[
        ["Default Uniform (NATO)", "U_B_CombatUniform_mcam", 50, "uni"],
        ["Default Uniform (CSAT)", "U_O_CombatUniform_ocamo", 50, "uni"],
        ["Default Uniform (AAF)", "U_I_CombatUniform", 50, "uni"],
        ["Ghillie Suit (NATO)", "U_B_GhillieSuit", 2500, "uni"],
        ["Ghillie Suit (CSAT)", "U_O_GhillieSuit", 2500, "uni"],
        ["Ghillie Suit (AAF)", "U_I_GhillieSuit", 2500, "uni"],
        ["Wetsuit (NATO)", "U_B_Wetsuit", 700, "uni"],
        ["Wetsuit (CSAT)", "U_O_Wetsuit", 700, "uni"],
        ["Wetsuit (AAF)", "U_I_Wetsuit", 700, "uni"],
        ["Recon Fatigues (MTP)", "U_B_CombatUniform_mcam_vest", 100, "uni"],
        ["Recon Fatigues (Sage)", "U_B_SpecopsUniform_sgg", 100, "uni"],
        ["Recon Fatigues (Hex)", "U_O_SpecopsUniform_ocamo", 100, "uni"],
        ["Recon Fatigues (Black)", "U_O_SpecopsUniform_blk", 100, "uni"],
        ["Fatigues (Urban)", "U_O_CombatUniform_oucamo", 100, "uni"],
        ["Combat Fatigues Short (Digi)", "U_I_CombatUniform_shortsleeve", 100, "uni"],
        ["Combat Fatigues Shirt (Digi)", "U_I_CombatUniform_tshirt", 100, "uni"],
        ["Officer Fatigues (Hex)", "U_O_OfficerUniform_ocamo", 100, "uni"],
        ["Officer Fatigues (Digi)", "U_I_OfficerUniform", 100, "uni"],
        ["Pilot Coveralls (NATO)", "U_B_PilotCoveralls", 100, "uni"],
        ["Pilot Coveralls (CSAT)", "U_O_PilotCoveralls", 100, "uni"],
        ["Pilot Coveralls (AAF)", "U_I_pilotCoveralls", 100, "uni"],
        ["Heli Pilot Coveralls (NATO)", "U_B_HeliPilotCoveralls", 100, "uni"],
        ["Heli Pilot Coveralls (AAF)", "U_I_HeliPilotCoveralls", 100, "uni"],
        ["Guerilla Smocks 1", "U_IG_Guerilla1_1", 100, "uni"],
        ["Guerilla Smocks 2", "U_IG_Guerilla2_1", 100, "uni"],
        ["Guerilla Smocks 3", "U_IG_Guerilla2_2", 100, "uni"],
        ["Guerilla Smocks 4", "U_IG_Guerilla2_3", 100, "uni"],
        ["Guerilla Smocks 5", "U_IG_Guerilla3_1", 100, "uni"],
        ["Guerilla Smocks 6", "U_IG_Guerilla3_2", 100, "uni"],
        ["Guerilla Smocks 7", "U_IG_leader", 100, "uni"],
        ["Worker Coveralls", "U_C_WorkerCoveralls", 50, "uni"],
        ["T-Shirt (Blue)", "U_C_Poor_1", 50, "uni"],
        ["Polo (Red/white)", "U_C_Poloshirt_redwhite", 50, "uni"],
        ["Polo (Salmon)", "U_C_Poloshirt_salmon", 50, "uni"],
        ["Polo (Tri-color)", "U_C_Poloshirt_tricolour", 50, "uni"],
        ["Polo (Navy)", "U_C_Poloshirt_blue", 50, "uni"],
        ["Polo (Burgundy)", "U_C_Poloshirt_burgundy", 50, "uni"],
        ["Polo (Blue/green)", "U_C_Poloshirt_stripped", 50, "uni"],
        ["Polo (Competitor)", "U_Competitor", 50, "uni"],
        ["Polo (Rangemaster)", "U_Rangemaster", 50, "uni"]
];

vestArray = compileFinal str
[
        ["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
        ["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
        ["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"],
        ["Carrier Lite (Green)", "V_PlateCarrier1_rgr", 450, "vest"],
        ["Carrier Rig (Green)", "V_PlateCarrier3_rgr", 450, "vest"],
        ["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", 450, "vest"],
        ["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", 450, "vest"],
        ["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", 450, "vest"],
        ["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", 450, "vest"],
        ["LBV Harness", "V_HarnessO_brn", 450, "vest"],
        ["LBV Grenadier Harness", "V_HarnessOGL_brn", 450, "vest"],
        ["ELBV Harness", "V_HarnessOSpec_brn", 450, "vest"],
        ["Slash Bandolier (Black)", "V_BandollierB_blk", 450, "vest"],
        ["Slash Bandolier (Coyote)", "V_BandollierB_cbr", 450, "vest"],
        ["Slash Bandolier (Green)", "V_BandollierB_rgr", 450, "vest"],
        ["Slash Bandolier (Khaki)", "V_BandollierB_khk", 450, "vest"],
        ["Slash Bandolier (Olive)", "V_BandollierB_oli", 450, "vest"],
        ["Chest Rig (Khaki)", "V_Chestrig_khk", 450, "vest"],
        ["Chest Rig (Green)", "V_Chestrig_rgr", 450, "vest"],
        ["Fighter Chestrig (Black)", "V_Chestrig_blk", 450, "vest"],
        ["Fighter Chestrig (Olive)", "V_Chestrig_oli", 450, "vest"],
        ["Tactical Vest (Black)", "V_TacVest_blk", 450, "vest"],
        ["Tactical Vest (Brown)", "V_TacVest_brn", 450, "vest"],
        ["Tactical Vest (Camo)", "V_TacVest_camo", 450, "vest"],
        ["Tactical Vest (Khaki)", "V_TacVest_khk", 450, "vest"],
        ["Tactical Vest (Olive)", "V_TacVest_oli", 450, "vest"],
        ["Tactical Vest (Police)", "V_TacVest_blk_POLICE", 800, "vest"],
        ["Raven Vest", "V_TacVestIR_blk", 450, "vest"]
];

backpackArray = compileFinal str
[
        ["Parachute", "B_Parachute", 200, "backpack"],
        
        ["Assault Pack (Black)", "B_AssaultPack_blk", 450, "backpack"],
        ["Assault Pack (Coyote)", "B_AssaultPack_cbr", 450, "backpack"],
        ["Assault Pack (Digi)", "B_AssaultPack_dgtl", 450, "backpack"],
        ["Assault Pack (Green)", "B_AssaultPack_rgr", 450, "backpack"],
        ["Assault Pack (Khaki)", "B_AssaultPack_khk", 450, "backpack"],
        ["Assault Pack (MTP)", "B_AssaultPack_mcamo", 450, "backpack"],
                
        ["Field Pack (Black)", "B_FieldPack_blk", 600, "backpack"],
        ["Field Pack (Coyote)", "B_FieldPack_cbr", 600, "backpack"],
        ["Field Pack (Hex)", "B_FieldPack_ocamo", 600, "backpack"],
        ["Field Pack (Khaki)", "B_FieldPack_khk", 600, "backpack"],
        ["Field Pack (Olive)", "B_FieldPack_oli", 600, "backpack"],
        ["Field Pack (Urban)", "B_FieldPack_oucamo", 200, "backpack"],
        
        ["Kitbag (Green)", "B_Kitbag_Base", 750, "backpack"],
        ["Kitbag (Coyote)", "B_Kitbag_cbr", 750, "backpack"],
        ["Kitbag (MTP)", "B_Kitbag_mcamo", 750, "backpack"],
        ["Kitbag (Sage)", "B_Kitbag_sgg", 750, "backpack"],
        
        ["Bergen (Black)", "B_Bergen_blk", 800, "backpack"],
        ["Bergen (Green)", "B_Bergen_rgr", 800, "backpack"],
        ["Bergen (MTP)", "B_Bergen_mcamo", 800, "backpack"],
        ["Bergen (Sage)", "B_Bergen_sgg", 800, "backpack"],
        
        ["Carryall (Coyote)", "B_Carryall_cbr", 1500, "backpack"],
        ["Carryall (Hex)", "B_Carryall_ocamo", 1500, "backpack"],
        ["Carryall (Khaki)", "B_Carryall_khk", 1500, "backpack"],
        ["Carryall (MTP)", "B_Carryall_mcamo", 1500, "backpack"],
        ["Carryall (Olive)", "B_Carryall_oli", 1500, "backpack"],
        ["Carryall (Urban)", "B_Carryall_oucamo", 1500, "backpack"]
];

genItemArray = compileFinal str
[
        ["Quadrotor UAV (NATO)", "B_UAV_01_backpack_F", 500, "backpack"],
        ["Quadrotor UAV (CSAT)", "O_UAV_01_backpack_F", 500, "backpack"],
        ["Quadrotor UAV (AAF)", "I_UAV_01_backpack_F", 500, "backpack"],
        ["UAV Terminal (NATO)", "B_UavTerminal", 150, "item"],
        ["UAV Terminal (CSAT)", "O_UavTerminal", 150, "item"],
        ["UAV Terminal (AAF)", "I_UavTerminal", 150, "item"],
        ["GPS", "ItemGPS", 100, "item"],
        ["First Aid Kit", "FirstAidKit", 25, "item"],
        ["Medikit", "Medikit", 150, "item"],
        ["Toolkit", "ToolKit", 150, "item"],
        ["Mine Detector", "MineDetector", 100, "item"],
        ["NV Goggles", "NVGoggles", 100, "nvg"],
        ["Diving Goggles", "G_Diving", 100, "gogg"],
        ["Binoculars", "Binocular", 50, "binoc"],
        ["Rangefinder", "Rangefinder", 150, "binoc"],   
        ["Laser Designator", "Laserdesignator", 200, "binoc"],
        ["Laser Batteries", "Laserbatteries", 20, "mag"],
        ["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
        ["Chemlight (Green)", "Chemlight_green", 25, "mag"],
        ["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
        ["Chemlight (Red)", "Chemlight_red", 25, "mag"]
];

allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call throwputArray + call ammoArray + call accessoriesArray + call genItemArray);

genObjectsArray = compileFinal str
[
        ["Empty Ammo Crate", "Box_NATO_Ammo_F", 250, "ammocrate"],
        ["Barrier Gate", "Land_BarGate_F", 500, "object"],
        ["Pipes", "Land_Pipes_Large_F", 1000, "object"],
        ["Concrete Frame", "Land_CncShelter_F", 1000, "object"],
        ["Safety Barrier", "Land_Crash_barrier_F", 1000, "object"],
        ["Concrete Barrier", "Land_CncBarrier_F", 2000, "object"],
        ["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 1750, "object"],
        ["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 2500, "object"],
        ["HBarrier 1", "Land_HBarrier_1_F", 500, "object"],
        ["HBarrier 3", "Land_HBarrier_3_F", 1000, "object"],
        ["HBarrier 5", "Land_HBarrier_5_F", 1750, "object"],
        ["HBarrier Big", "Land_HBarrierBig_F", 2500, "object"],
        ["HBarrier Wall 4", "Land_HBarrierWall4_F", 2000, "object"],
        ["HBarrier Wall 6", "Land_HBarrierWall6_F", 2000, "object"],
        ["HBarrier Watchtower", "Land_HBarrierTower_F", 3500, "object"],
        ["Concrete Wall", "Land_CncWall1_F", 2000, "object"],
        ["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 2000, "object"],
        ["Concrete Wall (Long)", "Land_CncWall4_F", 3000, "object"],
        ["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 3000, "object"],
        ["Shoot House Wall", "Land_Shoot_House_Wall_F", 1800, "object"],
        ["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 2000, "object"],
        ["Canal Stairs", "Land_Canal_Wall_Stairs_F", 2500, "object"],
        ["Bag Fence (Corner)", "Land_BagFence_Corner_F", 750, "object"],
        ["Bag Fence (End)", "Land_BagFence_End_F", 750, "object"],
        ["Bag Fence (Long)", "Land_BagFence_Long_F", 1000, "object"],
        ["Bag Fence (Round)", "Land_BagFence_Round_F", 750, "object"],
        ["Bag Fence (Short)", "Land_BagFence_Short_F", 750, "object"],
        ["Bag Fence (Short)", "Land_BagFence_Short_F", 750, "object"],
        ["Bag Bunker (Small)", "Land_BagBunker_Small_F", 1750, "object"],
        ["Bag Bunker (Large)", "Land_BagBunker_Large_F", 3000, "object"],
        ["Bag Bunker Tower", "Land_BagBunker_Tower_F", 5000, "object"],
        ["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 4000, "object"],
        ["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 15000, "object"],
        ["Concrete Ramp", "Land_RampConcrete_F", 2000, "object"],
        ["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 2500, "object"],
        ["Scaffolding", "Land_Scaffolding_F", 2000, "object"]
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call headArray + call uniformArray + call vestArray + call backpackArray);

//Text name, classname, buy cost, spawn type, color
landArray = compileFinal str
[
        ["Quadbike (Civilian)", "C_Quadbike_01_F", 250, "vehicle", 400],
        ["Quadbike (NATO)", "B_Quadbike_01_F", 250, "vehicle", 400],
        ["Quadbike (CSAT)", "O_Quadbike_01_F", 250, "vehicle", 400],
        ["Quadbike (AAF)", "I_Quadbike_01_F", 250, "vehicle", 400],
        ["Quadbike (FIA)", "B_G_Quadbike_01_F", 250, "vehicle", 400],

        ["Hatchback", "C_Hatchback_01_F", 400, "vehicle", 600],
        ["Hatchback Sport", "C_Hatchback_01_sport_F", 500, "vehicle", 600],
        ["SUV", "C_SUV_01_F", 500, "vehicle", 600],
        ["Offroad", "C_Offroad_01_F", 500, "vehicle", 650],
        ["Offroad Camo", "B_G_Offroad_01_F", 500, "vehicle", 650],
        ["Offroad HMG", "B_G_Offroad_01_armed_F", 1000, "vehicle", 650],

        ["Truck", "C_Van_01_transport_F", 700, "vehicle", 250],
        ["Truck Camo", "B_G_Van_01_transport_F", 700, "vehicle", 250],
        ["Truck Box", "C_Van_01_box_F", 700, "vehicle", 250],
        ["Fuel Truck", "C_Van_01_fuel_F", 1000, "vehicle", 500],

        ["HEMTT Tractor", "B_Truck_01_mover_F", 750, "vehicle", 375],
        ["HEMTT Transport", "B_Truck_01_transport_F", 1000, "vehicle", 500],
        ["HEMTT Covered", "B_Truck_01_covered_F", 4000, "vehicle", 625],
        ["HEMTT Box", "B_Truck_01_box_F", 1500, "vehicle", 750],
        ["HEMTT Fuel", "B_Truck_01_fuel_F", 5000, "vehicle", 1000],
        ["HEMTT Medical", "B_Truck_01_medical_F", 10000, "vehicle", 2000],
        ["HEMTT Repair", "B_Truck_01_Repair_F", 15000, "vehicle", 3000],
        ["HEMTT Ammo", "B_Truck_01_ammo_F", 20000, "vehicle", 4000],

        ["Zamak Transport (CSAT)", "O_Truck_02_transport_F", 1000, "vehicle", 500],
        ["Zamak Transport (AAF)", "I_Truck_02_transport_F", 1000, "vehicle", 500],
        ["Zamak Covered (CSAT)", "O_Truck_02_covered_F", 4000, "vehicle", 625],
        ["Zamak Covered (AAF)", "I_Truck_02_covered_F", 4000, "vehicle", 625],
        ["Zamak Fuel (CSAT)", "O_Truck_02_fuel_F", 5000, "vehicle", 1000],
        ["Zamak Fuel (AAF)", "I_Truck_02_fuel_F", 5000, "vehicle", 1000],
        ["Zamak Medical (CSAT)", "O_Truck_02_medical_F", 10000, "vehicle", 2000],
        ["Zamak Medical (AAF)", "I_Truck_02_medical_F", 10000, "vehicle", 2000],
        ["Zamak Repair (CSAT)", "O_Truck_02_box_F", 15000, "vehicle", 3000],
        ["Zamak Repair (AAF)", "I_Truck_02_box_F", 15000, "vehicle", 3000],
        ["Zamak Ammo (CSAT)", "O_Truck_02_Ammo_F", 20000, "vehicle", 4000],
        ["Zamak Ammo (AAF)", "I_Truck_02_ammo_F", 20000, "vehicle", 4000],

        ["UGV Stomper (NATO)", "B_UGV_01_F", 2500, "vehicle", 500],
        ["UGV Stomper (AAF)", "I_UGV_01_F", 2500, "vehicle", 500],
        ["UGV Saif (CSAT)", "O_UGV_01_F", 2500, "vehicle", 500],
        ["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 10000, "vehicle", 2500],
        ["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 10000, "vehicle", 2500],
        ["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 10000, "vehicle", 2500]
]; 

armoredArray = compileFinal str
[
        ["Hunter", "B_MRAP_01_F", 2000, "vehicle", 1000],
        ["Hunter HMG", "B_MRAP_01_hmg_F", 12000, "vehicle", 4000],
        ["Hunter GMG", "B_MRAP_01_gmg_F", 13000, "vehicle", 4500],
        ["Ifrit", "O_MRAP_02_F", 9000, "vehicle", 1500],
        ["Ifrit HMG", "O_MRAP_02_hmg_F", 14000, "vehicle", 4000],
        ["Ifrit GMG", "O_MRAP_02_gmg_F", 15000, "vehicle", 4500],
        ["Strider", "I_MRAP_03_F", 9000, "vehicle", 1500],
        ["Strider HMG", "I_MRAP_03_hmg_F", 14000, "vehicle", 4000],
        ["Strider GMG", "I_MRAP_03_gmg_F", 15000, "vehicle", 4500],
        ["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 22000, "vehicle"],
		["CRV-6e Bobcat", "B_APC_Tracked_01_CRV_F", 20000, "vehicle"],
		["FV-720 Mora", "I_APC_tracked_03_cannon_F", 20000, "vehicle"],
        ["IFV-6a Cheetah", "B_APC_Tracked_01_AA_F", 20000, "vehicle"]
];

tanksArray = compileFinal str
[
        ["CRV-6e Bobcat", "B_APC_Tracked_01_CRV_F", 15000, "vehicle", ""],
        ["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 20000, "vehicle", ""],
        ["IFV-6a Cheetah", "B_APC_Tracked_01_AA_F", 20000, "vehicle", ""],
        ["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 20000, "vehicle", ""],
        ["ZSU-39 Tigris", "O_APC_Tracked_02_AA_F", 20000, "vehicle", ""],
        ["M2A1 Slammer", "B_MBT_01_cannon_F", 25000, "vehicle", ""],
        ["T-100 Varsuk", "O_MBT_02_cannon_F", 25000, "vehicle", ""],
        ["M5 Sandstorm MLRS", "B_MBT_01_mlrs_F", 30000, "vehicle", ""],
        ["M4 Scorcher", "B_MBT_01_arty_F", 35000, "vehicle", ""],
        ["2S9 Sochor", "O_MBT_02_arty_F", 35000, "vehicle", ""]
];


helicoptersArray = compileFinal str
[
        ["MH-9 Hummingbird", "B_Heli_Light_01_F", 5000, "vehicle", ""], //little bird
        ["PO-30 Orca (Black)", "O_Heli_Light_02_unarmed_F", 13000, "vehicle", ""], //ka-60
        ["CH-49 Mohawk", "I_Heli_Transport_02_F", 15000, "vehicle", ""], //big transport chopper
        
        ["UH-80 Ghosthawk", "B_Heli_Transport_01_F", 20000, "vehicle", ""], //stealth chopper 2 miniguns
        ["UH-80 Ghosthawk (Camo)", "B_Heli_Transport_01_camo_F", 20000, "vehicle", ""], //stealth chopper 2 miniguns (green camo)
        ["AH-9 Pawnee", "B_Heli_Light_01_armed_F", 12000, "vehicle", ""], //little bird with guns and missiles
        ["PO-30 Orca", "O_Heli_Light_02_F", 24000, "vehicle", ""], //armed ka-60
        ["AH-99 Blackfoot", "B_Heli_Attack_01_F", 20000, "vehicle", ""], //attack chopper
        ["Mi-48 Kajman", "O_Heli_Attack_02_F", 35000, "vehicle", ""], //attack chopper with gunner
        ["Mi-48 Kajman (Black)", "O_Heli_Attack_02_black_F", 35000, "vehicle", ""] //attack chopper with gunner
		//["WY-55 Hellcat (Armed)", "I_Heli_light_03_F", 35000, "vehicle", ""],
		//["WY-55 Hellcat (Unarmed)", "I_Heli_light_03_unarmed_F", 15000, "vehicle", ""]
];

planesArray = compileFinal str
[
        ["A-143 Buzzard (AA)", "I_Plane_Fighter_03_AA_F", 20000, "vehicle", 10000],
        ["A-143 Buzzard (CAS)", "I_Plane_Fighter_03_CAS_F", 25000, "vehicle", 40000],
        ["MQ4A Greyhawk", "B_UAV_02_F", 10000, "vehicle", 5000],
        ["MQ4A Greyhawk CAS", "B_UAV_02_CAS_F", 10000, "vehicle", 5000],
        ["K40 Ababil-3 (CSAT)", "O_UAV_02_F", 10000, "vehicle", 5000],
        ["K40 Ababil-3 (AAF)", "I_UAV_02_F", 10000, "vehicle", 5000],
        ["K40 Ababil-3 CAS (CSAT)", "O_UAV_02_CAS_F", 10000, "vehicle", 5000],
        ["K40 Ababil-3 CAS (AAF)", "I_UAV_02_CAS_F", 10000, "vehicle", 5000]
];

boatsArray = compileFinal str
[
        ["Rescue Boat", "C_Rubberboat", 500, "boat", 500],
        ["Rescue Boat (NATO)", "B_Lifeboat", 500, "boat", 250],
        ["Rescue Boat (CSAT)", "O_Lifeboat", 500, "boat", 250],
        ["Assault Boat (NATO)", "B_Boat_Transport_01_F", 750, "boat", 500],
        ["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 750, "boat", 500],
        ["Assault Boat (AAF)", "I_Boat_Transport_01_F", 750, "boat", 500],
        ["Assault Boat (FIA)", "B_G_Boat_Transport_01_F", 750, "boat", 500],
        ["Motorboat", "C_Boat_Civil_01_F", 1000, "boat", 500],
        ["Motorboat Police", "C_Boat_Civil_police_01_F", 1000, "boat", 500],
        ["Motorboat Rescue", "C_Boat_Civil_rescue_01_F", 1000, "boat", 500],
        ["Speedboat HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 5000, "boat", 2500],
        ["Speedboat Minigun (NATO)", "B_Boat_Armed_01_minigun_F", 5000, "boat", 2500],
        ["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 5000, "boat", 2500],
        ["SDV Submersible (NATO)", "B_SDV_01_F", 1000, "submarine", 500],
        ["SDV Submersible (CSAT)", "O_SDV_01_F", 1000, "submarine", 500],
        ["SDV Submersible (AAF)", "I_SDV_01_F", 1000, "submarine", 500]
];

// Deprecated; Boats are used instead
submarinesArray = compileFinal str [];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray + call submarinesArray);

uavArray = compileFinal str
[
        "B_UAV_02_F",
        "O_UAV_02_F",
        "I_UAV_02_F",
        "B_UAV_02_CAS_F",
        "O_UAV_02_CAS_F",
        "I_UAV_02_CAS_F",
        "B_UGV_01_F",
        "O_UGV_01_F",
        "I_UGV_01_F",
        "B_UGV_01_rcws_F",
        "O_UGV_01_rcws_F",
        "I_UGV_01_rcws_F"
];

noColorVehicles = compileFinal str
[
        /*
        "Hatchback_01_base_F",
        "Van_01_base_F",
        "SUV_01_base_F",
        "Offroad_01_base_F",
        "Truck_01_base_F",
        "MRAP_02_base_F",
        "MRAP_03_base_F",
        "Heli_Attack_01_base_F",
        "B_Boat_Transport_01_F",
        "B_SDV_01_F",
        "O_APC_Wheeled_02_rcws_F",
        "APC_Tracked_01_base_F",
        "O_APC_Tracked_02_cannon_F",
        "MBT_01_base_F",
        "MBT_02_base_F"
        */
];

rgbOnlyVehicles = compileFinal str 
[
        /*
        "Quadbike_01_base_F",
        "Truck_02_base_F",
        "Heli_Transport_01_base_F",
        "O_Boat_Transport_01_F",
        "I_Boat_Transport_01_F",
        "B_G_Boat_Transport_01_F",
        "Rescue_duck_base_F",
        "O_SDV_01_F",
        "I_SDV_01_F"
        */
];

//color, isARGB
colorsArray = compileFinal str
[
        ["Black", true],
        ["White", true],
        ["Orange", true],
        ["Red", true],
        ["Pink", true],
        ["Yellow", true],
        ["Purple", true],
        ["Blue", true],
        ["Dark Blue", true],
        ["Teal", true],
        ["Green", true],
        ["Orange Camo", false],
        ["Red Camo", false],
        ["Yellow Camo", false],
        ["Pink Camo", false]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
        ["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\water.paa", 30, 15],
        ["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 30, 15],
        ["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 500, 250],
        ["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
    ["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
    ["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\briefcase.paa", 1500, 750],
    ["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\briefcase.paa", 200, 100],
    ["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\jerrycan.paa", 200, 100],
    ["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\water.paa", 100, 50],
    ["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\briefcase.paa", 1000, 500]
];


// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position, Desk Direction Modifier, Excluded Buttons
storeOwnerConfig = compileFinal str
[
        ["GenStore1", 6, 240, []],
        ["GenStore2", 6, 250, []],
        ["GenStore3", 6, 45, []],
        ["GenStore4", 0, 265, []],
        ["GenStore5", 5, 350, []],
        
        ["GunStore1", 1, 0, []],
        ["GunStore2", 1, 75, []],
        ["GunStore3", 6, 135, []],
        ["GunStore4", 1, 65, []],
        
        ["VehStore1", 1, 75, []],
        ["VehStore2", 6, 45, ["Boats", "Submarines"]],
        ["VehStore3", 4, 250, ["Boats", "Submarines"]],
        ["VehStore4", 5, 155, ["Boats", "Submarines"]]
];
        
// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
        ['GenStore1', [['weapon', ''], ['uniform', 'U_IG_Guerilla2_2']]],
        ['GenStore2', [['weapon', ''], ['uniform', 'U_IG_Guerilla2_3']]],
        ['GenStore3', [['weapon', ''], ['uniform', 'U_IG_Guerilla3_1']]],
        ['GenStore4', [['weapon', ''], ['uniform', 'U_IG_Guerilla2_1']]],
        ['GenStore5', [['weapon', ''], ['uniform', 'U_IG_Guerilla3_2']]],
        
        ['GunStore1', [['weapon', ''], ['uniform', 'U_B_SpecopsUniform_sgg']]],
        ['GunStore2', [['weapon', ''], ['uniform', 'U_O_SpecopsUniform_blk']]],
        ['GunStore3', [['weapon', ''], ['uniform', 'U_I_CombatUniform_tshirt']]],
        ['GunStore4', [['weapon', ''], ['uniform', 'U_IG_Guerilla1_1']]],
        
        ['VehStore1', [['weapon', ''], ['uniform', 'U_Competitor']]],
        ['VehStore2', [['weapon', ''], ['uniform', 'U_Competitor']]],
        ['VehStore3', [['weapon', ''], ['uniform', 'U_Competitor']]],
        ['VehStore4', [['weapon', ''], ['uniform', 'U_Competitor']]]
];

storeConfigDone = compileFinal "true";