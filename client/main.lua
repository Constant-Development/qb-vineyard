local QBCore = exports['qb-core']:GetCoreObject()

local Blip

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
		distance = 1
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
		distance = 2
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
		distance = 2
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

Citizen.CreateThread(function()
    if Config.Blip then
        local VineyardBlip = AddBlipForCoord(-1874.8431, 2086.2163, 141.8856)
        SetBlipSprite(VineyardBlip, Config.EnabledBlip.BlipSprite)
        SetBlipDisplay(VineyardBlip, Config.EnabledBlip.BlipDisplay)
        SetBlipScale(VineyardBlip, Config.EnabledBlip.BlipScale)
        SetBlipColour(VineyardBlip, Config.EnabledBlip.BlipColour)
        SetBlipAsShortRange(VineyardBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.EnabledBlip.BlipName)
        EndTextCommandSetBlipName(VineyardBlip)
    end
end)

local function Notify(notifType, message, title)
	if Config.Notify == 'qb' then
		if notifType == 1 then
			QBCore.Functions.Notify(message, 'success')
		elseif notifType == 2 then
			QBCore.Functions.Notify(message, 'primary')
		elseif notifType == 3 then
			QBCore.Functions.Notify(message, 'error')
		end
	elseif Config.Notify == "okok" then
		if notifType == 1 then
			exports['okokNotify']:Alert(title, message, 3000, 'success')
		elseif notifType == 2 then
			exports['okokNotify']:Alert(title, message, 3000, 'info')
		elseif notifType == 3 then
			exports['okokNotify']:Alert(title, message, 3000, 'error')
		end
	elseif Config.Notify == "mythic" then
		if notifType == 1 then
			exports['mythic_notify']:DoHudText('success', message)
		elseif notifType == 2 then
			exports['mythic_notify']:DoHudText('inform', message)
		elseif notifType == 3 then
			exports['mythic_notify']:DoHudText('error', message)
		end
	elseif Config.Notify == 'chat' then
		TriggerEvent('chatMessage', message)
	end
end

local function pickProcess()
    local luck = math.random(1, 10)
    QBCore.Functions.TriggerCallback('qb-vineyard:server:GrapePickingCooldown', function(result)
        if not result then
            QBCore.Functions.Progressbar("pick_grape", "Picking Grapes ..", math.random(6000,8000), false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = "amb@prop_human_bum_bin@idle_a",
                anim = "idle_a",
                flags = 6,
            }, {}, {}, function() -- Done
                ClearPedTasks(PlayerPedId())
                TriggerServerEvent("qb-vineyard:server:getGrapes")
                if luck >= 8 then
                    TriggerServerEvent('qb-vineyard:server:SetGrapePickingCooldown')
                end
            end, function() -- Cancel
                Notify(3, Config.Notifications["TaskCancel"], Config.Notifications["okok_VineyardTitle"])
                ClearPedTasks(PlayerPedId())
            end)
        else
            Notify(3, Config.Notifications["Cooldown"], Config.Notifications["okok_VineyardTitle"])
        end
    end)
end

local function grapeJuiceProcess()
    QBCore.Functions.Progressbar("process_grapes", "Processing Grapes ..", math.random(15000,20000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@code_human_wander_rain@male_a@base",
        anim = "static",
        flags = 6,
    }, {}, {}, function() -- Done
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent("qb-vineyard:server:PortionGrapes")
    end, function() -- Cancel
        Notify(3, Config.Notifications["TaskCancel"], Config.Notifications["okok_VineyardTitle"])
        ClearPedTasks(PlayerPedId())
    end)
end

local function WineProcess()
    QBCore.Functions.Progressbar("stirr_wine", "Stirring Wine..", math.random(15000,20000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@code_human_wander_rain@male_a@base",
        anim = "static",
        flags = 6,
    }, {}, {}, function() -- Done
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent("qb-vineyard:server:PortionGrapeJuice")
    end, function() -- Cancel
        Notify(3, Config.Notifications["TaskCancel"], Config.Notifications["okok_VineyardTitle"])
        ClearPedTasks(PlayerPedId())
    end)
end

RegisterNetEvent('qb-vineyard:pickgrapes')
AddEventHandler('qb-vineyard:pickgrapes', function()
    pickProcess()
	Citizen.Wait(5000)
    Notify(2, Config.Notifications["PickGrapesNextStepMessage"], Config.Notifications["okok_VineyardTitle"])
end)

RegisterNetEvent('qb-vineyard:client:GrapeJuiceProcessing')
AddEventHandler('qb-vineyard:client:GrapeJuiceProcessing', function()
    grapeJuiceProcess()
end)

RegisterNetEvent('qb-vineyard:client:WineProcessing')
AddEventHandler('qb-vineyard:client:WineProcessing', function()
    WineProcess()
end)

RegisterNetEvent('qb-vineyard:client:GrapeJuicePackaging')
AddEventHandler('qb-vineyard:client:GrapeJuicePackaging', function()
    TriggerServerEvent('qb-vineyard:server:GrapeJuicePackaging')
end)

RegisterNetEvent('qb-vineyard:client:WinePackaging')
AddEventHandler('qb-vineyard:client:WinePackaging', function()
    TriggerServerEvent('qb-vineyard:server:WinePackaging')
end)

local function DeliveryTargetZone(route)
    Citizen.CreateThread(function()
        exports['qb-target']:AddBoxZone("VineyardSellMenu", Config.Routes[route].DeliveryCoords, 2, 2, {
            name = "VineyardSellMenu", heading = Config.Routes[route].heading, debugPoly = Config.DebugPoly, },
        { options = { { type = "client", event = "qb-vineyard:client:SellMenuEvent", icon = "fa-solid fa-hand", label = "Deliver The Goods!", }, }, distance = 1.5 })
    end)
end

local function DeliveryBlip(route)
	Blip = AddBlipForCoord(Config.Routes[route].DeliveryCoords)
    SetBlipSprite(Blip, Config.RoutesBlipConfig.BlipSprite)
	SetBlipDisplay(Blip, Config.RoutesBlipConfig.BlipDisplay)
    SetBlipScale(Blip, Config.RoutesBlipConfig.BlipScale)
	SetBlipColour(Blip, Config.RoutesBlipConfig.BlipColour)
    SetBlipAsShortRange(Blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Config.RoutesBlipConfig.BlipName)
    EndTextCommandSetBlipName(Blip)
end

RegisterNetEvent('qb-vineyard:client:SellMenuFactors')
AddEventHandler('qb-vineyard:client:SellMenuFactors', function()
    local luck = math.random(#Config.Routes)
    SetNewWaypoint(Config.Routes[luck].DeliveryCoords)
    DeliveryTargetZone(luck)
    DeliveryBlip(luck)
end)

RegisterNetEvent('qb-vineyard:client:SellMenuEvent')
AddEventHandler('qb-vineyard:client:SellMenuEvent', function()
    QBCore.Functions.Progressbar("deliver_goods", "Delivering Goods...", math.random(8500,12000), true, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "timetable@jimmy@doorknock@",
        anim = "knockdoor_idle",
        flags = 17,
    }, {}, {}, function()
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent("qb-vineyard:server:SellMenu")
        RemoveBlip(Blip)
        exports['qb-target']:RemoveZone("VineyardSellMenu")
    end, function()
        Notify(3, Config.Notifications["TaskCancel"], Config.Notifications["okok_VineyardTitle"])
        ClearPedTasks(PlayerPedId())
    end)
end)