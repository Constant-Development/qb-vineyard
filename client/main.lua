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
    QBCore.Functions.Progressbar("grape_juice", "Processing Grapes ..", math.random(15000,20000), false, true, {
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
        TriggerServerEvent("qb-vineyard:server:PortionGrapeJuice")
    end, function() -- Cancel
        Notify(3, Config.Notifications["TaskCancel"], Config.Notifications["okok_VineyardTitle"])
        StopAnimTask(PlayerPedId(), "amb@code_human_wander_rain@male_a@base", "static", 6.0)
    end)
end

function WineProcess()
    QBCore.Functions.Progressbar("grape_juice", "Stirring Wine..", math.random(15000,20000), false, true, {
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
        TriggerServerEvent("qb-vineyard:server:PortionWine")
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
AddEventHandler('qb-vineyard:ProcessStage', function()
    QBCore.Functions.TriggerCallback("QBCore:HasItem", function(HasItem) 
        if HasItem then
            grapeJuiceProcess()
        else
            WineProcess()
        end
    end, Config.ProcessingItem)
end)

RegisterNetEvent('qb-vineyard:client:SellMenu')
AddEventHandler('qb-vineyard:SellGrapeJuiceMenu', function()
    QBCore.Functions.TriggerCallback("QBCore:HasItem", function(HasItem) 
        if HasItem then
            TriggerServerEvent("qb-vineyard:server:SellGrapeJuice")
        else
            TriggerServerEvent("qb-vineyard:server:SellWine")
        end
    end, Config.SellItem)
end)

RegisterNetEvent('qb-vineyard:client:loadIngredients') -- Loads Portion of GrapeJuice into MoonShine
AddEventHandler('qb-vineyard:client:loadIngredients', function()

end)
