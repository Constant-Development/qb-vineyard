local QBCore = exports['qb-core']:GetCoreObject()

isGrapePickingCoolDownActive = false

-- Grape Giving via Picking

RegisterNetEvent('qb-vineyard:server:getGrapes', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("grape", math.random(3,11))
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['grape'], "add")
end)

-- Portion Events

RegisterNetEvent('qb-vineyard:server:PortionGrapes', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Grape = Player.Functions.GetItemByName('grape')
    if Grape then
        if Grape.amount >= 16 then
            Player.Functions.RemoveItem("grape", 16)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['grape'], "remove")
            Player.Functions.AddItem("grapejuice", 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['grapejuice'], "add")
        else
            TriggerClientEvent('QBCore:Notify', src, "You do not have the correct items!", 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, "You do not have the correct items!", 'error')
    end
end)

RegisterNetEvent('qb-vineyard:server:PortionGrapeJuice', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local GrapeJuice = Player.Functions.GetItemByName('grapejuice')
    if GrapeJuice then
        if GrapeJuice.amount >= 3 then
            Player.Functions.RemoveItem("grapejuice", 3)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['grapejuice'], "remove")
            Player.Functions.AddItem("wine", 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['wine'], "add")
        else
            TriggerClientEvent('QBCore:Notify', src, "You do not have the correct items!", 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, "You do not have the correct items!", 'error')
    end
end)

-- Direct Packaging Events

RegisterNetEvent('qb-vineyard:server:GrapeJuicePackaging', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local GrapeJuice = Player.Functions.GetItemByName('grapejuice')
    if GrapeJuice then
        if GrapeJuice.amount >= 24 then
            Player.Functions.RemoveItem("grapejuice", 24)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['grapejuice'], "remove")
            Player.Functions.AddItem("grapejuice24", 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['grapejuice24'], "add")
        elseif GrapeJuice.amount >= 12 then
            Player.Functions.RemoveItem("grapejuice", 12)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['grapejuice'], "remove")
            Player.Functions.AddItem("grapejuice12", 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['grapejuice12'], "add")
        elseif GrapeJuice.amount >= 6 then
            Player.Functions.RemoveItem("grapejuice", 6)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['grapejuice'], "remove")
            Player.Functions.AddItem("grapejuice6", 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['grapejuice6'], "add")
        else
            TriggerClientEvent('QBCore:Notify', src, "You don\'t have the correct Items!", 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, "You don\'t have the correct Items!", 'error')
    end
end)

RegisterNetEvent('qb-vineyard:server:WinePackaging', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local Wine = Player.Functions.GetItemByName('wine')
    if Wine then
        if Wine.amount >= 24 then
            Player.Functions.RemoveItem("wine", 24)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['wine'], "remove")
            Player.Functions.AddItem("wine24", 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['wine24'], "add")
        elseif Wine.amount >= 12 then
            Player.Functions.RemoveItem("wine", 12)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['wine'], "remove")
            Player.Functions.AddItem("wine12", 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['wine12'], "add")
        elseif Wine.amount >= 6 then
            Player.Functions.RemoveItem("wine", 6)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['wine'], "remove")
            Player.Functions.AddItem("wine6", 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['wine6'], "add")
        else
            TriggerClientEvent('QBCore:Notify', src, "You don\'t have the correct Items!", 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, "You don\'t have the correct Items!", 'error')
    end
end)

-- Direct Selling Event

RegisterNetEvent('qb-vineyard:server:SellMenu', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local GrapeJuice6 = Player.Functions.GetItemByName('grapejuice6')
    local GrapeJuice12 = Player.Functions.GetItemByName('grapejuice12')
    local GrapeJuice24 = Player.Functions.GetItemByName('grapejuice24')
    local Wine6 = Player.Functions.GetItemByName('wine6')
    local Wine12 = Player.Functions.GetItemByName('wine12')
    local Wine24 = Player.Functions.GetItemByName('wine24')
    if GrapeJuice24 then
        Player.Functions.RemoveItem("grapejuice24", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['grapejuice24'], "remove")
        TriggerClientEvent('QBCore:Notify', src, "You\'ve sold x24 Bottle's of Wine", 'success')
        Player.Functions.AddMoney('cash', 32)
    elseif GrapeJuice12 then
        Player.Functions.RemoveItem("grapejuice12", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['grapejuice12'], "remove")
        TriggerClientEvent('QBCore:Notify', src, "You\'ve sold x12 Bottle's of Wine", 'success')
        Player.Functions.AddMoney('cash', 15)
    elseif GrapeJuice6 then
        Player.Functions.RemoveItem("grapejuice6", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['grapejuice6'], "remove")
        TriggerClientEvent('QBCore:Notify', src, "You\'ve sold x6 Bottle's of Wine", 'success')
        Player.Functions.AddMoney('cash', 4)
    elseif Wine24 then
        Player.Functions.RemoveItem("wine24", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['wine24'], "remove")
        TriggerClientEvent('QBCore:Notify', src, "You\'ve sold x24 Bottle's of Wine", 'success')
        Player.Functions.AddMoney('cash', 180)
    elseif Wine12 then
        Player.Functions.RemoveItem("wine12", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['wine12'], "remove")
        TriggerClientEvent('QBCore:Notify', src, "You\'ve sold x12 Bottle's of Wine", 'success')
        Player.Functions.AddMoney('cash', 80)
    elseif Wine6 then
        Player.Functions.RemoveItem("wine6", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['wine6'], "remove")
        TriggerClientEvent('QBCore:Notify', src, "You\'ve sold x6 Bottle's of Wine", 'success')
        Player.Functions.AddMoney('cash', 35)
    else
        TriggerClientEvent('QBCore:Notify', src, "You don\'t have the correct Items!", 'error')
    end
end)

-- Items Basis

QBCore.Functions.CreateUseableItem('grapejuice24', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('grapejuice24')
    Player.Functions.AddItem('grapejuice', 24)
end)

QBCore.Functions.CreateUseableItem('grapejuice12', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('grapejuice12')
    Player.Functions.AddItem('grapejuice', 12)
end)

QBCore.Functions.CreateUseableItem('grapejuice6', function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('grapejuice6')
    Player.Functions.AddItem('grapejuice', 6)
end)

QBCore.Functions.CreateUseableItem('wine24', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('wine24')
    Player.Functions.AddItem('wine', 24)
end)

QBCore.Functions.CreateUseableItem('wine12', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('wine12')
    Player.Functions.AddItem('wine', 12)
end)

QBCore.Functions.CreateUseableItem('wine6', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('wine6')
    Player.Functions.AddItem('wine', 6)
end)

-- Cooldown Basis

RegisterNetEvent('qb-vineyard:server:SetGrapePickingCooldown')
AddEventHandler('qb-vineyard:server:SetGrapePickingCooldown', function()
    isGrapePickingCoolDownActive = true
    Wait((Config.GrapePickingCooldownTime * 1000) * 60)
    isGrapePickingCoolDownActive = false
end)

QBCore.Functions.CreateCallback("qb-vineyard:server:GrapePickingCooldown",function(_, cb)
    if isGrapePickingCoolDownActive then
        cb(true)
    else
        cb(false)
    end
end)