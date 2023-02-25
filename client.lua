local GSM = MenuV:CreateMenu(false,'Ammu-Nation', 'bottomright', 0, 140, 240, 'size-150', 'https://cdn.discordapp.com/attachments/1078708223047110727/1078746383508570253/connectingbanner.png')

-- NOTE: OX LIB WAS TEMPORARILY REMOVED AND WILL BE BACK SOON WITH THE LIB'S MENU/CONTEXT FEATURES AVAILABLE

-- little config below
UseMarkers = true

function BuyWeapon(type)
    if type == 'WEAPON_APPISTOL' then
        TriggerServerEvent('esx_weaponshop:buy_weapon', 'WEAPON_APPISTOL')
    elseif type == 'WEAPON_COMBATPISTOL' then
        TriggerServerEvent('esx_weaponshop:buy_weapon', 'WEAPON_COMBATPISTOL')
    elseif type == 'WEAPON_SMG' then
        TriggerServerEvent('esx_weaponshop:buy_weapon', 'WEAPON_SMG')
    else
        TriggerServerEvent('esx_weaponshop:buy_weapon', 'WEAPON_SWITCHBLADE')
    end
end

CreateThread(function()
    while true do
        C = GetEntityCoords(PlayerPedId())

        if GetDistanceBetweenCoords(C, 22.102785110474, -1107.2032470703, 29.79703140258) < 2.0 or GetDistanceBetweenCoords(C, 842.39984130859, -1033.5341796875, 28.194856643677) < 2.0 or GetDistanceBetweenCoords(C, -662.1, -935.3, 20.8) < 2.0 or GetDistanceBetweenCoords(C, 810.2, -2157.3, 28.6) < 2.0 or GetDistanceBetweenCoords(C, 1693.4, 3759.5, 33.7) < 2.0 or GetDistanceBetweenCoords(C, -330.2, 6083.8, 30.4) < 2.0 or GetDistanceBetweenCoords(C, 252.3, -50.0, 68.9) < 2.0 or GetDistanceBetweenCoords(C, 2567.6, 294.3, 107.7) < 2.0 or GetDistanceBetweenCoords(C, -1117.5, 2698.6, 17.5) < 2.0 then
            Timer = 100
            if IsControlPressed(0, 38) then
                GSM:ClearItems()
                GSM:Open()
                GSM:AddButton({label='AP Pistol', description='Purchase an AP Pistol for $75,000', select = function(btn)
                    BuyWeapon('WEAPON_APPISTOL')
                end})
                GSM:AddButton({label='Combat Pistol', description='Purchase a Combat Pistol for $50,000', select = function(btn)
                    BuyWeapon('WEAPON_COMBATPISTOL')
                end})
                GSM:AddButton({label='SMG', description='Purchase an SMG for $250,000', select = function(btn)
                    BuyWeapon('WEAPON_SMG')
                end})
                GSM:AddButton({label='Switchblade', description='Purchase a Switchblade for $5,000', select = function(btn)
                    BuyWeapon('WEAPON_SWITCHBLADE')
                end})
            end
        else
            Timer = 500
            
        end

        Citizen.Wait(Timer)
    end
end)

if UseMarkers then
    CreateThread(function()
        while true do
            C = GetEntityCoords(PlayerPedId())

            if GetDistanceBetweenCoords(C, 22.102785110474, -1107.2032470703, 29.79703140258) < 5.0 then
                Timer = 0
                DrawMarker(2, 22.102785110474, -1107.2032470703, 29.79703140258, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.25, 0.15, 0, 128, 255, 128, 1, 1, 0, 0)
            elseif GetDistanceBetweenCoords(C, 842.39984130859, -1033.5341796875, 28.194856643677) < 5.0 then
                Timer = 0
                DrawMarker(2, 22.102785110474, -1107.2032470703, 29.79703140258, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.25, 0.15, 0, 128, 255, 128, 1, 1, 0, 0)
            elseif GetDistanceBetweenCoords(C, -662.1, -935.3, 20.8) < 5.0 then
                Timer = 0
                DrawMarker(2, -662.1, -935.3, 20.8, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.25, 0.15, 0, 128, 255, 128, 1, 1, 0, 0)
            elseif GetDistanceBetweenCoords(C, 810.2, -2157.3, 28.6) < 5.0 then
                Timer = 0
                DrawMarker(2, 810.2, -2157.3, 28.6, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.25, 0.15, 0, 128, 255, 128, 1, 1, 0, 0)
            elseif GetDistanceBetweenCoords(C, 1693.4, 3759.5, 33.7) < 5.0 then
                Timer = 0
                DrawMarker(2, 1693.4, 3759.5, 33.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.25, 0.15, 0, 128, 255, 128, 1, 1, 0, 0)
            elseif GetDistanceBetweenCoords(C, -330.2, 6083.8, 30.4) < 5.0 then
                Timer = 0
                DrawMarker(2, -330.2, 6083.8, 30.4, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.25, 0.15, 0, 128, 255, 128, 1, 1, 0, 0)
            elseif GetDistanceBetweenCoords(C, 252.3, -50.0, 68.9) < 5.0 then
                Timer = 0
                DrawMarker(2, 252.3, -50.0, 68.9, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.25, 0.15, 0, 128, 255, 128, 1, 1, 0, 0)
            elseif GetDistanceBetweenCoords(C, 2567.6, 294.3, 107.7) < 5.0 then
                Timer = 0
                DrawMarker(2, 2567.6, 294.3, 107.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.25, 0.15, 0, 128, 255, 128, 1, 1, 0, 0)
            elseif GetDistanceBetweenCoords(C, -1117.5, 2698.6, 17.5) < 5.0 then
                Timer = 0
                DrawMarker(2, -1117.5, 2698.6, 17.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.25, 0.15, 0, 128, 255, 128, 1, 1, 0, 0)
            else
                Timer = 500
            end

            Wait(Timer)
        end
    end)
end

RegisterNetEvent('esx_weaponshop:purchased_weapon')
AddEventHandler('esx_weaponshop:purchased_weapon', function(type)
    print(type)

    if type == 'WEAPON_APPISTOL' then
        String = 'Purchased for $75,000'
        WeaponType = 'WEAPON_APPISTOL'
    elseif type == 'WEAPON_COMBATPISTOL' then
        String = 'Purchased for $50,000'
        WeaponType = 'WEAPON_COMBATPISTOL'
    elseif type == 'WEAPON_SMG' then
        String = 'Purchased for $250,000'
        WeaponType = 'WEAPON_SMG'
    elseif type == 'WEAPON_SWITCHBLADE' then
        String = 'Purchased for $5,000'
        WeaponType = 'WEAPON_SWITCHBLADE'
    end

    PurchaseWeapon(String, WeaponType)
end)

function PurchaseWeapon(String, WeaponType)
    local scaleform = ESX.Scaleform.Utils.RequestScaleformMovie('MP_BIG_MESSAGE_FREEMODE')
    local sec = 4

    BeginScaleformMovieMethod(scaleform, 'SHOW_WEAPON_PURCHASED')

    ScaleformMovieMethodAddParamTextureNameString(String)
    ScaleformMovieMethodAddParamTextureNameString(ESX.GetWeaponLabel(WeaponType))
    ScaleformMovieMethodAddParamInt(joaat(WeaponType))
    ScaleformMovieMethodAddParamTextureNameString('')
    ScaleformMovieMethodAddParamInt(100)
    EndScaleformMovieMethod()

    PlaySoundFrontend(-1, 'WEAPON_PURCHASE', 'HUD_AMMO_SHOP_SOUNDSET', false)

    CreateThread(function()
        while sec > 0 do
            Wait(0)
            sec = sec - 0.01

            DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
        end
    end)
end
