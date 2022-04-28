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
	QBCore.Functions.Notify('Begin heading to the back two Doors of the Mansion...', 'primary', 4000)
end)

RegisterNetEvent('qb-vineyard:GrapeJuiceProcess')
AddEventHandler('qb-vineyard:GrapeJuiceProcess', function()
	grapeJuiceProcess()
end)

RegisterNetEvent('qb-vineyard:WineProcess')
AddEventHandler('qb-vineyard:WineProcess', function()
	WineProcess()
end)

RegisterNetEvent('qb-vineyard:SellGrapeJuiceMenu')
AddEventHandler('qb-vineyard:SellGrapeJuiceMenu', function()
	TriggerServerEvent("qb-vineyard:server:SellGrapeJuice")
end)

RegisterNetEvent('qb-vineyard:SellWineMenu')
AddEventHandler('qb-vineyard:SellWineMenu', function()
	TriggerServerEvent("qb-vineyard:server:SellWine")
end)

RegisterNetEvent('qb-vineyard:client:loadIngredients') -- Loads Portion of GrapeJuice into MoonShine
AddEventHandler('qb-vineyard:client:loadIngredients', function()

end)