Config = {}

Config.Blip = true
 -- True = Blips Enabled
  -- Blip = Config.EnabledBlip
 -- False = Blips Disabled
Config.DebugPoly = true
 -- True = Poly's Enabled
 -- False = Poly's Disabled

Config.EnabledBlip = {
    BlipSprite = 615,
    BlipDisplay = 4,
    BlipScale = 0.6,
    BlipColour = 58,
    BlipName = "Vineyard",
}

Config.RoutesBlipConfig = {
    BlipSprite = 274,
    BlipDisplay = 3,
    BlipScale = 0.6,
    BlipColour = 59,
    BlipName = "Dealer Destination",
}

Config.Routes = {
    [1] = {
        DeliveryCoords = vector3(193.2354, 103.5669, 93.5474),
        Heading = 161.8913
    },
    [2] = {
        DeliveryCoords = vector3(-413.9259, 220.4128, 83.4308),
        Heading = 315.9512
    },
    [3] = {
        DeliveryCoords = vector3(-1213.4998, -406.7510, 34.1401),
        Heading = 210.8096
    },
    [4] = {
        DeliveryCoords = vector3(-1213.4998, -406.7510, 34.1401),
        Heading = 297.4095
    },
    [5] = {
        DeliveryCoords = vector3(63.8172, -1729.1006, 29.6441),
        Heading = 49.4062
    },
}

Config.Notifications = {
    --Messages
    ["TaskCancel"] = "You have cancelled the task...",
    ["PickGrapesNextStepMessage"] = "Begin heading to the back two Doors of the Mansion...",

    --OkOk Titles
    ["okok_VineyardTitle"] = "Juice System Aid",
}