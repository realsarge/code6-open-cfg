Config = {}

Config.PersistentFace = true -- Make face emote save after leaving server
Config.PersistentWalk = true -- Make walk style save after leaving server

Config.MenuKey = "F3" -- Key to open menu

Config.EnableQuickSlots = true
Config.QuickSlotCount = 6
Config.QuickSlotKeybinds = { "SHIFT+1", "SHIFT+2", "SHIFT+3", "SHIFT+4", "SHIFT+5", "SHIFT+6" }
Config.RequireShiftForQuickSlots = true

-- Animation keys that should appear in the "NEW" tab.
-- You can use either:
-- 1) array style: { "key1", "key2" }
-- 2) map style:   { key1 = true, key2 = true }
Config.NewAnimations = {
    "coprest11",
    "coprest12",
    "coprest13",
    "handholster",
    "coprest14",
    "radio11",
    "radio12",
    "radio13",
    "radio14",
    "holsternew",
    "radio10",
    "coprest1",
    "coprest2",
    "coprest3",
    "coprest4",
    "handrest",
    "beltpose3",
    "det1",
    "det2",
    "det3",
    "det4",
    "det5",
    "coprest5",
    "coprest6",
    "coprest7",
    "copres8",
    "copres9",
    "coprest10",
    "checkdoor",
    "fence",
    "gundownpart",
    "gunuppart",
    "leanpoint",
    "vehiclelow",
    "vehiclemed",
    "vehiclehigh",
    "holdgunmid",
    "tssahp",
    "bdcam1",
    "bdcam2",
    "c4an",
    "handpock1",
    "handpock2",
    "handpock3",
    "handpock4",
    "shieldaim",
    "binveh",
    "carrybag",
    "binoculars",
    "cb",
    "lidar",
    "leocamera",
    "paperwr",
    "coffeecop",
    "handshield",
    "handshield2",
    "handshield3",
    "duinotepad",
    "duiclipboard",
    "radio9",
    "holddocs",
    "guntaser",
    "baton1",
    "baton2",
    "radio8",
    "lookatid",
    "giveid",
    "idveh"
}

Config.Locales = { -- Locales
    ['noonenearby'] = "Никого рядом.",
    ['refused'] = 'Анимация отклонена.',
    ['acceptrefuse'] = '~y~Y~w~ принять, ~r~L~w~ отклонить (~g~',
    ['help_keys'] = "Перемещение\n~INPUT_FRONTEND_RDOWN~ - Подтвердить\n~INPUT_VEH_DUCK~ - Отменить\n~INPUT_COVER~ - Повернуть влево\n~INPUT_PICKUP~ - Повернуть вправо\n~INPUT_RELOAD~ - Вверх\n~INPUT_ENTER~ - Вниз\n~INPUT_MOVE_LEFT_ONLY~ - Влево\n~INPUT_MOVE_RIGHT_ONLY~ - Вправо\n~INPUT_MOVE_UP_ONLY~ - Вперед\n~INPUT_MOVE_DOWN_ONLY~ - Назад",
    ['help_keys_cancel'] = "~INPUT_VEH_DUCK~ - Отменить",
    ['quickslot_empty'] = "В этом слоте нет анимации.",
    ['quickslot_assigned'] = "Анимация сохранена в слот %s."
}

Config.keys = {
    confirm = {191, 'Enter'},
    cancel = {73, 'X'},
    rleft = {44, 'Q'},
    rright = {38, 'E'},
    up = {45, 'R'},
    down = {23, 'F'},
    left = {34, 'A'},
    right = {35, 'D'},
    forward = {32, 'W'},
    backward = {33, 'S'}
}

Config.setupPed = function(ped)
    SetEntityInvincible(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    TaskSetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
end

Config.FpsMode = false

Config.maxDistance = 30
Config.rotateSpeed = 5
Config.movementSpeed = 0.05
Config.cloneAlpha = 204
Config.returnToStart = true
Config.walkToPosition = true

Config.UseRagdoll = false
Config.RagdollKeybind = "U"
Config.RagdollAsToggle = false


Config.UseCrouch = true
Config.CrouchKeybindEnabled = true
Config.CrouchKeybind = "C"
Config.CrouchOverrideStealthMode = false

Config.UseCrawl = true
Config.CrawlKeybindEnabled = true
Config.CrawlKeybind = "RCONTROL"

Config.UseHandsup = true
Config.DisabledHandsupControls = false
Config.HandsupInCar = true
Config.HoldToHandsUp = false
Config.HandsupKeybindEnabled = true
Config.HandsupKeybind = "U"

Config.UsePointing = false
Config.PointingInCar = true
Config.PointingKeybindEnabled = true
Config.PointingKeybind = "B"

Config.UseBackwardMovement = true
Config.BackwardMovementKeybind = "J"
