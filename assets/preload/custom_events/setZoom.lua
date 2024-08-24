--event solo renombrado para uso en esta song--
function onEvent(name,value1,value2)
if name == "setZoom" then        
if value1 == '' then
setProperty("defaultCamZoom",value2)
else
doTweenZoom('camz','camGame',tonumber(value2),1,'sineInOut')
end
end
end
function onTweenCompleted(name)
if name == 'camz' then
      	 setProperty("defaultCamZoom",getProperty('camGame.zoom')) 
end
end