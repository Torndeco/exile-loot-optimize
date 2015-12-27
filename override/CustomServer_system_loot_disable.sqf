private ["_pos","_type","_distance","_buildings"];

diag_log format["DEBUG: CustomServer_system_loot_disable: %1", _this];

_pos = _this select 0;
_type = _this select 1;
_distance = _this param [2,-1];

if (_distance <= -1) then {
  switch (_type) do
  {
   case ("TRADER"): {_distance = getNumber (configFile >> "CfgSettings" >> "LootSettings" >> "minimumDistanceToTraderZones");};
   case ("FLAG"): {_distance = getNumber (configFile >> "CfgSettings" >> "LootSettings" >> "minimumDistanceToTerritories");};
   case ("CUSTOM"): {};
   default {(format["Custom Server Disable Loot: Unknown Type: %1  Using default distance: %2 meters", _type, _distance]) call ExileServer_util_log;};
  };
};

_buildings = _pos nearObjects ["House", _distance];
{
  diag_log format["DEBUG: CustomServer_system_loot_disable: building %1", _x];
  _x setVariable ["ExileLootDisabled",true];
} forEach _buildings;
