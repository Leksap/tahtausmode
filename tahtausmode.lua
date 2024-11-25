-- Kolmannen persoonan rekyyli -- Ei suositella
local recoils = {
    [350597077] = 6.5,			--['weapon_tecpistol']
    [1924557585] = 5.5,			--['weapon_battlerifle']
--customit
    [734278471] = 6.0,			--['weaapon_uzi']
    [199456042] = 6.0,			--['weapon_mac10']
    [-634552258] = 0.5,			--['weapon_mp5']


	[-1882382516] = 1.0,			--['weapon_glock17']
	[1498862683] = 1.4,			--['weapon_fnx45']
	[-1143413145] = 1.4,			--['weapon_m1911']
	[-961197366] = 1.5,			--['weapon_m9']


	[562051835] = 5.0,			--['weapon_m70']
	[-563571674] = 0.1,			--['weapon_scarh']

	[-1327835241] = 2.5,			--['weapon_huntingrifle']

	-- Handguns
	[453432689] = 1.5,			--['weapon_pistol']
	[-1075685676] = 1.4,		--['weapon_pistol_mk2']
	[1593441988] = 1.4,			--['weapon_combatpistol']
	--[584646201] = 1.5,			--['weapon_appistol']
	[911657153] = 1.0,			--['weapon_stungun']
	[-1716589765] = 1.4,		--['weapon_pistol50']
	[-1076751822] = 1.4,		--['weapon_snspistol']
	[-771403250] = 1.8,			--['weapon_heavypistol']
	[137902532] = 1.4,			--['weapon_vintagepistol']
	[1198879012] = 1.0,			--['weapon_flaregun']
	[-598887786] = 1.0,			--['weapon_marksmanpistol']
	[-1045183535] = 1.0,		--['weapon_revolver']
	[-879347409] = 1.0,			--['weapon_revolver_mk2']
	[-1746263880] = 1.0,		--['weapon_doubleaction']
	[-2009644972] = 1.4,		--['weapon_snspistol_mk2']
	[-1355376991] = 1.0,		--['weapon_raypistol']
	[727643628] = 1.0,			--['weapon_ceramicpistol']
	[-1853920116] = 1.0,		--['weapon_navyrevolver']
	[1470379660] = 1.0,			--['weapon_gadgetpistol']

	-- Submachine Guns
	[736523883] = 4.9,			--['weapon_smg']
	[2024373456] = 2.3,			--['weapon_smg_mk2']
	[-270015777] = 1.5,			--['weapon_assaultsmg']
	[171789620] = 2.0,			--['weapon_combatpdw']
	[-619010992] = 5.5,			--['weapon_machinepistol']
	[-1121678507] = 6.5,		--['weapon_minismg']
	[1198256469] = 1.5,			--['weapon_raycarbine']

	-- Shotguns
	[487013001] = 6.6,			--['weapon_pumpshotgun']
	[2017895192] = 6.6,			--['weapon_sawnoffshotgun']
	[-494615257] = 6.6,			--['weapon_assaultshotgun']
	[-1654528753] = 6.6,		--['weapon_bullpupshotgun']
	[-1466123874] = 6.6,		--['weapon_musket']
	[984333226] = 6.6,			--['weapon_heavyshotgun']
	[-275439685] = 6.6,			--['weapon_dbshotgun']
	[317205821] = 6.6,			--['weapon_autoshotgun']
	[1432025498] = 6.6,			--['weapon_pumpshotgun_mk2']
	[94989220] = 6.6,			--['weapon_combatshotgun']

	-- Assault Rifles
	[-1074790547] = 0.9,		--['weapon_assaultrifle']
	[961495388] = 0.2,			--['weapon_assaultrifle_mk2']
	[-2084633992] = 1.0,		--['weapon_carbinerifle']
	[-86904375] = 0.4,			--['weapon_carbinerifle_mk2']
	[-1357824103] = 0.1,		--['weapon_advancedrifle']
	[-1063057011] = 0.2,		--['weapon_specialcarbine']
	[2132975508] = 0.2,			--['weapon_bullpuprifle']
	[1649403952] = 9.0,			--['weapon_compactrifle']
	[-1768145561] = 0.2,		--['weapon_specialcarbine_mk2']
	[-2066285827] = 0.2,		--['weapon_bullpuprifle_mk2']
	[-1658906650] = 0.0,		--['weapon_militaryrifle']
	[-774507221] = 5.9,		--['weapon_tacticalrifle']
	[-947031628] = 5.9,		--['heavyrifle']


	-- Light Machine Guns
	[-1660422300] = 0.1,		--['weapon_mg']
	[2144741730] = 0.1,			--['weapon_combatmg']
	[1627465347] = 2.1,			--['weapon_gusenberg']
	[-608341376] = 0.1,			--['weapon_combatmg_mk2']

	-- Sniper Rifles
	[100416529] = 0.5,			--['weapon_sniperrifle']
	[205991906] = 0.7,			--['weapon_heavysniper']
	[-952879014] = 0.3,			--['weapon_marksmanrifle']
	[856002082] = 1.2,			--['weapon_remotesniper']
	[177293209] = 0.6,			--['weapon_heavysniper_mk2']
	[1785463520] = 0.3,			--['weapon_marksmanrifle_mk2']

	-- Heavy Weapons
	[-1312131151] = 0.0,		--['weapon_rpg']
	[-1568386805] = 1.0,		--['weapon_grenadelauncher']
	[1305664598] = 1.0,			--['weapon_grenadelauncher_smoke']
	[1119849093] = 0.1,			--['weapon_minigun']
	[2138347493] = 0.3,			--['weapon_firework']
	[1834241177] = 2.4,			--['weapon_railgun']
	[1672152130] = 0.0,			--['weapon_hominglauncher']
	[125959754] = 0.5,			--['weapon_compactlauncher']
	[-1238556825] = 0.3,		--['weapon_rayminigun']
}

local OnkPaalla = false
local statex = GetResourceKvpInt("Persoona")
if statex then
	OnkPaalla = statex == 1
end

local currentWeapon = cache.weapon
local function enableFirstPersonShooting()
	CreateThread(function()
		while true do
			Wait(5)
			HideHudComponentThisFrame(14)
	
			if IsPlayerFreeAiming(cache.playerId) then
				if GetFollowPedCamViewMode() == 4 and check == false then
					check = false
				else
					SetFollowPedCamViewMode(4)
					check = true
				end
			else
				if check == true then
					SetFollowPedCamViewMode(1)
					check = false
				end
			end
	
			if not currentWeapon or not OnkPaalla then
				break
			end
		end
	end)
end

--Recoil gaycore poista jos et haluu
local function recoilLoop()
	local ped = cache.ped
	CreateThread(function()
		while true do
			Wait(0)
			if IsPedShooting(ped) and not IsPedDoingDriveby(ped) then
				local _,wep = GetCurrentPedWeapon(ped)
				_,cAmmo = GetAmmoInClip(ped, wep)
				if recoils[wep] and recoils[wep] ~= 0 then
					tv = 0
					if GetFollowPedCamViewMode() ~= 4 then
						repeat 
							Wait(0)
							p = GetGameplayCamRelativePitch()
							SetGameplayCamRelativePitch(p+0.1, 0.2)
							tv = tv+0.1
						until tv >= recoils[wep]
					else
						repeat 
							Wait(0)
							p = GetGameplayCamRelativePitch()
							if recoils[wep] > 0.1 then
								SetGameplayCamRelativePitch(p+0.6, 1.2)
								tv = tv+0.6
							else
								SetGameplayCamRelativePitch(p+0.016, 0.333)
								tv = tv+0.1
							end
						until tv >= recoils[wep]
					end
				end
			end

	
			if not currentWeapon or OnkPaalla then
				break
			end
		end
	end)
end

if currentWeapon and OnkPaalla then
	enableFirstPersonShooting()
else
	recoilLoop()
end

lib.onCache('weapon', function(value)
	currentWeapon = value
	if not OnkPaalla then
		recoilLoop()
	end
	if not currentWeapon or not OnkPaalla then return end

	enableFirstPersonShooting()
end)

lib.registerContext({
	id = 'tahtaysmodemenu',
	title = 'TähtäysMode',
	description = 'Valitse tähtäyksen tyyli',
	options = {
		{
			title = 'Thirdperson',
			icon = 'gun',
			onSelect = function()
				SetResourceKvpInt("Persoona", 0) -- Pois
				OnkPaalla = false

				lib.notify({
					title = 'Ampumatyyli: Thirdperson',
					description =
					'Voit myöhemmin vaihtaa tätä tekemällä /tähtäysmode',
				})
			end,
		},
		{
			title = 'Firstperson',
			icon = 'gun',
			onSelect = function()
				OnkPaalla = true
				enableFirstPersonShooting()
				SetResourceKvpInt("Persoona", 1) -- Päällä

				lib.notify({
					title = 'Ampumatyyli: Firstperson',
					description =
					'Voit myöhemmin vaihtaa tätä tekemällä /tähtäysmode',
				})
			end,
		},
	}
})

function Open()
	lib.showContext('tahtaysmodemenu')
end
exports('Open', Open)

TriggerEvent('chat:addSuggestion', '/aim', 'Vaihda Thirdpersonin ja Firstpersonin väliltä', {})
RegisterCommand("aim", function()
    OnkPaalla = not OnkPaalla
    if OnkPaalla then
        SetResourceKvpInt("Persoona", 1) -- Päällä
		enableFirstPersonShooting()
        lib.notify({
            title = 'AmpumisMode',
            description = 'FirstPerson ampuminen käytössä',
            type = 'success',
            position = 'bottom',
        })

    else
        SetResourceKvpInt("Persoona", 0) -- Pois
		recoilLoop()
        lib.notify({
            title = 'AmpumisMode',
            description = 'Thirdperson ampuminen käytössä',
            type = 'success',
            position = 'bottom',
        })
    end
end, false)
