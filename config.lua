return {
    ProgressTime = 5000,
    Cooldown = {
        enable = true,
        time = 30, -- seconds
    },
    BlacklistedJobs = {
        police = true,
        sheriff = true,
        state = true,
        ambulance = true,
    },
    AlertPolice = function(coords)
        if math.random() > 0.1 then return end -- low alert chance by default.
        -- insert dispatch alert here using coords passed in if you need.
        local data = exports['cd_dispatch']:GetPlayerInfo()
        TriggerServerEvent('cd_dispatch:AddNotification', {
            job_table = {'police', 'sheriff', 'state' }, 
            coords = data.coords,
            title = '10-15 - Pickpocket',
            message = 'A '..data.sex..' stole from someone '..data.street, 
            flash = 0,
            unique_id = data.unique_id,
            sound = 1,
            blip = {
                sprite = 431, 
                scale = 1.2, 
                colour = 3,
                flashes = false, 
                text = '911 - Pickpocket',
                time = 5,
                radius = 0,
            }
        })
    end,
}