ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


-------------------------------------------------------------------------------
----------------------------Armes Blanches-------------------------------------
-------------------------------------------------------------------------------

RegisterNetEvent('akira:BuyCouteau170')
AddEventHandler('akira:BuyCouteau170', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1500
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_KNIFE', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez ~g~acheté~w~ un ~r~Couteau~w~")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('akira:BuyCouteau171')
AddEventHandler('akira:BuyCouteau171', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_MACHETE', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez ~g~acheté~w~ une ~r~Machette~w~")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('akira:BuyCouteau173')
AddEventHandler('akira:BuyCouteau173', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 1250
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_KNUCKLE', 1)
        TriggerClientEvent('esx:showNotification', source, "Vous avez ~g~acheté~w~ un ~r~Poing Américain~w~")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

-------------------------------------------------------------------------------
-------------------------Armes à feu-------------------------------------------
-------------------------------------------------------------------------------

RegisterNetEvent('akira:BuyPetoire170')
AddEventHandler('akira:BuyPetoire170', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_SNSPISTOL', 200)
        TriggerClientEvent('esx:showNotification', source, "Vous avez ~g~acheté~w~ un ~r~Pétoire~w~")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('akira:BuyPistolet170')
AddEventHandler('akira:BuyPistolet170', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 17500
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_PISTOL', 200)
        TriggerClientEvent('esx:showNotification', source, "Vous avez ~g~acheté~w~ un ~r~Pistolet~w~")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

  