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
