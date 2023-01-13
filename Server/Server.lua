ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('Rovoard:Open')
AddEventHandler('Rovoard:Open', function ()
    local src = source
    local xPlayers = GetPlayers()
	local players  = {}
	local data = {}
	local robos = {}
	for i=1, #xPlayers, 1 do
		table.insert(players, {
			source = xPlayers[i],
            name = GetPlayerName(xPlayers[i]),
            ping = GetPlayerPing(xPlayers[i]),
            max = GetConvarInt('sv_maxclients', 32),
			total = #xPlayers
		})
	end
    table.sort(players, function(a, b)    return a.source < b.source end)
	for k, v in pairs(Config.Jobs) do 
        count = #ESX.GetExtendedPlayers('job', v.job)
        table.insert(data, {job = v.job,  label = v.label, count = count, color = v.color})
    end  
	
	for k,v in pairs(Config.Robos) do 
        contador = #ESX.GetExtendedPlayers('job', v.job)
        table.insert(robos, {job = v.job, contador = contador, label = v.label, required = v.required})
    end
	TriggerClientEvent('Rovoard:Open', src, players, data, robos)

end)