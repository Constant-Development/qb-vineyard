local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-vineyard:server:getGrapes', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.AddItem("grape", math.random(3,11))
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grape'], "add")
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

RegisterNetEvent('qb-vineyard:server:grapeJuice6pk', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
    local grape = xPlayer.Functions.GetItemByName('grape')
	if xPlayer.PlayerData.items ~= nil then
        if grape.amount >=16 ~= nil then
            if grape.amount >= 16 then
                xPlayer.Functions.RemoveItem("grapejuice", 6, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice'], "remove")
                xPlayer.Functions.AddItem("grapejuice6", 1, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice6'], "add")
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

RegisterNetEvent('qb-vineyard:server:grapeJuice12pk', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
    local grape = xPlayer.Functions.GetItemByName('grape')
	if xPlayer.PlayerData.items ~= nil then
        if grape.amount >=16 ~= nil then
            if grape.amount >= 16 then
                xPlayer.Functions.RemoveItem("grapejuice", 12, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice'], "remove")
                xPlayer.Functions.AddItem("grapejuice12", 1, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice12'], "add")
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

RegisterNetEvent('qb-vineyard:server:grapeJuice24pk', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
    local grape = xPlayer.Functions.GetItemByName('grape')
	if xPlayer.PlayerData.items ~= nil then
        if grape.amount >=16 ~= nil then
            if grape.amount >= 16 then
                xPlayer.Functions.RemoveItem("grapejuice", 24, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice'], "remove")
                xPlayer.Functions.AddItem("grapejuice24", 1, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice24'], "add")
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

RegisterNetEvent('qb-vineyard:server:wine6pk', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
    local grape = xPlayer.Functions.GetItemByName('grape')
	if xPlayer.PlayerData.items ~= nil then
        if grape.amount >=16 ~= nil then
            if grape.amount >= 16 then
                xPlayer.Functions.RemoveItem("wine", 6, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine'], "remove")
                xPlayer.Functions.AddItem("wine6", 1, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine6'], "add")
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

RegisterNetEvent('qb-vineyard:server:wine12pk', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
    local grape = xPlayer.Functions.GetItemByName('grape')
	if xPlayer.PlayerData.items ~= nil then
        if grape.amount >=16 ~= nil then
            if grape.amount >= 16 then
                xPlayer.Functions.RemoveItem("wine", 12, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine'], "remove")
                xPlayer.Functions.AddItem("wine12", 1, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine12'], "add")
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

RegisterNetEvent('qb-vineyard:server:wine24pk', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
    local grape = xPlayer.Functions.GetItemByName('grape')
	if xPlayer.PlayerData.items ~= nil then
        if grape.amount >=16 ~= nil then
            if grape.amount >= 16 then
                xPlayer.Functions.RemoveItem("wine", 24, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine'], "remove")
                xPlayer.Functions.AddItem("wine24", 1, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine24'], "add")
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

RegisterNetEvent('qb-vineyard:server:SellWine', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
    local wine = xPlayer.Functions.GetItemByName('wine')
    if xPlayer.PlayerData.items ~= nil then
        if wine.amount >=1 ~= nil then
            if wine.amount >= 1 then
	            xPlayer.Functions.RemoveItem("wine", 1, false)
	            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine'], "remove")
                TriggerClientEvent('okokNotify:Alert', source, "Juice Picker", "You\'ve sold a Bottle of Wine", 3500, 'info')
                xPlayer.Functions.AddMoney('cash', 8)
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

RegisterNetEvent('qb-vineyard:server:SellWineTen', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
    local wine = xPlayer.Functions.GetItemByName('wine')
    if xPlayer.PlayerData.items ~= nil then
        if wine.amount >=10 ~= nil then
            if wine.amount >= 10 then
	            xPlayer.Functions.RemoveItem("wine", 10, false)
	            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['wine'], "remove")
                TriggerClientEvent('okokNotify:Alert', source, "Juice Picker", "You\'ve sold a Bottle of Wine", 3500, 'info')
                xPlayer.Functions.AddMoney('cash', 100)
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

RegisterNetEvent('qb-vineyard:server:SellGrapeJuice', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
    local grapejuice = xPlayer.Functions.GetItemByName('grapejuice')
    if xPlayer.PlayerData.items ~= nil then
        if grapejuice.amount >=3 ~= nil then
            if grapejuice.amount >= 3 then
                xPlayer.Functions.RemoveItem("grapejuice", 3, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice'], "remove")
                TriggerClientEvent('okokNotify:Alert', source, "Juice Picker", "You\'ve sold a Bottle of GrapeJuice", 3500, 'info')
                xPlayer.Functions.AddMoney('cash', 2)
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

RegisterNetEvent('qb-vineyard:server:SellGrapeJuiceTen', function()
	local xPlayer = QBCore.Functions.GetPlayer(tonumber(source))
    local grapejuice = xPlayer.Functions.GetItemByName('grapejuice')
    if xPlayer.PlayerData.items ~= nil then
        if grapejuice.amount >=30 ~= nil then
            if grapejuice.amount >= 30 then
                xPlayer.Functions.RemoveItem("grapejuice", 10, false)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['grapejuice'], "remove")
                TriggerClientEvent('okokNotify:Alert', source, "Juice Picker", "You\'ve sold a Bottle of GrapeJuice", 3500, 'info')
                xPlayer.Functions.AddMoney('cash', 25)
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

QBCore.Functions.CreateUseableItem('wine24', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('wine24')
    Wait(500)
    Player.Functions.AddItem('wine', 24)
end)

QBCore.Functions.CreateUseableItem('wine12', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('wine12')
    Wait(500)
    Player.Functions.AddItem('wine', 12)
end)

QBCore.Functions.CreateUseableItem('wine6', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('wine6')
    Wait(500)
    Player.Functions.AddItem('wine', 6)
end)

QBCore.Functions.CreateUseableItem('grapejuice24', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('grapejuice24')
    Wait(500)
    Player.Functions.AddItem('grapejuice', 24)
end)

QBCore.Functions.CreateUseableItem('grapejuice12', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('grapejuice12')
    Wait(500)
    Player.Functions.AddItem('grapejuice', 12)
end)

QBCore.Functions.CreateUseableItem('grapejuice6', function()
	local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('grapejuice6')
    Wait(500)
    Player.Functions.AddItem('grapejuice', 6)
end)