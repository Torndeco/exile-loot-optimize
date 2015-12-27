class CfgExileCustomCode
{
	// Loot Optimize
	ExileServer_object_construction_network_buildTerritoryRequest = "override\ExileServer_object_construction_network_buildTerritoryRequest.sqf";

	ExileServer_system_lootManager_initialize 		= "override\ExileServer_system_lootManager_initialize.sqf";
	ExileServer_system_lootManager_spawnLootForPlayer 	= "override\ExileServer_system_lootManager_spawnLootForPlayer.sqf";
	ExileServer_system_territory_database_load 		= "override\ExileServer_system_territory_database_load.sqf";

	//Override ExileServer PostInit
	ExileServer_system_process_postInit 	= "override\ExileServer_system_process_postInit.sqf";
};
