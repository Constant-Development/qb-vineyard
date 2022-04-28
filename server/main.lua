local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-vineyard:server:getGrapes', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("grape", math.random(3,11))
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grape'], "add")
end)

RegisterNetEvent('qb-vineyard:server:grapeJuice', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
    local grape = xPlayer.Functions.GetItemByName('grape')
	if xPlayer.PlayerData.items ~= nil then
        if grape.amount >=16 ~= nil then
            if grape.amount >= 16 then
                xPlayer.Functions.RemoveItem("grape", 16, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grape'], "remove")
                TriggerClientEvent("qb-vineyard:client:grapeJuice", source)
                xPlayer.Functions.AddItem("grapejuice", 1, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice'], "add")
            else
                TriggerClientEvent('QBCore:Notify', source, "You don\'t have the correct Items!", 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, "You don\'t have the correct Items!", 'error')
        end
	else
		TriggerClientEvent('QBCore:Notify', source, "You don\'t have the correct Items!", "error")
	end
end)

RegisterNetEvent('qb-vineyard:server:GrapeJuicePackaging', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName('grapejuice') >= 6 then
        Player.Functions.RemoveItem("grapejuice", 6)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice'], "remove")
        Player.Functions.AddItem("grapejuice6", 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice6'], "add")
    elseif Player.Functions.GetItemByName('grapejuice') >= 12 then
        Player.Functions.RemoveItem("grapejuice", 12)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice'], "remove")
        Player.Functions.AddItem("grapejuice12", 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice12'], "add")
    elseif Player.Functions.GetItemByName('grapejuice') >= 24 then
        Player.Functions.RemoveItem("grapejuice", 24)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice'], "remove")
        Player.Functions.AddItem("grapejuice24", 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice24'], "add")
    else
        TriggerClientEvent('QBCore:Notify', source, "You don\'t have the correct Items!", 'error')
    end
end)

RegisterNetEvent('qb-vineyard:server:SellGrapeJuice', function()
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    if Player.Functions.GetItemByName('grapejuice6') then
        Player.Functions.RemoveItem("grapejuice6", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice6'], "remove")
        TriggerClientEvent('QBCore:Notify', source, "You\'ve sold x6 Bottle's of Wine", 'success')
        Player.Functions.AddMoney('cash', 4)
    elseif Player.Functions.GetItemByName('grapejuice12') then
        Player.Functions.RemoveItem("grapejuice12", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice12'], "remove")
        TriggerClientEvent('QBCore:Notify', source, "You\'ve sold x12 Bottle's of Wine", 'success')
        Player.Functions.AddMoney('cash', 15)
    elseif Player.Functions.GetItemByName('grapejuice24') then
        Player.Functions.RemoveItem("grapejuice24", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice24'], "remove")
        TriggerClientEvent('QBCore:Notify', source, "You\'ve sold x24 Bottle's of Wine", 'success')
        Player.Functions.AddMoney('cash', 32)
    else
        TriggerClientEvent('QBCore:Notify', source, "You don\'t have the correct Items!", 'error')
    end
end)

RegisterNetEvent('qb-vineyard:server:loadIngredients', function()
    local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
    local grape = xPlayer.Functions.GetItemByName('grapejuice')
    if xPlayer.PlayerData.items ~= nil then
        if grape.amount >=3 ~= nil then
            if grape.amount >= 3 then
                xPlayer.Functions.RemoveItem("grapejuice", 3, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice'], "remove")
                TriggerClientEvent("qb-vineyard:client:loadIngredients", source)
                xPlayer.Functions.AddItem("wine", 1, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine'], "add")
            else
                TriggerClientEvent('QBCore:Notify', source, "You do not have the correct items!", 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, "You do not have the correct items!", 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', source, "You do not have any items!", "error")
    end
end)

RegisterNetEvent('qb-vineyard:server:WinePackaging', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName('wine') >= 6 then
        Player.Functions.RemoveItem("wine", 6)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine'], "remove")
        Player.Functions.AddItem("wine6", 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine6'], "add")
    elseif Player.Functions.GetItemByName('wine') >= 12 then
        Player.Functions.RemoveItem("wine", 12)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine'], "remove")
        Player.Functions.AddItem("wine12", 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine12'], "add")
    elseif Player.Functions.GetItemByName('wine') >= 24 then
        Player.Functions.RemoveItem("wine", 24)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine'], "remove")
        Player.Functions.AddItem("wine24", 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine24'], "add")
    else
        TriggerClientEvent('QBCore:Notify', source, "You don\'t have the correct Items!", 'error')
    end
end)

RegisterNetEvent('qb-vineyard:server:SellWine', function()
    local Player = QBCore.Functions.GetPlayer(tonumber(source))
    if Player.Functions.GetItemByName('wine6') then
        Player.Functions.RemoveItem("wine6", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine6'], "remove")
        TriggerClientEvent('QBCore:Notify', source, "You\'ve sold x6 Bottle's of Wine", 'success')
        Player.Functions.AddMoney('cash', 35)
    elseif Player.Functions.GetItemByName('wine12') then
        Player.Functions.RemoveItem("wine12", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine12'], "remove")
        TriggerClientEvent('QBCore:Notify', source, "You\'ve sold x12 Bottle's of Wine", 'success')
        Player.Functions.AddMoney('cash', 80)
    elseif Player.Functions.GetItemByName('wine24') then
        Player.Functions.RemoveItem("wine24", 1, false)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine24'], "remove")
        TriggerClientEvent('QBCore:Notify', source, "You\'ve sold x24 Bottle's of Wine", 'success')
        Player.Functions.AddMoney('cash', 180)
    else
        TriggerClientEvent('QBCore:Notify', source, "You don\'t have the correct Items!", 'error')
    end
end)
