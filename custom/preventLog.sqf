disableSerialization;

while {true} do
{
	waitUntil {!(isNull (findDisplay 49))};
	((findDisplay 49) displayCtrl 104) ctrlEnable false;
	hint "Abort button will be available in 15 seconds.";
	_time = time;
	waitUntil {(isNull (findDisplay 49)) || time >= _time + 15};
	if (!(isNull (findDisplay 49))) then
	{
		((findDisplay 49) displayCtrl 104) ctrlEnable true;
		waitUntil {isNull (findDisplay 49)};
	};
}