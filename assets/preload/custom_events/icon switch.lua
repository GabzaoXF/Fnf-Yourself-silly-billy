function onEvent(name,value1,value2)
if name == "icon switch" then        
if value2 == '' then
        objectPlayAnimation("icv", tonumber(value1), true) 
end
end
end
