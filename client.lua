ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)


RMenu.Add('example', 'main', RageUI.CreateMenu("Armurerie", "~o~~h~↓ Boutique Armurerie ↓"))
RMenu.Add('example', 'ab', RageUI.CreateSubMenu(RMenu:Get('example', 'main'), "Armes Blanches", "~o~~h~Armes Blanches"))
RMenu.Add('example', 'al', RageUI.CreateSubMenu(RMenu:Get('example', 'main'), "Armes Létales", "~o~~h~Armes Létales"))


Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('example', 'main'), true, true, true, function()

            RageUI.Button("Armes Létales", "Procure toi une ~o~arme létale", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('example', 'al'))

            RageUI.Button("Armes Blanches", "Procure toi une ~o~arme blanche", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('example', 'ab'))
            
        end, function()
        end)

-------------------------------------------------------------------------------
----------------------------Armes Blanches-------------------------------------
-------------------------------------------------------------------------------

        RageUI.IsVisible(RMenu:Get('example', 'ab'), true, true, true, function()

            RageUI.Button("Couteau", "Un couteau bien tranchant  !", {RightLabel = "~o~1500$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('akira:BuyCouteau170')
                end
            end)


                        RageUI.Button("Machette", "Belle machete, utile pour la chasse !", {RightLabel = "~o~1000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('akira:BuyCouteau171')
                end
            end)

            RageUI.Button("Poing Américain", "Poing Américain, utile pour la selfdefence !", {RightLabel = "~o~1250$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('akira:BuyCouteau173')
                      end
                end)

        end, function()
        end)


-------------------------------------------------------------------------------
-------------------------Armes à feu-------------------------------------------
-------------------------------------------------------------------------------

            RageUI.IsVisible(RMenu:Get('example', 'al'), true, true, true, function()

                RageUI.Button("Pétoire", "Petoire, petit pistolet russe !", {RightLabel = "~o~10 000$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('akira:BuyPetoire170')
                    end
                end)

                RageUI.Button("Pistolet", "Beretta, un pistolet tres connu !", {RightLabel = "~o~17 500$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('akira:BuyPistolet170')
                    end
                end)
                        
            end, function()

                ---Panels
            end, 1)
    
            Citizen.Wait(0)
        end
    end)



    ---------------------------------------- Position du Menu --------------------------------------------

    local position = {
        {x = 22.07 , y = -1107.16, z = 29.8, },
    }   
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then

                   RageUI.Text({
                        message = "Appuyez sur [~o~E~w~] pour regarder les ~o~Offres",
                        time_display = 1
                    })
                   -- ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour acceder au ~b~Shop")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('example', 'main'), not RageUI.Visible(RMenu:Get('example', 'main')))
                    end
                end
            end
        end
    end)

    Citizen.CreateThread(function()
    local hash = GetHashKey("s_m_y_ammucity_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "s_m_y_ammucity_01", 22.45, -1105.41, 28.8, 153.96, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)



local blips = {
        {title="Armurerie", colour=47, id=110, x = 20.94, y = -1108.01, z = 29.8}
  }

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.7)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)