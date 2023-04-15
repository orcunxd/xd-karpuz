local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("xdKarpuztoplama")
AddEventHandler("xdKarpuztoplama", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.AddItem("karpuz", math.random(Config.KarpuzMin,Config.KarpuzMax))
end)

RegisterNetEvent("xdKarpuzisleme")
AddEventHandler("xdKarpuzisleme", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local item = math.random(1,100)
    if xPlayer.Functions.RemoveItem("karpuz", Config.KarpuzislemeMiktar) then
            xPlayer.Functions.AddItem("karpuzsuyu", 1)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Karpuzun suyunu sıktın!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince Kokainin Yok!', length = 2500})
    end
end)

RegisterNetEvent("xdKarpuzsatis")
AddEventHandler("xdKarpuzsatis", function()
    local xPlayer = QBCore.Functions.GetPlayer(source)

    if xPlayer.Functions.RemoveItem("karpuzsuyu", Config.KarpuzsatisMiktar) then
        xPlayer.Functions.AddMoney(Config.KarpuzOdeme, Config.KarpuzFiyat)
        TriggerClientEvent('QBCore:Notify', source, { type = 'success', text = 'Karpuz Suyunu Sattın!', length = 2500})
    else
        TriggerClientEvent('QBCore:Notify', source, { type = 'error', text = 'Yeterince Karpuz Suyun Yok!', length = 2500})
    end
end)
