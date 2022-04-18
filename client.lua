local QBCore = exports['qb-core']:GetCoreObject()

-- Functions

function LoadAnim(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(1)
    end
end

function PrepareAnim()
    local ped = PlayerPedId()
    LoadAnim('amb@code_human_wander_rain@male_a@base')
    TaskPlayAnim(ped, 'amb@code_human_wander_rain@male_a@base', 'static', 6.0, -6.0, -1, 47, 0, 0, 0, 0)
end

function PickAnim()
    local ped = PlayerPedId()
    LoadAnim('amb@prop_human_bum_bin@idle_a')
    TaskPlayAnim(ped, 'amb@prop_human_bum_bin@idle_a', 'idle_a', 6.0, -6.0, -1, 47, 0, 0, 0, 0)
end

function pickProcess()
    PickAnim()
    QBCore.Functions.Progressbar("pick_grape", "Picking Grapes ..", math.random(6000,8000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        ClearPedTasks(PlayerPedId())
		TriggerServerEvent("qb-vineyard:server:getGrapes")
    end, function() -- Cancel
        ClearPedTasks(PlayerPedId())
        QBCore.Functions.Notify("You have cancelled the task", "error")
    end)
end

function grapeJuiceProcess()
    PrepareAnim()
    QBCore.Functions.Progressbar("grape_juice", "Processing Grapes ..", math.random(15000,20000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent("qb-vineyard:server:grapeJuice")
    end, function() -- Cancel
        ClearPedTasks(PlayerPedId())
        QBCore.Functions.Notify("You have cancelled the task", "error")
    end)
end

function WineProcess()
    PrepareAnim()
    QBCore.Functions.Progressbar("grape_juice", "Stirring Wine..", math.random(15000,20000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent("qb-vineyard:server:loadIngredients")
    end, function() -- Cancel
        ClearPedTasks(PlayerPedId())
        QBCore.Functions.Notify("You have cancelled the task", "error")
    end)
end

-- Events

RegisterNetEvent('qb-vineyard:pickgrapes')
AddEventHandler('qb-vineyard:pickgrapes', function()
    pickProcess()
	Wait(5000)
	exports['okokNotify']:Alert("VineYard Picking", "Begin heading to the back two Doors of the Mansion...", 3500, 'info')
end)

RegisterNetEvent('qb-vineyard:GrapeJuiceProcess')
AddEventHandler('qb-vineyard:GrapeJuiceProcess', function()
	grapeJuiceProcess()
end)

RegisterNetEvent('qb-vineyard:WineProcess')
AddEventHandler('qb-vineyard:WineProcess', function()
	WineProcess()
end)

RegisterNetEvent('qb-vineyard:SellWineMenu')
AddEventHandler('qb-vineyard:SellWineMenu', function()
	TriggerServerEvent("qb-vineyard:server:SellWine")
end)

RegisterNetEvent('qb-vineyard:SellGrapeJuiceMenu')
AddEventHandler('qb-vineyard:SellGrapeJuiceMenu', function()
	TriggerServerEvent("qb-vineyard:server:SellGrapeJuice")
end)

RegisterNetEvent('qb-vineyard:SellWineMenuTen')
AddEventHandler('qb-vineyard:SellWineMenuTen', function()
	TriggerServerEvent("qb-vineyard:server:SellWineTen")
end)

RegisterNetEvent('qb-vineyard:SellGrapeJuiceMenuTen')
AddEventHandler('qb-vineyard:SellGrapeJuiceMenuTen', function()
	TriggerServerEvent("qb-vineyard:server:SellGrapeJuiceTen")
end)

RegisterNetEvent('qb-vineyard:client:loadIngredients') -- Loads Portion of GrapeJuice into MoonShine
AddEventHandler('qb-vineyard:client:loadIngredients', function()

end)

-- Menu Events

RegisterNetEvent('qb-vineyard:client:ProcessMenu')
AddEventHandler('qb-vineyard:client:ProcessMenu', function()
            local myMenu = {
                {
                    id = 1,
                    header = 'Juices Sales'
                },
                {
                    id = 2,
                    header = "Mix GrapeJuice",
                    txt = "x16 Grapes = x1 GrapeJuice",
                    params = {
                        event = "qb-vineyard:GrapeJuiceProcess",
                    }
                },
				{
                    id = 3,
                    header = "Mix Wine",
                    txt = "x3 GrapeJuice = x1 Wine",
                    params = {
                        event = "qb-vineyard:WineProcess",
                    }
                },
            }
            exports['qb-menu']:openMenu(myMenu)
end)

RegisterNetEvent('qb-vineyard:client:PackingMenu')
AddEventHandler('qb-vineyard:client:PackingMenu', function()
            local myMenu = {
                {
                    id = 1,
                    header = 'Juice Packings'
                },
                {
                    id = 2,
                    header = "Pack GrapeJuice",
                    txt = "x6 Grape Juice = 6Pack",
                    params = {
                        event = "qb-vineyard:server:grapeJuice6pk",
                    }
                },
                {
                    id = 3,
                    header = "Pack GrapeJuice",
                    txt = "x12 Grape Juice = 12Pack",
                    params = {
                        event = "qb-vineyard:server:grapeJuice12pk",
                    }
                },
                {
                    id = 4,
                    header = "Pack GrapeJuice",
                    txt = "x24 Grape Juice = 24Pack",
                    params = {
                        event = "qb-vineyard:server:grapeJuice24pk",
                    }
                },
				{
                    id = 5,
                    header = "Pack Wine",
                    txt = "x6 Wine = 6Pack",
                    params = {
                        event = "qb-vineyard:server:wine6pk",
                    }
                },
                {
                    id = 6,
                    header = "Pack Wine",
                    txt = "x12 Wine = 12Pack",
                    params = {
                        event = "qb-vineyard:server:wine12pk",
                    }
                },
                {
                    id = 7,
                    header = "Pack Wine",
                    txt = "x24 Wine = 24Pack",
                    params = {
                        event = "qb-vineyard:server:wine24pk",
                    }
                },
            }
            exports['qb-menu']:openMenu(myMenu)
end)

RegisterNetEvent('qb-vineyard:client:SellMenu')
AddEventHandler('qb-vineyard:client:SellMenu', function()
            local myMenu = {
                {
                    id = 1,
                    header = 'Juices Sales'
                },
                {
                    id = 2,
                    header = "Sell GrapeJuice",
                    txt = "x3 Grape Juice = $2.00",
                    params = {
                        event = "qb-vineyard:SellGrapeJuiceMenu",
                    }
                },
                {
                    id = 3,
                    header = "Sell GrapeJuice",
                    txt = "x30 Grape Juice = $20.00",
                    params = {
                        event = "qb-vineyard:SellGrapeJuiceMenuTen",
                    }
                },
				{
                    id = 4,
                    header = "Sell Wine",
                    txt = "x1 Wine = $8.00",
                    params = {
                        event = "qb-vineyard:SellWineMenu",
                    }
                },
                {
                    id = 5,
                    header = "Sell Wine",
                    txt = "x10 Wine = $80.00",
                    params = {
                        event = "qb-vineyard:SellWineMenuTen",
                    }
                },
            }
            exports['qb-menu']:openMenu(myMenu)
end)

-- Threads

Citizen.CreateThread(function()
	VineyardBlip = AddBlipForCoord(-1928.81, 2059.53,140.84)
    SetBlipSprite(VineyardBlip, 615)
	SetBlipDisplay(VineyardBlip, 4)
    SetBlipScale(VineyardBlip, 0.65)
	SetBlipColour(VineyardBlip, 58)
    SetBlipAsShortRange(VineyardBlip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Vineyard")
    EndTextCommandSetBlipName(VineyardBlip)
end)

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
end)

Citizen.CreateThread(function()
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
end)

Citizen.CreateThread(function()
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
end)

Citizen.CreateThread(function()
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