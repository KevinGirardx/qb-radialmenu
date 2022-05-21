RegisterNetEvent("qb-radialmenu:client:togglegas", function()
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1000
	local closestLocation

	for k,v in pairs(Config.GasStations) do
		local dst = GetDistanceBetweenCoords(coords, v)

		if dst < closest then
			closest = dst
            closestLocation = v
        end
    end
    SetNewWaypoint(closestLocation)
	QBCore.Functions.Notify('Closest gas station marked', 'primary', 2500)
end)

RegisterNetEvent("qb-radialmenu:client:togglebarber", function()
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1000
	local closestCoords1

	for k,v in pairs(Config.BarberShops) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)
		if dstcheck < closest then
			closest = dstcheck
			closestCoords1 = v
		end
    end
    SetNewWaypoint(closestCoords1)
	QBCore.Functions.Notify('Closest babershop marked', 'primary', 2500)
end)

RegisterNetEvent("qb-radialmenu:client:toggleclothing", function()
	local coords = GetEntityCoords(PlayerPedId())
	local closest = 1000
	local closestCoords1

	for k,v in pairs(Config.Clothing) do
		local dstcheck = GetDistanceBetweenCoords(coords, v)
		if dstcheck < closest then
			closest = dstcheck
			closestCoords1 = v
		end
    end
    SetNewWaypoint(closestCoords1)
	QBCore.Functions.Notify('Closest clothing store marked', 'primary', 2500)
end)

