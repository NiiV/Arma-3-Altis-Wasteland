//        @file Version: 1.2
//        @file Name: init.sqf
//        @file Author: [404] Deadbeat, [GoT] JoSchaap
//        @file Description: The main init.

#define DEBUG true

enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;

// versionName = ""; // Set in STR_WL_WelcomeToWasteland in stringtable.xml

if (isServer) then { X_Server = true };
if (!isDedicated) then { X_Client = true };
if (isNull player) then { X_JIP = true };

_globalCompile = [DEBUG] execVM "globalCompile.sqf";
waitUntil {scriptDone _globalCompile};

if (!isDedicated) then
{
        [] spawn
        {
                titleText ["Welcome to A3Wasteland, please wait for your client to initialize", "BLACK", 0];
                waitUntil {!isNull player};
                client_initEH = player addEventHandler ["Respawn", {removeAllWeapons (_this select 0)}];
        };
};

//init Wasteland Core
[] execVM "config.sqf";
[] execVM "storeConfig.sqf"; // Separated as its now v large
[] execVM "briefing.sqf";
//call compile preprocessFile "=BTC=_revive\=BTC=_revive_init.sqf";
if (!isDedicated) then
{
        waitUntil {!isNull player};

        //Wipe Group.
        if (count units player > 1) then
        {  
                diag_log "Player Group Wiped";
                [player] join grpNull;
        };

        [] execVM "client\init.sqf";
};

if (isServer) then
{
        diag_log format ["############################# %1 #############################", missionName];
        diag_log "WASTELAND SERVER - Initializing Server";
        [] execVM "server\init.sqf";
};

//init 3rd Party Scripts
[] execVM "addons\R3F_ARTY_AND_LOG\init.sqf";
[] execVM "addons\proving_Ground\init.sqf";
[] execVM "addons\scripts\DynamicWeatherEffects.sqf";
[] execVM "addons\JumpMF\init.sqf";
[] execVM "custom\checkVehicleLock.sqf";
[] execVM "custom\checkVehicleLock2.sqf";
//[10,true,true,100] execFSM "addons\core_time\core_time.fsm";