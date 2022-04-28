Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("GrapePicking", vector3(-1885.91, 2120.11, 135.97), 35.4, 52.8, {
	name = "GrapePicking",
	heading = 352,
	debugPoly = false,
	}, {
		options = {
			{
                type = "client",
                event = "qb-vineyard:pickgrapes",
                icon = "fas fa-hand",
                label = "Start Picking Grapes!",
			},
		},
		distance = 3
    })

    exports['qb-target']:AddBoxZone("JuicePickerProcess", vector3(-1874.69, 2069.18, 141.0), 2.0, 2.0, {
	name = "JuicePickerProcess",
	heading = 340,
	debugPoly = false,
	}, {
		options = {
			{
            	type = "client",
            	event = "qb-vineyard:client:ProcessMenu",
				icon = "fas fa-wine-bottle",
				label = "Squeeze Some Juices?!",
			},
		},
		distance = 3
    })

    exports['qb-target']:AddBoxZone("JuicePickerPackaging", vector3(-1886.19, 2073.48, 141.0), 2.0, 2.0, {
	name = "JuicePickerPackaging",
	heading = 340,
	debugPoly = false,
	}, {
		options = {
			{
            	type = "client",
            	event = "qb-vineyard:client:PackingMenu",
				icon = "fa fa-box",
				label = "Pack Some Drinks?!",
			},
		},
		distance = 3
    })

    exports['qb-target']:AddBoxZone("JuicePickerSell", vector3(-1888.09, 2050.43, 140.98), 0.8, 0.8, {
	name = "JuicePickerSell",
	heading = 0,
	debugPoly = false,
	minZ = 139.98,
	maxZ = 141.78,
	}, {
		options = {
			{
            	type = "client",
            	event = "qb-vineyard:client:SellMenu",
				icon = "fa fa-dollar-sign",
				label = "Sell Juices",
			},
		},
		distance = 3
    })
end)
