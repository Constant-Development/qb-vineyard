# qb-vineyard
QBCore Vineyard Job "Entire"Rework

Developed By: SixGrams#0544

Constant Development Discord:
https://discord.gg/gSQbshCNv4

Constant RolePlay Discord:
https://discord.gg/constantroleplay

Within this Resource, you will be allowed to Pick, Process, Pack, and Sell GrapJuice and Wine. With this in mind, you can further use the packed Wine/GrapeJuice for immersive RolePlay between a Mafia/Cartel and Business. Furthermore, it allows there to be an immersive set of RolePlay coming from those who wish to Own the VineYard Mansion.

Important Fact:
 - This Resource is using QB-Target and NOT Visible DrawText.

-- Place into shared/items.lua
```
['grape'] 					 	 = {['name'] = 'grape', 						['label'] = 'Grape', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'grape.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Mmmmh yummie, grapes',["created"] = nil,["decay"] = 28.0},
['wine'] 					 	 = {['name'] = 'wine', 							['label'] = 'Wine', 					['weight'] = 300, 		['type'] = 'item', 		['image'] = 'wine.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Some good wine to drink on a fine evening',["created"] = nil,["decay"] = 28.0},
['wine6'] 					 	 = {['name'] = 'wine6', 						['label'] = 'Wine 6PK', 				['weight'] = 1800, 		['type'] = 'item', 		['image'] = 'box.png', 				    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Six pack of fresh wine',["created"] = nil,["decay"] = 28.0},
['wine12'] 					 	 = {['name'] = 'wine12', 						['label'] = 'Wine 12PK', 				['weight'] = 3600, 		['type'] = 'item', 		['image'] = 'shipping-crate.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Large Case of 12 fresh wine',["created"] = nil,["decay"] = 28.0},
['wine24'] 					 	 = {['name'] = 'wine24', 						['label'] = 'Wine 24PK', 				['weight'] = 7200, 		['type'] = 'item', 		['image'] = 'pallet-of-boxes.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Heavy box of 24 fresh wine',["created"] = nil,["decay"] = 28.0},
['grapejuice'] 					 = {['name'] = 'grapejuice', 					['label'] = 'Grape Juice', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'grapejuice.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Grape juice is said to be healthy',["created"] = nil,["decay"] = 28.0},
['grapejuice6'] 				 = {['name'] = 'grapejuice6', 					['label'] = 'Grape Juice 6PK', 			['weight'] = 1800, 		['type'] = 'item', 		['image'] = 'box.png', 			        ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Case of six bottles of grape juice',["created"] = nil,["decay"] = 28.0},
['grapejuice12'] 				 = {['name'] = 'grapejuice12', 					['label'] = 'Grape Juice 12PK', 		['weight'] = 3600, 		['type'] = 'item', 		['image'] = 'shipping-crate', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Long case of 12 bottles of grape juice',["created"] = nil,["decay"] = 28.0},
['grapejuice24'] 				 = {['name'] = 'grapejuice24', 					['label'] = 'Grape Juice 24PK', 		['weight'] = 7200, 		['type'] = 'item', 		['image'] = 'pallet-of-boxes.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Crate of 24 bottles of grape juice',["created"] = nil,["decay"] = 28.0},
```

-- Place into ms-peds/config.lua
```
	-- Juice Picker Sales
	
	{
		model = `cs_russiandrunk`,
		coords = vector4(-1888.0942, 2050.4277, 140.9838, 156.2016),
		gender = 'male',
	},
 ```

Note: If you aren't using T&J's Inventory System than you must remove ["created"]
Note: If you aren't using either T&J's Inventory System or Joe's Decay System than you must remove ["decay"]

Note: If you are wishing to know, the Targets are BoxZones rather than TargetModels. #BetterForImmersion

Final Note:

If you are to run into any issues regarding this Resource you may open a Ticket within Constant Development or ask for appropiate Support within the Discord!
