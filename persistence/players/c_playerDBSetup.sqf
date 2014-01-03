//===========================================================================
applyPlayerDBValues =
{
	private ["_array","_varName","_varValue","_i","_in","_exe","_backpack","_sendToServer","_uid","_player"];
	//diag_log format["applyPlayerDBValues called with %1", _this];
	_array = _this;
	_uid = _array select 0;
	_varName = _array select 1;
	_player = player;
	if (getPlayerUID _player == _uid) then {
		if (count _array == 3) then {
			_varValue = _array select 2;
		} else {
			 //diag_log format["applyPlayerDBValues failed to get a value for %1", _varName];
		};

		//if there is not a value for items we care about exit early
		if(isNil '_varValue') exitWith 	
		{
			diag_log format["applyPlayerDBValues early termination with nil value for %1", _varName];
			if(_varName == 'Position') then {positionLoaded = 1;};
			if(_varName == 'DonationMoney') then {donationMoneyLoaded = 1;};
			
			if(_varName == 'PrimaryWeapon') then {primaryLoaded = 1;};
			if(_varName == 'HandgunWeapon') then {handgunLoaded = 1;};
			if(_varName == 'SecondaryWeapon') then {secondaryLoaded = 1;};

			if(_varName == 'Backpack') then { backpackLoaded = 1;};
			if(_varName == 'Vest') then { vestLoaded = 1;};
			if(_varName == 'Uniform') then { uniformLoaded = 1;};
			if(_varName == 'Items') then { itemsLoaded = 1;};
			if(_varName == 'Items') then { magazinesLoaded = 1;};
		};
		
		// Inventory item section. Use mf_inventory_all as set up by the mf_inv system
		{
			_itemID = _x select 0;
			if (_varName == _itemID) then {
				// Special call to mf_inventory_add specifying an absolute value
				[_varName, _varValue, true] call mf_inventory_add;
			};
		} forEach call mf_inventory_all;

		if(_varName == 'Health') then {
			_player setDamage _varValue;
			player globalchat format["Health obtained: %1", _varValue];
		};

		if(_varName == 'Position') then {
			_player setPos _varValue;
			player globalchat format["Position obtained: %1", _varValue];
			_player setVariable["playerWasMoved",1,true];
			positionLoaded = 1;
		};
		
		if(_varName == 'Direction') then {
			_player setDir _varValue;
			player globalchat format["Direction obtained: %1", _varValue];
		};
		//if(_varName == 'Magazines') then {{_player addMagazine _x;}foreach _varValue;};

		if (_varName == 'MagazinesWithAmmoCount') then {
			{
				_className = _x select 0; // eg. 30Rnd_65x39_caseless_mag
				_ammoCount = _x select 1; // Magazine current ammo count

				//if ([_player, _className] call fn_fitsInventory) then
				//{
					_player addMagazine [_className, _ammoCount];
				//};
			} forEach _varValue;
			magazinesLoaded = 1;
		};

		if((_varName == 'Items')) then 
		{
			for "_i" from 0 to (count _varValue) - 1 do 
			{
				_name = _varValue select _i;
				_backpack = unitBackpack _player;
				_inCfgWeapons = isClass (configFile >> "cfgWeapons" >> _name);

				// Optics seems to denote an 'item' if 1 or 'weapon' is 0
				_cfgOptics = getNumber (configFile >> "cfgWeapons" >> _name >> "optics");

				if (_inCfgWeapons && _cfgOptics == 0 && (!isNil '_backpack')) then {_backpack addWeaponCargoGlobal [_name,1];}
				else
				{
					//if ([_player, _name] call fn_fitsInventory) then
					//{
						_player addItem _name;
					//};
				};
			};
			if(_varName == 'Items') then {itemsLoaded = 1;};
		};

		if(_varName == 'PrimaryWeaponItems') then 
		{
			{
				_player addPrimaryWeaponItem _x;
			}foreach _varValue;
		};
		if(_varName == 'SecondaryWeaponItems') then 
		{
			{
				_player addSecondaryWeaponItem _x;
			}foreach _varValue;
		};
		if(_varName == 'HandgunItems') then 
		{
			{
				_player addHandgunItem _x;
			}foreach _varValue;
		};

		if(_varName == 'Uniform') then {removeUniform _player; _player addUniform _varValue; uniformLoaded = 1;};
		if(_varName == 'Vest') then {removeVest _player; _player addVest _varValue; vestLoaded = 1;};
		if(_varName == 'Backpack') then {removeBackpack _player; _player addBackpack _varValue; backpackLoaded = 1;};
		if(_varName == 'HeadGear') then {removeHeadgear _player; _player addHeadgear _varValue;};
		if(_varName == 'Goggles') then {_player addGoggles _varValue};

		//if(_varName == 'Stance') then {_player switchMove _varValue;};

		if(_varName == 'PrimaryWeapon') then{_player addWeapon _varValue; primaryLoaded = 1;};
		if(_varName == 'HandgunWeapon') then{_player addWeapon _varValue; handgunLoaded = 1;};
		if(_varName == 'SecondaryWeapon') then {_player addWeapon _varValue; secondaryLoaded = 1;};
		
		if(_varName == 'Hunger') then {
			hungerLevel = _varValue;
			_player setVariable ["hungerLevel", _varValue, true];
			hungerLoaded = 1;
		};
		if(_varName == 'Thirst') then {
			thirstLevel = _varValue;
			_player setVariable ["thirstLevel", _varValue, true];
			thirstLoaded = 1;
		};
		if(_varName == 'Money') then {
			moneyLevel = _varValue;
			_player setVariable ["cmoney", _varValue, true];
			moneyLoaded = 1;
		};

		if(_varName == 'AssignedItems') then {
			{
				_inCfgWeapons = isClass (configFile >> "cfgWeapons" >> _x);
				if (_inCfgWeapons) then {
					// Its a 'weapon'
					_player addWeapon _x;
				} else {
					_player linkItem _x;
				};
			} foreach _varValue;
		};
	};
};

//===========================================================================
_sendToServer =
"
	accountToServerLoad = _this;
	publicVariableServer 'accountToServerLoad';
";

sendToServer = compile _sendToServer;
//===========================================================================
"accountToClient" addPublicVariableEventHandler 
{
	(_this select 1) spawn applyPlayerDBValues;
};
//===========================================================================

statFunctionsLoaded = 1;
