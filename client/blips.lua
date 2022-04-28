Citizen.CreateThread(function()
    if Config.Blip then
	VineyardBlip = AddBlipForCoord(Config.Blip.BlipLocation)
        SetBlipSprite(VineyardBlip, Config.Blip.BlipSprite)
	SetBlipDisplay(VineyardBlip, Config.Blip.BlipDisplay)
        SetBlipScale(VineyardBlip, Config.Blip.BlipScale)
	SetBlipColour(VineyardBlip, Config.Blip.BlipColour)
        SetBlipAsShortRange(VineyardBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.Blip.BlipName)
        EndTextCommandSetBlipName(VineyardBlip)
    end
end)

local RouteOneBlip = false
local RouteTwoBlip = false
local RouteThreeBlip = false
local RouteFourBlip = false
local RouteFiveBlip = false
local RouteSixBlip = false
local RouteSevenBlip = false
local RouteEightBlip = false
local RouteNineBlip = false
local RouteTenBlip = false

Citizen.CreateThread(function()
    if RouteOneBlip then
	    RouteOneBlip = AddBlipForCoord(Config.RouteBlip.BlipLocation)
        SetBlipSprite(RouteOneBlip, Config.RouteBlip.BlipSprite)
	    SetBlipDisplay(RouteOneBlip, Config.RouteBlip.BlipDisplay)
        SetBlipScale(RouteOneBlip, Config.RouteBlip.BlipScale)
	    SetBlipColour(RouteOneBlip, Config.RouteBlip.BlipColour)
        SetBlipAsShortRange(RouteOneBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.RouteBlip.BlipName)
        EndTextCommandSetBlipName(RouteOneBlip)
    end
end)

Citizen.CreateThread(function()
    if RouteTwoBlip then
        RouteTwoBlip = AddBlipForCoord(Config.RouteBlip.BlipLocation)
        SetBlipSprite(RouteTwoBlip, Config.RouteBlip.BlipSprite)
	    SetBlipDisplay(RouteTwoBlip, Config.RouteBlip.BlipDisplay)
        SetBlipScale(RouteTwoBlip, Config.RouteBlip.BlipScale)
	    SetBlipColour(RouteTwoBlip, Config.RouteBlip.BlipColour)
        SetBlipAsShortRange(RouteTwoBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.RouteBlip.BlipName)
        EndTextCommandSetBlipName(RouteTwoBlip)
    end
end)

Citizen.CreateThread(function()
    if RouteThreeBlip then
        RouteThreeBlip = AddBlipForCoord(Config.RouteBlip.BlipLocation)
        SetBlipSprite(RouteThreeBlip, Config.RouteBlip.BlipSprite)
	    SetBlipDisplay(RouteThreeBlip, Config.RouteBlip.BlipDisplay)
        SetBlipScale(RouteThreeBlip, Config.RouteBlip.BlipScale)
	    SetBlipColour(RouteThreeBlip, Config.RouteBlip.BlipColour)
        SetBlipAsShortRange(RouteThreeBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.RouteBlip.BlipName)
        EndTextCommandSetBlipName(RouteThreeBlip)
    end
end)

Citizen.CreateThread(function()
    if RouteFourBlip then
        RouteFourBlip = AddBlipForCoord(Config.RouteBlip.BlipLocation)
        SetBlipSprite(RouteFourBlip, Config.RouteBlip.BlipSprite)
	    SetBlipDisplay(RouteFourBlip, Config.RouteBlip.BlipDisplay)
        SetBlipScale(RouteFourBlip, Config.RouteBlip.BlipScale)
	    SetBlipColour(RouteFourBlip, Config.RouteBlip.BlipColour)
        SetBlipAsShortRange(RouteFourBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.RouteBlip.BlipName)
        EndTextCommandSetBlipName(RouteFourBlip)
    end
end)

Citizen.CreateThread(function()
    if RouteFiveBlip then
        RouteFiveBlip = AddBlipForCoord(Config.RouteBlip.BlipLocation)
        SetBlipSprite(RouteFiveBlip, Config.RouteBlip.BlipSprite)
	    SetBlipDisplay(RouteFiveBlip, Config.RouteBlip.BlipDisplay)
        SetBlipScale(RouteFiveBlip, Config.RouteBlip.BlipScale)
	    SetBlipColour(RouteFiveBlip, Config.RouteBlip.BlipColour)
        SetBlipAsShortRange(RouteFiveBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.RouteBlip.BlipName)
        EndTextCommandSetBlipName(RouteFiveBlip)
    end
end)

Citizen.CreateThread(function()
    if RouteSixBlip then
        RouteSixBlip = AddBlipForCoord(Config.RouteBlip.BlipLocation)
        SetBlipSprite(RouteSixBlip, Config.RouteBlip.BlipSprite)
	    SetBlipDisplay(RouteSixBlip, Config.RouteBlip.BlipDisplay)
        SetBlipScale(RouteSixBlip, Config.RouteBlip.BlipScale)
	    SetBlipColour(RouteSixBlip, Config.RouteBlip.BlipColour)
        SetBlipAsShortRange(RouteSixBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.RouteBlip.BlipName)
        EndTextCommandSetBlipName(RouteSixBlip)
    end
end)

Citizen.CreateThread(function()
    if RouteSevenBlip then
        RouteSevenBlip = AddBlipForCoord(Config.RouteBlip.BlipLocation)
        SetBlipSprite(RouteSevenBlip, Config.RouteBlip.BlipSprite)
	    SetBlipDisplay(RouteSevenBlip, Config.RouteBlip.BlipDisplay)
        SetBlipScale(RouteSevenBlip, Config.RouteBlip.BlipScale)
	    SetBlipColour(RouteSevenBlip, Config.RouteBlip.BlipColour)
        SetBlipAsShortRange(RouteSevenBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.RouteBlip.BlipName)
        EndTextCommandSetBlipName(RouteSevenBlip)
    end
end)

Citizen.CreateThread(function()
    if RouteEightBlip then
        RouteEightBlip = AddBlipForCoord(Config.RouteBlip.BlipLocation)
        SetBlipSprite(RouteEightBlip, Config.RouteBlip.BlipSprite)
	    SetBlipDisplay(RouteEightBlip, Config.RouteBlip.BlipDisplay)
        SetBlipScale(RouteEightBlip, Config.RouteBlip.BlipScale)
	    SetBlipColour(RouteEightBlip, Config.RouteBlip.BlipColour)
        SetBlipAsShortRange(RouteEightBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.RouteBlip.BlipName)
        EndTextCommandSetBlipName(RouteEightBlip)
    end
end)

Citizen.CreateThread(function()
    if RouteNineBlip then
        RouteNineBlip = AddBlipForCoord(Config.RouteBlip.BlipLocation)
        SetBlipSprite(RouteNineBlip, Config.RouteBlip.BlipSprite)
	    SetBlipDisplay(RouteNineBlip, Config.RouteBlip.BlipDisplay)
        SetBlipScale(RouteNineBlip, Config.RouteBlip.BlipScale)
	    SetBlipColour(RouteNineBlip, Config.RouteBlip.BlipColour)
        SetBlipAsShortRange(RouteNineBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.RouteBlip.BlipName)
        EndTextCommandSetBlipName(RouteNineBlip)
    end
end)

Citizen.CreateThread(function()
    if RouteTenBlip then
        RouteTenBlip = AddBlipForCoord(Config.RouteBlip.BlipLocation)
        SetBlipSprite(RouteTenBlip, Config.RouteBlip.BlipSprite)
	    SetBlipDisplay(RouteTenBlip, Config.RouteBlip.BlipDisplay)
        SetBlipScale(RouteTenBlip, Config.RouteBlip.BlipScale)
	    SetBlipColour(RouteTenBlip, Config.RouteBlip.BlipColour)
        SetBlipAsShortRange(RouteTenBlip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Config.RouteBlip.BlipName)
        EndTextCommandSetBlipName(RouteTenBlip)
    end
end)
