-- uncheckedalagaesia
-- Author: Mr. Sun
-- DateCreated: 3/7/2024 5:58:50 PM
--------------------------------------------------------------
include "MapUtilities"
include "ResourceGenerator"

-- ===========================================================================
function InitializeNewGame()

	-- from Europa map
	local resourcesConfig = MapConfiguration.GetValue("resources");
	local startConfig = MapConfiguration.GetValue("start");-- Get the start config
	local args = {
		resources = resourcesConfig,
		START_CONFIG = startConfig,
	};
	local resGen = ResourceGenerator.Create(args);

	-- from both (Europe & World Builder Tutorial)
	local gridWidth, gridHeight = Map.GetGridSize();
	AddGoodies(gridWidth, gridHeight);
	AddLeyLines();

end

LuaEvents.NewGameInitialized.Add(InitializeNewGame);