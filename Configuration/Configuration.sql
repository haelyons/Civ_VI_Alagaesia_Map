-- Configuration
-- Author: Fuzzle
-- DateCreated: 9/18/2021 5:11:30 PM
--------------------------------------------------------------

INSERT INTO Maps
		(Domain,				File,																			Name,								Description,							Image,			StaticMap,	RequiresUniqueLeaders,	SortIndex)
VALUES	('Maps:Expansion2Maps', '{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LOC_ALAGAESIA_TITLE',			'LOC_ALAGAESIA_DESCRIPTION',		'Map_Empty',	1,			0,						10);

-- Replace the Domain above with 'Maps:Expansion1Maps' to enable the map for Rise and Fall.
-- Replace the Domain above with 'StandardMaps' to enable the map for the base game.
-- If using TSL, change the 0 under RequiresUniqueLeaders to a 1.

INSERT INTO MapSizes
		(Domain,																			MapSizeType,		Name,						Description,						MinPlayers,	MaxPlayers,	DefaultPlayers,	MinCityStates,	MaxCityStates,	DefaultCityStates,	SortIndex)
VALUES	('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',		'MAPSIZE_HUGE',	'LOC_ALAGAESIA_TITLE',	'LOC_MAPSIZE_HUGE_DESCRIPTION',								6,			30,			6,				5,				25,				14,					10);

-- The official MapSizeType entries are below. The Name and Description entries follow the same pattern.
-- 'MAPSIZE_DUEL'
-- 'MAPSIZE_TINY'
-- 'MAPSIZE_SMALL'
-- 'MAPSIZE_STANDARD'
-- 'MAPSIZE_LARGE'
-- 'MAPSIZE_HUGE'
-- Edit the player and city-state counts as desired.

INSERT INTO MapDomainOverrides
		(Map,																				ParameterId,		Domain)
VALUES	('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',		'MapSize',			'{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map');

-- This ensures that you can't change the map size; it locks it to whatever the map's size is.

INSERT INTO ParameterDependencies
		(ParameterId,		ConfigurationGroup,		ConfigurationId,		Operator,		ConfigurationValue)
VALUES	('Resources',		'Map',					'MAP_SCRIPT',			'NotEquals',	'{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map'),
		('StartPosition',	'Map',					'MAP_SCRIPT',			'NotEquals',	'{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map');

-- This removes the StartPosition and Resources options from the menu, which are useless anyway.


-- ========================================================================================================
-- TSL BELOW THIS POINT

-- Delete the /* and */ to enable the section below.
-- MapLeaders requires rows for each Leader you want to be playable on this map, including city-states.
-- MapStartPositions requires rows for each Leader you want to have a TSL spawn position, including city-states.
-- MapSupportedValues requires rows for each city-state that will appear on this map - IMPORTANT: use the CivilizationType here instead of the LeaderType!!


/*

INSERT INTO MapLeaders
		(Map,																			LeaderType)
VALUES	('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'RANDOM'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'RANDOM_POOL1'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'RANDOM_POOL2'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LEADER_BARBAROSSA'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LEADER_CATHERINE_DE_MEDICI'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LEADER_CLEOPATRA'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LEADER_GANDHI'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LEADER_GILGAMESH'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LEADER_GORGO'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LEADER_MINOR_CIV_AUCKLAND'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LEADER_MINOR_CIV_BRUSSELS'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LEADER_MINOR_CIV_BUENOS_AIRES'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LEADER_MINOR_CIV_LA_VENTA'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LEADER_MINOR_CIV_GENEVA'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LEADER_MINOR_CIV_HATTUSA'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LEADER_MINOR_CIV_HONG_KONG'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LEADER_MINOR_CIV_ZANZIBAR'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'LEADER_MINOR_CIV_JERUSALEM');

INSERT INTO MapStartPositions
		(Map,																			Plot,	Type,		Value)
VALUES	('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	2837,	'LEADER',	'LEADER_BARBAROSSA'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	762,	'LEADER',	'LEADER_CATHERINE_DE_MEDICI'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	1570,	'LEADER',	'LEADER_CLEOPATRA'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	2284,	'LEADER',	'LEADER_GANDHI'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	1605,	'LEADER',	'LEADER_GILGAMESH'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	800,	'LEADER',	'LEADER_GORGO'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	2244,	'LEADER',	'LEADER_MINOR_CIV_AUCKLAND'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	1012,	'LEADER',	'LEADER_MINOR_CIV_BRUSSELS'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	1694,	'LEADER',	'LEADER_MINOR_CIV_BUENOS_AIRES'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	1898,	'LEADER',	'LEADER_MINOR_CIV_LA_VENTA'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	638,	'LEADER',	'LEADER_MINOR_CIV_GENEVA'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	778,	'LEADER',	'LEADER_MINOR_CIV_HATTUSA'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	2005,	'LEADER',	'LEADER_MINOR_CIV_HONG_KONG'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	1502,	'LEADER',	'LEADER_MINOR_CIV_ZANZIBAR'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	250,	'LEADER',	'LEADER_MINOR_CIV_JERUSALEM');

INSERT INTO MapSupportedValues
		(Map,																			Domain,						Value)
VALUES	('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'Expansion2CityStates',		'CIVILIZATION_AUCKLAND'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'Expansion2CityStates',		'CIVILIZATION_BRUSSELS'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'Expansion2CityStates',		'CIVILIZATION_BUENOS_AIRES'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'Expansion2CityStates',		'CIVILIZATION_LA_VENTA'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'Expansion2CityStates',		'CIVILIZATION_GENEVA'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'Expansion2CityStates',		'CIVILIZATION_HATTUSA'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'Expansion2CityStates',		'CIVILIZATION_HONG_KONG'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'Expansion2CityStates',		'CIVILIZATION_ZANZIBAR'),
		('{397634e9-274a-401f-95ef-4cf3e040e206}Maps/uncheckedalagaesia.Civ6Map',	'Expansion2CityStates',		'CIVILIZATION_JERUSALEM');

*/