private["_donation","_UID"];
sleep 10;
player globalchat "Loading player account...";

//Requests info from server in order to download stats
player globalchat "Requesting UID...";
_UID = getPlayerUID player;
player globalchat format["UID obtained: %1", _UID];
// Player location + health
player globalchat "Requesting Health...";
[_UID, _UID, "Health", "NUMBER"] call sendToServer;
player globalchat "Requesting Position...";
[_UID, _UID, "Position", "ARRAY"] call sendToServer;
player globalchat "Requesting Direction...";
[_UID, _UID, "Direction", "NUMBER"] call sendToServer;

// Survival + wasteland inventory
{
	_keyName = _x select 0;
	diag_log format["calling sendToServer with %1", _keyName];
	[_UID, _UID, _keyName, "NUMBER"] call sendToServer;
} forEach call mf_inventory_all;

// Player inventory
[_UID, _UID, "Uniform", "STRING"] call sendToServer;
[_UID, _UID, "Vest", "STRING"] call sendToServer;
[_UID, _UID, "Backpack", "STRING"] call sendToServer;

// Wait on these as we need them present to fit in everything they had on them
waitUntil {!isNil "uniformLoaded"};		
waitUntil {!isNil "vestLoaded"};
waitUntil {!isNil "backpackLoaded"};

[_UID, _UID, "AssignedItems", "ARRAY"] call sendToServer;
[_UID, _UID, "MagazinesWithAmmoCount", "ARRAY"] call sendToServer;

//waitUntil {!isNil "magazinesLoaded"};

[_UID, _UID, "Items", "ARRAY"] call sendToServer;
waitUntil {!isNil "itemsLoaded"};

[_UID, _UID, "PrimaryWeapon", "STRING"] call sendToServer;
[_UID, _UID, "SecondaryWeapon", "STRING"] call sendToServer;
[_UID, _UID, "HandgunWeapon", "STRING"] call sendToServer;
waitUntil {!isNil "primaryLoaded"};
waitUntil {!isNil "secondaryLoaded"};
waitUntil {!isNil "handgunLoaded"};

[_UID, _UID, "PrimaryWeaponItems", "ARRAY"] call sendToServer;
[_UID, _UID, "SecondaryWeaponItems", "ARRAY"] call sendToServer;
[_UID, _UID, "HandgunItems", "ARRAY"] call sendToServer;

[_UID, _UID, "PrimaryMagazine", "ARRAY"] call sendToServer;
[_UID, _UID, "SecondaryMagazine", "ARRAY"] call sendToServer;
[_UID, _UID, "HandgunMagazine", "ARRAY"] call sendToServer;

[_UID, _UID, "HeadGear", "STRING"] call sendToServer;
[_UID, _UID, "Goggles", "STRING"] call sendToServer;

[_UID, _UID, "Hunger", "NUMBER"] call sendToServer;
[_UID, _UID, "Thirst", "NUMBER"] call sendToServer;
player setVariable ["cmoney", 100, true];
[_UID, _UID, "Money", "NUMBER"] call sendToServer;
//waitUntil {!isNil "hungerLoaded"};
//waitUntil {!isNil "thirstLoaded"};
//waitUntil {!isNil "moneyLoaded"};

//===========================================================================
if (isNil "hungerLoaded") then {
thirstLevel = 100;
hungerLevel = 100;
};
//END
statsLoaded = 1;
titleText ["","BLACK IN",4];
player globalchat "Player account loaded!";