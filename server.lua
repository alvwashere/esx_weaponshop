RegisterNetEvent('esx_weaponshop:buy_weapon')
AddEventHandler('esx_weaponshop:buy_weapon', function(type)
    local xPlayer = ESX.GetPlayerFromId(source)
    if type == 'WEAPON_APPISTOL' then
        if not xPlayer.hasWeapon('WEAPON_APPISTOL') then
            if xPlayer.getMoney() < 75000 then
                if xPlayer.getAccount('bank').money < 75000 then
                    xPlayer.showNotification('You cannot afford this weapon.')
                else
                    xPlayer.removeAccountMoney('bank', 75000)
                    xPlayer.addWeapon('WEAPON_APPISTOL', 500)
                    xPlayer.showNotification('You have purchased an AP Pistol for $75,000.')
                    TriggerClientEvent('esx_weaponshop:purchased_weapon', source, 'WEAPON_APPISTOL')
                end
            else
                xPlayer.removeMoney(75000)
                xPlayer.addWeapon('WEAPON_APPISTOL', 500)
                xPlayer.showNotification('You have purchased an AP Pistol for $75,000.')
                TriggerClientEvent('esx_weaponshop:purchased_weapon', source, 'WEAPON_APPISTOL')
            end
        else
            xPlayer.addMoney(75000)
            xPlayer.removeWeapon('WEAPON_APPISTOL')
            xPlayer.showNotification('You have returned your AP Pistol for $75,000.')
        end
    elseif type == 'WEAPON_COMBATPISTOL' then
        if not xPlayer.hasWeapon('WEAPON_COMBATPISTOL') then
            if xPlayer.getMoney() < 50000 then
                if xPlayer.getAccount('bank').money < 50000 then
                    xPlayer.showNotification('You cannot afford this weapon.')
                else
                    xPlayer.removeAccountMoney('bank', 50000)
                    xPlayer.addWeapon('WEAPON_COMBATPISTOL', 500)
                    xPlayer.showNotification('You have purchased an Combat Pistol for $50,000.')
                    TriggerClientEvent('esx_weaponshop:purchased_weapon', source, 'WEAPON_COMBATPISTOL')
                end
            else
                xPlayer.removeMoney(50000)
                xPlayer.addWeapon('WEAPON_COMBATPISTOL', 500)
                xPlayer.showNotification('You have purchased an Combat Pistol for $50,000.')
                TriggerClientEvent('esx_weaponshop:purchased_weapon', source, 'WEAPON_COMBATPISTOL')
            end
        else
            xPlayer.addMoney(50000)
            xPlayer.removeWeapon('WEAPON_COMBATPISTOL')
            xPlayer.showNotification('You have returned your Combat Pistol for $50,000.')
        end
    elseif type == 'WEAPON_SMG' then
        if not xPlayer.hasWeapon('WEAPON_SMG') then
            if xPlayer.getMoney() < 250000 then
                if xPlayer.getAccount('bank').money < 250000 then
                    xPlayer.showNotification('You cannot afford this weapon.')
                else
                    xPlayer.removeAccountMoney('bank', 250000)
                    xPlayer.addWeapon('WEAPON_SMG', 500)
                    xPlayer.showNotification('You have purchased an SMG for $250,000.')
                    TriggerClientEvent('esx_weaponshop:purchased_weapon', source, 'WEAPON_SMG')
                end
            else
                xPlayer.removeMoney(250000)
                xPlayer.addWeapon('WEAPON_SMG', 500)
                xPlayer.showNotification('You have purchased an SMG for $250,000.')
                TriggerClientEvent('esx_weaponshop:purchased_weapon', source, 'WEAPON_SMG')
            end
        else
            xPlayer.addMoney(250000)
            xPlayer.removeWeapon('WEAPON_SMG')
            xPlayer.showNotification('You have returned your SMG for $250,000.')
        end
    elseif type == 'WEAPON_SWITCHBLADE' then
        if not xPlayer.hasWeapon('WEAPON_SWITCHBLADE') then
            if xPlayer.getMoney() < 5000 then
                if xPlayer.getAccount('bank').money < 5000 then
                    xPlayer.showNotification('You cannot afford this weapon.')
                else
                    xPlayer.removeAccountMoney('bank', 5000)
                    xPlayer.addWeapon('WEAPON_SWITCHBLADE', 500)
                    xPlayer.showNotification('You have purchased an Switchblade for $5,000.')
                    TriggerClientEvent('esx_weaponshop:purchased_weapon', source, 'WEAPON_SWITCHBLADE')
                end
            else
                xPlayer.removeMoney(5000)
                xPlayer.addWeapon('WEAPON_SWITCHBLADE', 1)
                xPlayer.showNotification('You have purchased an Switchblade for $5,000.')
                TriggerClientEvent('esx_weaponshop:purchased_weapon', source, 'WEAPON_SWITCHBLADE')
            end
        else
            xPlayer.addMoney(5000)
            xPlayer.removeWeapon('WEAPON_SWITCHBLADE')
            xPlayer.showNotification('You have returned your Switchblade for $5,000.')
        end
    end
end)
