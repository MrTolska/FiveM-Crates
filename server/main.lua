local QBCore = exports['qb-core']:GetCoreObject()

local function weighted_random(pool)
    local poolsize = 0
    for i = 1, #pool do
        v = pool[i]
        poolsize = poolsize + v['weight']
    end
    local selection = math.random(poolsize)
    for i = 1, #pool do
        v = pool[i]
        selection = selection - v['weight']
        if (selection <= 0) then
            return i
        end
    end
end

CreateThread(function()
    for k, v in pairs(Config.Rewards) do
        QBCore.Functions.CreateUseableItem(k, function(source, item)
            local src = source
            local Player = QBCore.Functions.GetPlayer(src)
            if Player.Functions.RemoveItem(k, 1) then
                local random = weighted_random(Config.Rewards[k])
                SetTimeout(9500, function()
                    local entry = Config.Rewards[k][random]
                    -- determine amount: supports number or table {min, max}
                    local amount = 1
                    if entry.amount then
                        if type(entry.amount) == 'table' then
                            local min = tonumber(entry.amount[1]) or 1
                            local max = tonumber(entry.amount[2]) or min
                            amount = math.random(min, max)
                        else
                            amount = tonumber(entry.amount) or 1
                        end
                    end
                    if Player.Functions.AddItem(entry['item'], amount) then
                        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[entry['item']], "add")
                        TriggerClientEvent('QBCore:Notify', src, 'You Won ' .. (amount > 1 and amount .. ' ' or 'a ') .. QBCore.Shared.Items[entry['item']]['label']..'!', 'success')
                    end
                end)
                TriggerClientEvent('bamms-create:client:open', src, k, random)
                TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[k], "remove")
            end
        end)
    end
end)
