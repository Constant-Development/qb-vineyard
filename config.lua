Config = {}

Config.Blip = true
 -- True = Blips Enabled
 -- False = Blips Disabled

Config.Blip = {
    BlipLocation = -1928.81, 2059.53, 140.84,
    BlipSprite = 615,
    BlipDisplay = 4,
    BlipScale = 0.6,
    BlipColour = 58,
    BlipName = "Vineyard",
}

Config.ProcessingItem = "grape" -- Don't touch this unless you edit 'qb-vineyard:client:ProcessStage'
Config.SellItem = "grapejuice" -- Don't touch this unless you edit 'qb-vineyard:client:SellMenu'

Config.Notifications = {
    --Messages
    ["TaskCancel"] = "You have cancelled the task...",
    ["PickGrapesNextStepMessage"] = "Begin heading to the back two Doors of the Mansion...",

    --OkOk Titles
    ["okok_VineyardTitle"] = "Juice System Aid",
}
