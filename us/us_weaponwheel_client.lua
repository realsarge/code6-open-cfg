function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
	AddTextEntry('WEAPON_LSPD40MM', '40mm Launcher')
	AddTextEntry('WEAPON_LSSD40MM', '40mm Launcher')
	AddTextEntry('WEAPON_FLASHBANG_MYRES', 'Flashbang')
    AddTextEntry("WT_HAMMER", "Телескопическая дубинка")
    AddTextEntry("WT_PIST_CBT", "Служебный пистолет")
    AddTextEntry("WT_PIST", "Beretta M9A3")
	AddTextEntry("WT_SG_PMP", "Remington 870")	
	AddTextEntry("WT_RIFLE_CBN", "AR-15")
	AddTextEntry("WT_TACRIFLE", "M16A2")
	AddTextEntry("WT_SG_SOF", "Remington 870 BeanBag")
	AddTextEntry("WT_SNSPISTOL", "Colt Junior")
	AddTextEntry("WT_REV_DA", "S&W 657")
	AddTextEntry("WT_RIFLE_CBN2", "HK 416")
	AddTextEntry("WT_SMG", "HK MP5")
	AddTextEntry("WT_MKRIFLE", "Remington M110")
	AddTextEntry("WT_SNIP_RIF", "Remington M700")
	
	
end)
