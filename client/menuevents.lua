RegisterNetEvent('qb-vineyard:client:ProcessMenu')
AddEventHandler('qb-vineyard:client:ProcessMenu', function()
    local myMenu = {
        {
            id = 1,
            header = 'Juices Sales'
        },
        {
            id = 2,
            header = "Mix Juices",
            txt = "x16 Grapes = x1 GrapeJuice | x3 GrapeJuice = x1 Wine",
            params = {
                event = "qb-vineyard:client:ProcessStage",
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
            txt = "x6 GrapeJuice = 6Pack | x12 GrapeJuice = 12Pack | x24 GrapeJuice = 24Pack",
            params = {
                event = "qb-vineyard:client:PackagingStage",
            }
        },
        {
            id = 3,
            header = "Pack Wine",
            txt = "x6 Wine = 6Pack | x12 = 12Pack | x24 Wine = 24Pack",
            params = {
                event = "qb-vineyard:client:PackagingStage",
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
            header = 'Juice Sales'
        },
        {
            id = 2,
            header = "Sell GrapeJuice",
            txt = "x6 Grape Juice = $4.00 | x12 Grape Juice = $15.00 | x24 Grape Juice = $32.00",
            params = {
                event = "qb-vineyard:client:SellMenu",
            }
        },
        {
            id = 3,
            header = "Sell Wine",
            txt = "x6 Wine = $35.00 | x12 Wine = $80.00 | x24 Wine = $180.00",
            params = {
                event = "qb-vineyard:client:SellMenu",
            }
        },
    }
    exports['qb-menu']:openMenu(myMenu)
end)
