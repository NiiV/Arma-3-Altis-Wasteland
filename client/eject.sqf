while {true} do {
if (vehicle player != player) then {
player addAction ["Eject",{player action [ "eject", vehicle player]},[],1,false,true,"","_this in _target"];
sleep 3;
};