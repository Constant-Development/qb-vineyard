Config = {}

Config.Blip = true
 -- True = Blips Enabled
 -- False = Blips Disabled
Config.DebugPoly = false
 -- True = Poly's Enabled
 -- False = Poly's Disabled

Config.Blip = {
    BlipLocation = -1928.81, 2059.53, 140.84,
    BlipSprite = 615,
    BlipDisplay = 4,
    BlipScale = 0.6,
    BlipColour = 58,
    BlipName = "Vineyard",
}

+Config.RouteBlip = {
    BlipLocationOne = 0, 0, 0, -- Needs to match 'RouteOne'
    BlipLocationTwo = 0, 0, 0, -- Needs to match 'RouteTwo'
    BlipLocationThree = 0, 0, 0, -- Needs to match 'RouteThree'
    BlipLocationFour = 0, 0, 0, -- Needs to match 'RouteFour'
    BlipLocationFive = 0, 0, 0, -- Needs to match 'RouteFive'
    BlipLocationSix = 0, 0, 0, -- Needs to match 'RouteSix'
    BlipLocationSeven = 0, 0, 0, -- Needs to match 'RouteSeven'
    BlipLocationEight = 0, 0, 0, -- Needs to match 'RouteEight'
    BlipLocationNine = 0, 0, 0, -- Needs to match 'RouteNine'
    BlipLocationTen = 0, 0, 0, -- Needs to match 'RouteTen'
    BlipSprite = 274,
    BlipDisplay = 3,
    BlipScale = 0.6,
    BlipColour = 59,
    BlipName = "Dealer Destination",
}

Config.RouteCoords = {
    RouteOne = vector3(0, 0, 0),
    RouteOneHeading = 0,
    RouteTwo = vector3(0, 0, 0),
    RouteTwoHeading = 0,
    RouteThree = vector3(0, 0, 0),
    RouteThreeHeading = 0,
    RouteFour = vector3(0, 0, 0),
    RouteFourHeading = 0,
    RouteFive = vector3(0, 0, 0),
    RouteFiveHeading = 0,
    RouteSix = vector3(0, 0, 0),
    RouteSixHeading = 0,
    RouteSeven = vector3(0, 0, 0),
    RouteSevenHeading = 0,
    RouteEight = vector3(0, 0, 0),
    RouteEightHeading = 0,
    RouteNine = vector3(0, 0, 0),
    RouteNineHeading = 0,
    RouteTen = vector3(0, 0, 0),
    RouteTenHeading = 0,
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
