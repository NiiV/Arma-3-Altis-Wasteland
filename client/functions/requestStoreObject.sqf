//        @file Version: 1.0
//        @file Name: requestStoreObject.sqf
//        @file Author: AgentRev
//        @file Created: 24/10/2012 18:32
//        @file Args: 

// Must only be called in buyItems.sqf or buyGuns.sqf

#define OBJECT_PURCHASE_TIMEOUT 15
#define OBJECT_PURCHASE_POST_TIMEOUT 60

[[player, _class, currentOwnerName, _requestKey], "spawnStoreObject", false, false] call TPG_fnc_MP;

private ["_requestTimeout", "_object"];
_requestTimeout = time + OBJECT_PURCHASE_TIMEOUT;
hint "Awaiting server response...";

[] spawn
{
        sleep 0.5; // double-click protection
        storePurchaseHandle = nil; // To allow purchasing more stuff in the meanwhile
};

while {isNil "_object" && {time < _requestTimeout}} do
{
        sleep 0.1;
        _object = player getVariable _requestKey;
};

if (isNil "_object" || {isNull objectFromNetId _object}) then
{
        _requestKey spawn // If the object somehow spawns after the timeout, delete it
        {
                private ["_requestKey", "_postTimeout", "_object"];
                _requestKey = _this;
                _postTimeout = time + OBJECT_PURCHASE_POST_TIMEOUT;
                
                while {isNil "_object" && {time < _postTimeout}} do
                {
                        sleep 0.1;
                        _object = player getVariable _requestKey;
                };
                
                if (!isNil _object) then
                {
                        deleteVehicle objectFromNetId _object;
                        player setVariable [_requestKey, nil, true];
                };
        };
        
        [_itemText] call _showItemSpawnTimeoutError;
}
else
{
        [_itemText] call _showItemSpawnedOutsideMessage;
        player setVariable [_requestKey, nil, true];
};