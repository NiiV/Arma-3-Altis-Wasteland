//	@file Name: onMouseWheel.sqf

if (!isNil "playerMenuHandle") then { terminate playerMenuHandle };

playerMenuHandle = [] spawn
{
	waituntil {!isnull player};
	private ["_veh"];
	while {true} do {
		waituntil {vehicle player == player};
		if (!isnil "_veh") then {_veh removeaction playerMenuId};
		playerMenuId = player addAction [format ["<img image='client\icons\playerMenu.paa' color='#ff7f00'/> <t color='#ff7f00'>%1</t>", "[<t color='#FFFFFF'>Player Menu</t><t color='#ff7f00'>]</t>"], "client\systems\playerMenu\init.sqf", [], -10, false, false, "", "local player"];
		//player addAction [format ["<img image='client\icons\playerMenu.paa' color='#ff7f00'/> <t color='#ff7f00'>%1</t>", "[<t color='#FFFFFF'>WIND</t><t color='#ff7f00'>]</t>"], "client\actions\wind.sqf", [], -10, false, false, "", "local player"];
	//	player addAction [format ["<img image='client\icons\playerMenu.paa' color='#ff7f00'/> <t color='#ff7f00'>%1</t>", "[<t color='#FFFFFF'>NO WIND D</t><t color='#ff7f00'>]</t>"], "client\actions\wind2.sqf", [], -10, false, false, "", "local player"];
	//	player addaction [format ["<img image='client\icons\playerMenu.paa' color='#ff7f00'/> <t color='#ff7f00'>%1</t>", "[<t color='#FFFFFF'>HELMET_CAM NEXT</t><t color='#ff7f00'>]</t>"], "client\systems\cam\next.sqf", [], -10, false, false, "", "local player"];
		waituntil {vehicle player != player};
		player removeaction playerMenuId;
		_veh = vehicle player;
		playerMenuId = _veh addAction [format ["<img image='client\icons\playerMenu.paa' color='#ff7f00'/> <t color='#ff7f00'>%1</t>", "[<t color='#FFFFFF'>Player Menu</t><t color='#ff7f00'>]</t>"], "client\systems\playerMenu\init.sqf", [], -10, false, false, "", "local player"];
	   // _veh addAction ["Eject",{player action [ "eject", vehicle player]},[],1,false,true,"", "local player"];
		
	};
};
