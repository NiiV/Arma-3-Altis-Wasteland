

private ["_key","_shift","_ctrl","_alt","_units"];

if (hcam_units == "group") then {
  _units = units (group player);
} else {
  _units = hcam_units;
};



if (!hcam_active) then {
		nul = [] execVM "client\systems\cam\helmetcam.sqf";
	} else {;
		// Continue only if player isnt alone in group
		if ( count _units > 1 ) then {
		
			// Select next groupmember (or go back to the first one)
			hcam_id = hcam_id + 1;
			if ( hcam_id >= count _units ) then {
				hcam_id = 0;
			};
		 
			hcam_cam cameraEffect ["TERMINATE", "BACK"];
		};
	};