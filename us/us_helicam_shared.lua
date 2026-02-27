Nabla.LogLevel = Nabla.LogLevels.WARN -- Log levels are ALL, TRACE, DEBUG, INFO, WARN, ERROR, FATAL, OFF (default is WARN)

Config = {

    -- Please check our FAQ if you have any question : https://fivem.nabla-corporation.com/faq

    -- List of players who have access to the actions, set WhiteList = false, to disable it
    WhiteList = false,

    -- Keybinds, you can choose from here : https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/
    DefaultControls = function()
        RegisterKeyMapping('+helicam', 'HeliCam - Toggle UI', 'KEYBOARD', 'Y') -- Open camera
        RegisterKeyMapping('+helicam_vision', 'HeliCam - Vision Mode',
                           'MOUSE_BUTTON', 'MOUSE_LEFT') -- Cycle through the visions mode
        RegisterKeyMapping('+helicam_spotlight', 'HeliCam - Spotlight',
                           'MOUSE_BUTTON', 'MOUSE_RIGHT') -- Enable spotlight
        RegisterKeyMapping('+helicam_marker', 'HeliCam - Add / Remove marker',
                           'MOUSE_BUTTON', 'MOUSE_MIDDLE') -- Add a marker or remove it if one is already close
        RegisterKeyMapping('+helicam_lock', 'HeliCam - Lock', 'KEYBOARD',
                           'SPACE') -- Lock camera on aimed target
        RegisterKeyMapping('+helicam_zoom_plus', 'HeliCam - Zoom In',
                           'MOUSE_WHEEL', 'IOM_WHEEL_UP') -- Zoom camera
        RegisterKeyMapping('+helicam_zoom_minus', 'HeliCam - Zoom Out',
                           'MOUSE_WHEEL', 'IOM_WHEEL_DOWN') -- Zoom camera
        RegisterKeyMapping('+helicam_secondary', 'HeliCam - Radius control',
                           'KEYBOARD', 'LMENU') -- Hold and press zoom + / - to change radius
        RegisterKeyMapping('+helicam_tertiary', 'HeliCam - Brightness control',
                           'KEYBOARD', 'LCONTROL') -- Hold and press zoom + / - to change brightness
        RegisterKeyMapping('+helicam_rappel', 'HeliCam - Rappel down heli',
                           'KEYBOARD', 'X') -- Rappel down from the heli
    end,

    -- UI Refresh period, lower makes faster UI but requires more CPU
    RefreshRate = 100,

    -- Blip for camera aimed point
    AimedBlip = {
        Sprite = 390,
        Color = 1,
        Scale = 1.5,
        Name = "HeliCam - Aimed Point"
    },

    -- Blip for markers
    BlipMarker = {Sprite = 1, Color = 1, Scale = 1.0, Name = "HeliCam - Marker"},

    -- How long does a marker lasts for ? Can be removed before by marking again close to it (Set to -1 for infinite)
    MarkerTimeout = 30000, -- in milliseconds

    -- How long does it take for the camera to unlock after losing sight of the tracked object (Set to -1 to track through walls)
    UnlockTimeout = 2500, -- in milliseconds

    -- How long does it take for the camera to lock a target (Set to 0 to disable)
    LockTime = 0, -- in milliseconds

    -- How long does the helicopter has to stay on the ground for the camera to repair itself after it was shot
    RepairTime = 20000, -- in milliseconds

    -- How fast the camera can move :
    Incr = {
        Pan = 2.5, --  Left / Right
        Tilt = 2.5, --  Up   / Down
        Fov = 5.0 --  In   / Out
    },

    -- How many cameras can be opened per vehicle ?
    MaxUse = 1,

    -- Define used units
    Units = {
        Self = {
            Speed = "MPH", -- Values : KTS - M/S - MPH - KMH
            Height = "FT" -- Values : FT - M
        },
        Target = {
            Speed = "MPH", -- Values : KTS - M/S - MPH - KMH
            Height = "FT", -- Values : FT - M
            Range = "FT" -- Values : FT - M
        }
    },

    -- Additional data (you can edit Custom/Client/data.lua)
    AdditionalData = false,

    -- Minimum and maximum fov (zoom)
    MaxFov = 60.0,
    MinFov = 2.0,

    -- Min Height
    MinHeight = 0.0,

    -- Licence plate reader
    LicencePlateReader = true,

    -- Function for drawing markers
    DrawMarker = function(pos)
        DrawMarker(27, pos.x, pos.y, pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 3.0,
                   3.0, 3.0, 255, 0, 0, 175, false, true, 2, true, false, false,
                   false)
        DrawMarker(0, pos.x, pos.y, pos.z + 1.5, 0.0, 0.0, 0.0, 0, 0.0, 0.0,
                   1.0, 1.0, 1.0, 255, 0, 0, 175, false, true, 2, true, false,
                   false, false)
    end,

    -- Max distance for drawing the markers
    MarkerDistance = 300.0,

    -- Spotlight settings
    SpotLight = {
        UpdateRate = 10,
        Red = 255,
        Green = 255,
        Blue = 255,
        Distance = 1000.0,
        Hardness = 1.0,
        FallOff = 0.0,
        MaxRadius = 8.0,
        MinRadius = 0.5,
        MaxBrightness = 5.0,
        MinBrightness = 0.5
    },

    -- Thermal Vision parameters
    Thermal = {
        MaxThickness = 0.1, -- Thickness of wall the thermal is able to see through
        NoiseMin = 1.0, -- Minimum amount of noise (Increase to add noise)
        NoiseMax = 1.0, -- Maximum amount of noise (Increase to add noise)
        ColorChange = true, -- Enable color edit
        Color = {
            Far = {Red = 0.275, Green = 0.275, Blue = 0.275}, -- Color for far cold
            Near = {Red = 0.3, Green = 0.3, Blue = 0.3}, -- Color for close cold
            VisibleHot = {Red = 0.9, Green = 0.9, Blue = 0.9}, -- Color for hot  (unused ?)
            VisibleWarm = {Red = 0.9, Green = 0.9, Blue = 0.9}, -- Color for warm (people, fire, ...)
            VisibleBase = {Red = 0.9, Green = 0.9, Blue = 0.9} -- Color for base (heat diffusion around hot objects)
        }
    },

    -- List of vehicles with camera on them
    Vehicles = {
        [GetHashKey("AS350")] = {

            -- Offset from center of vehicle
            Offset = vector3(-0.7, 2.4, -1.35),

            -- Set vision parameters
            Vision = {
                EO = { -- Day
                    Enabled = true, -- Enable normal vision
                    OverHeat = -1, -- How long (in seconds) can you use the camera before it overheats (set to -1 for infinite use)
                    CoolDown = -1 -- How long (in seconds) do you need to wait after a overheat
                },
                NV = {Enabled = true, OverHeat = -1, CoolDown = -1}, -- Night
                IR = {Enabled = true, OverHeat = -1, CoolDown = -1} -- Thermal
            },

            -- Enable spotlight
            SpotLight = true,

            -- Only the passengers can open the camera
            PassengerOnly = true,

            -- If a bullet lands near the camera, it will destroy it
            Destroyable = false
        },
        [GetHashKey("LSSDH")] = {
            Offset = vector3(-1.2, 2.15, -0.2),
            Vision = {
                EO = {Enabled = true, OverHeat = -1, CoolDown = -1},
                NV = {Enabled = true, OverHeat = -1, CoolDown = -1},
                IR = {Enabled = true, OverHeat = -1, CoolDown = -1}
            },
            SpotLight = true,
            PassengerOnly = true,
            Destroyable = false
        },

        [GetHashKey("BELL412")] = {
            Offset = vector3(0.0, 2.7, -1.2),
            Vision = {
                EO = {Enabled = true, OverHeat = -1, CoolDown = -1},
                NV = {Enabled = true, OverHeat = -1, CoolDown = -1},
                IR = {Enabled = true, OverHeat = -1, CoolDown = -1}
            },
            SpotLight = true,
            PassengerOnly = true,
            Destroyable = false
        },

        [GetHashKey("BELL206")] = {
            Offset = vector3(0.0, 2.9, -1.2),
            Vision = {
                EO = {Enabled = true, OverHeat = -1, CoolDown = -1},
                NV = {Enabled = true, OverHeat = -1, CoolDown = -1},
                IR = {Enabled = true, OverHeat = -1, CoolDown = -1}
            },
            SpotLight = true,
            PassengerOnly = true,
            Destroyable = false
        },

        [GetHashKey("newsheli")] = {
            Offset = vector3(0.0, 3.0, -1.25),
            Vision = {
                EO = {Enabled = true, OverHeat = -1, CoolDown = -1},
                NV = {Enabled = true, OverHeat = -1, CoolDown = -1},
                IR = {Enabled = true, OverHeat = -1, CoolDown = -1}
            },
            SpotLight = false,
            PassengerOnly = false,
            Destroyable = false
        },

        [GetHashKey("UH60V")] = {
            Offset = vector3(0.0, 2.9, -1.2),
            Vision = {
                EO = {Enabled = true, OverHeat = -1, CoolDown = -1},
                NV = {Enabled = true, OverHeat = -1, CoolDown = -1},
                IR = {Enabled = true, OverHeat = -1, CoolDown = -1}
            },
            SpotLight = true,
            PassengerOnly = true,
            Destroyable = false
        },

         [GetHashKey("H125")] = {
            Offset = vector3(0.0, 2.9, -1.2),
            Vision = {
                EO = {Enabled = true, OverHeat = -1, CoolDown = -1},
                NV = {Enabled = true, OverHeat = -1, CoolDown = -1},
                IR = {Enabled = true, OverHeat = -1, CoolDown = -1}
            },
            SpotLight = true,
            PassengerOnly = true,
            Destroyable = false
        },
    },

    -- Translations
    Strings = {
        ["destroyed"] = "~r~Камера уничтожена~w~",
        ["repairing"] = "Камера ~y~восстанавливается~w~...",
        ["repaired"] = "~g~Камера восстановлена~w~",
        ["wrong_seat"] = "~r~Вы не можете открыть камеру на этом месте~w~",
        ["high_enough"] = "~r~Поднимитесь выше~w~",
        ["camera_in_use"] = "~r~Камера уже используется~w~"
    }
}

local prev = nil
function ShowNotification(message)
    if prev ~= nil then RemoveNotification(prev) end
    AddTextEntry(GetCurrentResourceName() .. "Notif", Config.Strings[message])
    BeginTextCommandThefeedPost(GetCurrentResourceName() .. "Notif")
    prev = EndTextCommandThefeedPostTicker(false, false)
end
