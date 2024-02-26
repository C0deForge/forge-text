local ShowInFrame = false

local function Show(text, position)
    if not text then return end
    SendNUIMessage({ action = 'Show', text = text, position = position, config = Config })
end

local function ShowFrame(text, position)
    if not text then return end
    ShowInFrame = true
    SendNUIMessage({ action = 'Show', text = text, position = position, config = Config })
    SetTimeout(100, function()
        ShowInFrame = false
        Wait(100)
        if not ShowInFrame then
            SendNUIMessage({ action = 'Hide' })
        end
    end)
end

local function Hide()
    SendNUIMessage({ action = 'Hide' })
end

exports('Show', Show)

exports('ShowFrame', Show)

exports('Hide', Hide)

RegisterCommand('test', function()
    Show('[E] - Open door', 'left')
end)