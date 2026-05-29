-- WEAPONS ON THE BACK
local SETTINGS = {
    update_interval = 350,
    carry_profiles = {
        back = {
            bone = 24816,
            x = 0.275,
            y = -0.15,
            z = 0.15,
            x_rotation = 0.0,
            y_rotation = 165.0,
            z_rotation = 0.0
        },
        front = {
            bone = 24816,
            x = 0.285,
            y = 0.235,
            z = -0.075,
            x_rotation = 162.000,
            y_rotation = -225.000,
            z_rotation = -10.000
        },
        front_vertical = {
            bone = 24816,
            x = 0.210,
            y = 0.170,
            z = 0.135,
            x_rotation = 323.000,
            y_rotation = -4.000,
            z_rotation = 522.000
        },
        compact_back = {
            bone = 24816,
            x = 0.275,
            y = -0.15,
            z = 0.15,
            x_rotation = 90.0,
            y_rotation = 160.0,
            z_rotation = 20.0
        },
        compact_back_beanbag = {
             bone = 24816,
            x = 0.275,
            y = -0.150,
            z = 0.150,
            x_rotation = 278.000,
            y_rotation = -12.000,
            z_rotation = 163.000
        },
        compact_back_alt = {
            bone = 24816,
            x = 0.260,
            y = -0.160,
            z = 0.205,
            x_rotation = -75.000,
            y_rotation = -9.000,
            z_rotation = 154.000
        }
    },
    back_items = {},
    back_item_group_limits = {
        long = 1,
        shoulder = 1,
        launcher = 1,
        beanbag = 1
    }
}

local function NormalizeWeaponItemName(itemName)
    itemName = tostring(itemName or "")

    if itemName:lower():sub(1, 7) == "weapon_" then
        return itemName:upper()
    end

    return itemName
end

local function RegisterBackItem(profileName, weaponName, priority, group)
    local normalizedName = NormalizeWeaponItemName(weaponName)
    SETTINGS.back_items[normalizedName] = {
        hash = GetHashKey(normalizedName),
        profile = profileName,
        prio = priority or 1,
        group = group or profileName
    }
end

for _, weaponName in ipairs({"WEAPON_CARBINERIFLE", "WEAPON_CARBINERIFLE_MK2", "WEAPON_SPECIALCARBINE",
                             "WEAPON_SPECIALCARBINE_MK2", "WEAPON_TACTICALRIFLE", "WEAPON_SERVICECARBINE",
                             "WEAPON_HEAVYRIFLE", "WEAPON_AR15_BCSO", "WEAPON_ASSAULTRIFLE", "WEAPON_ASSAULTRIFLE_MK2",
                             "WEAPON_ADVANCEDRIFLE", "WEAPON_BULLPUPRIFLE", "WEAPON_BULLPUPRIFLE_MK2", "WEAPON_SMG",
                             "WEAPON_SMG_MK2", "WEAPON_ASSAULTSMG", "WEAPON_COMBATPDW", "WEAPON_PUMPSHOTGUN",
                             "WEAPON_PUMPSHOTGUN_MK2", "WEAPON_HEAVYSHOTGUN", "WEAPON_ASSAULTSHOTGUN",
                             "WEAPON_BULLPUPSHOTGUN", "WEAPON_BEANBAG"}) do
    RegisterBackItem("front", weaponName, 3, "long")
end

for _, weaponName in ipairs({"WEAPON_LSPD40MM", "WEAPON_LSSD40MM", "WEAPON_BCSO40MM", "WEAPON_GRENADELAUNCHER_SMOKE"}) do
    RegisterBackItem("compact_back", weaponName, 4, "launcher")
end

for _, weaponName in ipairs({"WEAPON_LSPDBB", "WEAPON_LSSDBB", "WEAPON_SAHPBB"}) do
    RegisterBackItem("compact_back_beanbag", weaponName, 2, "beanbag")
end

for _, weaponName in ipairs({"WEAPON_SNIPERRIFLE", "WEAPON_MARKSMANRIFLE", "WEAPON_MARKSMANRIFLE_MK2", "WEAPON_MUSKET",
                             "WEAPON_GUSENBERG"}) do
    RegisterBackItem("back", weaponName, 3, "shoulder")
end

for _, weaponName in ipairs({"WEAPON_SAWNOFFSHOTGUN"}) do
    RegisterBackItem("compact_back", weaponName, 1, "long")
end

for _, weaponName in ipairs({"WEAPON_LESSLAUNCHER"}) do
    RegisterBackItem("compact_back_alt", weaponName, 4, "launcher")
end