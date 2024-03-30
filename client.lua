Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        -- Traffic and ped density management (These things NEED to run every tick)
        SetTrafficDensity(0.1) -- 0.0 = none, 1.0 = max
        SetPedDensity(0.1) -- 0.0 = none, 1.0 = max
    end
end)

function SetTrafficDensity(density)
    SetParkedVehicleMultiplierThisFrame(density)
    SetVehicleDensityMultiplierThisFrame(density)
    SetRandomVehicleDensityMultiplierThisFrame(density)
end

function SetPedDensity(density)
    SetPedDensityMultiplierThisFrame(density)
    SetScenarioPedDensityMultiplierThisFrame(density)
end