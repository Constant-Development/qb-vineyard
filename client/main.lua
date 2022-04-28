local QBCore = exports['qb-core']:GetCoreObject()

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

function pickProcess()
    QBCore.Functions.Progressbar("pick_grape", "Picking Grapes ..", math.random(6000,8000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@prop_human_bum_bin@idle_a",
        anim = "idle_a",
        flags = 6,
    }, {}, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "amb@prop_human_bum_bin@idle_a", "idle_a", 6.0)
		TriggerServerEvent("qb-vineyard:server:getGrapes")
    end, function() -- Cancel
        Notify(3, Config.Notifications["TaskCancel"], Config.Notifications["okok_VineyardTitle"])
        StopAnimTask(PlayerPedId(), "amb@prop_human_bum_bin@idle_a", "idle_a", 6.0)
    end)
end

function grapeJuiceProcess()
    QBCore.Functions.Progressbar("process_grapes", "Processing Grapes ..", math.random(15000,20000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@code_human_wander_rain@male_a@base",
        anim = "static",
        flags = 6,
    }, {}, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "amb@code_human_wander_rain@male_a@base", "static", 6.0)
        TriggerServerEvent("qb-vineyard:server:PortionJuices")
    end, function() -- Cancel
        Notify(3, Config.Notifications["TaskCancel"], Config.Notifications["okok_VineyardTitle"])
        StopAnimTask(PlayerPedId(), "amb@code_human_wander_rain@male_a@base", "static", 6.0)
    end)
end

function WineProcess()
    QBCore.Functions.Progressbar("stirr_wine", "Stirring Wine..", math.random(15000,20000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@code_human_wander_rain@male_a@base",
        anim = "static",
        flags = 6,
    }, {}, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "amb@code_human_wander_rain@male_a@base", "static", 6.0)
        TriggerServerEvent("qb-vineyard:server:PortionJuices")
    end, function() -- Cancel
        Notify(3, Config.Notifications["TaskCancel"], Config.Notifications["okok_VineyardTitle"])
        StopAnimTask(PlayerPedId(), "amb@code_human_wander_rain@male_a@base", "static", 6.0)
    end)
end

RegisterNetEvent('qb-vineyard:pickgrapes')
AddEventHandler('qb-vineyard:pickgrapes', function()
    pickProcess()
	Wait(5000)
    Notify(2, Config.Notifications["PickGrapesNextStepMessage"], Config.Notifications["okok_VineyardTitle"])
end)

RegisterNetEvent('qb-vineyard:client:ProcessStage')
AddEventHandler('qb-vineyard:client:ProcessStage', function()
    QBCore.Functions.TriggerCallback("QBCore:HasItem", function(HasItem) 
        if HasItem then
            grapeJuiceProcess()
        else
            WineProcess()
        end
    end, Config.ProcessingItem)
end)

RegisterNetEvent('qb-vineyard:client:PackagingStage')
AddEventHandler('qb-vineyard:client:PackagingStage', function()
    QBCore.Functions.TriggerCallback("QBCore:HasItem", function(HasItem) 
        if HasItem then
            TriggerServerEvent('qb-vineyard:server:Packaging')
        else
            TriggerServerEvent('qb-vineyard:server:Packaging')
        end
    end, Config.ProcessingItem)
end)

RegisterNetEvent('qb-vineyard:client:SellMenu')
AddEventHandler('qb-vineyard:client:SellMenu', function()
    local luck = math.random(1,100)
    if luck >= 10 then
        SetNewWayPoint(Config.RouteCoords.RouteOne)
        RouteOneBlip = true
    elseif luck >= 20 then
        SetNewWayPoint(Config.RouteCoords.RouteTwo)
        RouteTwoBlip = true
    elseif luck >= 30 then
        SetNewWayPoint(Config.RouteCoords.RouteThree)
        RouteThreeBlip = true
    elseif luck >= 40 then
        SetNewWayPoint(Config.RouteCoords.RouteFour)
        RouteFourBlip = true
    elseif luck >= 50 then
        SetNewWayPoint(Config.RouteCoords.RouteFive)
        RouteFiveBlip = true
    elseif luck >= 60 then
        SetNewWayPoint(Config.RouteCoords.RouteSix)
        RouteSixBlip = true
    elseif luck >= 70 then
        SetNewWayPoint(Config.RouteCoords.RouteSeven)
        RouteSevenBlip = true
    elseif luck >= 80 then
        SetNewWayPoint(Config.RouteCoords.RouteEight)
        RouteEightBlip = true
    elseif luck >= 90 then
        SetNewWayPoint(Config.RouteCoords.RouteNine)
        RouteNineBlip = true
    elseif luck >= 100 then
        SetNewWayPoint(Config.RouteCoords.RouteTen)
        RouteTenBlip = true
    end
end)

RegisterNetEvent('qb-vineyard:client:SellMenuEvent')
AddEventHandler('qb-vineyard:client:SellMenuEvent', function()
    QBCore.Functions.Progressbar("deliver_goods", "Delivering Goods...", math.random(8500,12000), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "timetable@jimmy@doorknock@",
        anim = "knockdoor_idle_cam",
        flags = 6,
    }, {}, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "timetable@jimmy@doorknock@", "knockdoor_idle_cam", 6.0)
        TriggerServerEvent("qb-vineyard:server:SellMenu")
        RouteOneBlip = false
        RouteTwoBlip = false
        RouteThreeBlip = false
        RouteFourBlip = false
        RouteFiveBlip = false
        RouteSixBlip = false
        RouteSevenBlip = false
        RouteEightBlip = false
        RouteNineBlip = false
        RouteTenBlip = false
    end, function() -- Cancel
        Notify(3, Config.Notifications["TaskCancel"], Config.Notifications["okok_VineyardTitle"])
        StopAnimTask(PlayerPedId(), "timetable@jimmy@doorknock@", "knockdoor_idle_cam", 6.0)
    end)
end)
