1. Show / ShowFrame

exports['forge-text']:Show('text', 'left / right')

exports['forge-text']:ShowFrame('text', 'left / right')

2. Hide

exports['forge-text']:Hide()

3. ESX REPLACEMENT

es_extended > client > functions.lua

function ESX.TextUI(message, notifyType)
    exports['forge-text']:Show(message, 'left')
end

function ESX.HideUI()
    exports['forge-text']:Hide()
end

4. QBCore REPLACEMENT

qb-core > client > drawtext.lua

local function hideText()
    exports['forge-text']:Hide()
end

local function drawText(text, position)
    if type(position) ~= 'string' then position = 'left' end
    exports['forge-text']:Show(text, position)
end

local function changeText(text, position)
    if type(position) ~= 'string' then position = 'left' end
    exports['forge-text']:Show(text, position)
end