
function onEvent(name,value1,value2)
if name == "beatsPerZoom" then        
if value1 == '' then
    if curBeat% tonumber(value2) == 0 then
doTweenZoom('Zoomie', 'camHUD', 1.3, 0.05, 'sineInOut')
doTweenZoom('Zoomie1', 'camHUD', 1, 0.55, 'elasticOut')
end
end
end
end
