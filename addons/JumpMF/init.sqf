//////////////////////////////////////////////////////////////////
// Script File for [Arma 3] - init.sqf
// Created by: Das Attorney
// Modified by: AgentRev
//////////////////////////////////////////////////////////////////

horde_jumpmf_fnc_switchmove = compileFinal "_this switchMove 'AovrPercMrunSrasWrflDf'";
"horde_jumpmf_var_switchmove" addPublicVariableEventHandler { (_this select 1) call horde_jumpmf_fnc_switchmove };

if (!hasInterface) exitWith {};

horde_jumpmf_var_jumping = false;
horde_jumpmf_fnc_detect_key_input = "addons\JumpMF\detect_key_input.sqf" call mf_compile;

waitUntil {!isNull findDisplay 46};
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call horde_jumpmf_fnc_detect_key_input"];