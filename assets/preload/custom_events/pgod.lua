local dadzoom = 0.825;
local followchars = true;
local bfzoom = 0.5;
function onEvent(name,value1,value2)
if name == "pgod" then        
if value1 == '' then
dadzoom = 0.825 + tonumber(value2)
end
if value1 == '1' then
dadzoom = 0.5 + tonumber(value2)
end
if value2 == '0' then
dadzoom = 0.825
end
if value1 == 'anim' then
 dadzoom = 0.5
runTimer('o1',3.33333333)
end
if value1 == 'vid' then


setProperty('black.alpha', 0);
runTimer('a2',6.91666667)
runTimer('a3',13.8333333)
runTimer('a4',20.2179487)
runTimer('a5',26.6025641)
runTimer('a6',33.3333333)
setProperty('A1.alpha', 1);
        objectPlayAnimation("A1", 'v1', true) 
end
if value1 == 'break mirror' then

playSound('mirror_break',0.35)
setProperty('white.alpha', 1);
doTweenAlpha('wb', 'white', 0, 1.5, 'linear')
setProperty('BG01.alpha', 1);
end
if value1 == 'black' then
doTweenAlpha('ba', 'black', 1, 0.9, 'linear')

end
if value1 == 'byehud' then
noteTweenAlpha('note1', 0, 0, 1, 'linear');
noteTweenAlpha('note2', 1, 0, 1, 'linear');
noteTweenAlpha('note3', 2, 0, 1, 'linear');
noteTweenAlpha('note4', 3, 0, 1, 'linear');
noteTweenAlpha('note5', 4, 0, 1, 'linear');
noteTweenAlpha('note6', 5, 0, 1, 'linear');
noteTweenAlpha('note7', 6, 0, 1, 'linear');
noteTweenAlpha('note8', 7, 0, 1, 'linear');

doTweenAlpha('h1', 'scoreTxt', 0, 1, 'linear');
doTweenAlpha('h2', 'Health', 0, 1, 'linear');
doTweenAlpha('h3', 'healthBarBG', 0, 1, 'linear');
doTweenAlpha('h4', 'healthBar', 0, 1, 'linear');
doTweenAlpha('h5', 'iconP1', 0, 1, 'linear');
doTweenAlpha('h6', 'iconP2', 0, 1, 'linear');
doTweenAlpha('h7', 'timeBar', 0, 1, 'linear');
doTweenAlpha('h8', 'timeBarBG', 0, 1, 'linear');
doTweenAlpha('h9', 'timeTxt', 0, 1, 'linear');
doTweenAlpha('h10', 'time', 0, 1, 'linear');

doTweenAlpha('h11', 'ab', 0, 1, 'linear');
doTweenAlpha('h12', 'vb', 0, 1, 'linear');
doTweenAlpha('h13', 'icv', 0, 1, 'linear');
doTweenAlpha('h14', 'sb', 0, 1, 'linear');

end
if value1 == 'hud in' then
noteTweenAlpha('hnote1', 0, 1, 1, 'linear');
noteTweenAlpha('hnote2', 1, 1, 1, 'linear');
noteTweenAlpha('hnote3', 2, 1, 1, 'linear');
noteTweenAlpha('hnote4', 3, 1, 1, 'linear');
noteTweenAlpha('hnote5', 4, 1, 1, 'linear');
noteTweenAlpha('hnote6', 5, 1, 1, 'linear');
noteTweenAlpha('hnote7', 6, 1, 1, 'linear');
noteTweenAlpha('hnote8', 7, 1, 1, 'linear');


end
if value1 == 'die' then
setProperty('black.alpha', 1);
runTimer('bh',1.2)
end
if value1 == 'sa' then
setProperty('black.alpha', 1);
doTweenAlpha('ba', 'black', 0, 4, 'linear')
        noteTweenX('play0', 4, defaultPlayerStrumX0, 2,'quadOut')
        noteTweenX('play1', 5, defaultPlayerStrumX1, 2,'quadOut')
        noteTweenX('play2', 6, defaultPlayerStrumX2, 2,'quadOut')
        noteTweenX('play3', 7, defaultPlayerStrumX3, 2,'quadOut')
end
end
end
function onTimerCompleted(tag, loops, loopsLeft)
if tag=='a2' then
	noteTweenX('play0', 4, 415, 1,'quadOut')
    noteTweenX('play1', 5, 525, 1,'quadOut')
    noteTweenX('play2', 6, 635, 1,'quadOut')
    noteTweenX('play3', 7, 745, 1,'quadOut')


        objectPlayAnimation("A2", 'v2', true) 
setProperty('A2.alpha', 1);
setProperty('A1.alpha', 0);
end
if tag=='a3' then
        objectPlayAnimation("A3", 'v3', true) 
setProperty('A3.alpha', 1);
setProperty('A2.alpha', 0);
end
if tag=='a4' then


setProperty('A4.alpha', 1);
setProperty('A3.alpha', 0);
        objectPlayAnimation("A4", 'v4', true) 
end
if tag=='a5' then
        objectPlayAnimation("A5", 'v5', true) 
setProperty('A5.alpha', 1);
setProperty('A4.alpha', 0);

end
if tag=='a6' then
removeLuaSprite('A1', true);
removeLuaSprite('A2', true);
removeLuaSprite('A3', true);
removeLuaSprite('A4', true);
removeLuaSprite('A5', true);
triggerEvent('Change Character', 'dad', 'evilLookalike');
dadzoom = 0.825
end
if tag=='o1' then
triggerEvent('Change Character', 'dad', 'Anim2');
triggerEvent('Play Animation', 'a2', 'dad');
end
if tag=='bh' then
noteTweenAlpha('note1', 0, 0, 3, 'linear');
noteTweenAlpha('note2', 1, 0, 3, 'linear');
noteTweenAlpha('note3', 2, 0, 3, 'linear');
noteTweenAlpha('note4', 3, 0, 3, 'linear');
noteTweenAlpha('note5', 4, 0, 3, 'linear');
noteTweenAlpha('note6', 5, 0, 3, 'linear');
noteTweenAlpha('note7', 6, 0, 3, 'linear');
noteTweenAlpha('note8', 7, 0, 3, 'linear');

doTweenAlpha('h1', 'scoreTxt', 0, 3, 'linear');
doTweenAlpha('h2', 'Health', 0, 3, 'linear');
doTweenAlpha('h3', 'healthBarBG', 0, 3, 'linear');
doTweenAlpha('h4', 'healthBar', 0, 3, 'linear');
doTweenAlpha('h5', 'iconP1', 0, 3, 'linear');
doTweenAlpha('h6', 'iconP2', 0, 3, 'linear');
doTweenAlpha('h7', 'timeBar', 0, 3, 'linear');
doTweenAlpha('h8', 'timeBarBG', 0, 3, 'linear');
doTweenAlpha('h9', 'timeTxt', 0, 3, 'linear');
doTweenAlpha('h10', 'time', 0, 3, 'linear');
doTweenAlpha('h11', 'b', 0, 3, 'linear');
end
end
function onCreate()
addCharacterToList('Anim2', 'dad')
	makeAnimatedLuaSprite('A1', 'bg/video/SO_STAY_FINAL', 0, 0)
    luaSpriteAddAnimationByPrefix('A1', 'v1', 'STAY0', 12, false);
    setObjectCamera('A1', 'camHUD')
	scaleObject('A1', 2.23, 2.23)
	addLuaSprite('A1', false);

	makeAnimatedLuaSprite('A2', 'bg/video/SO_STAY_FINAL2', 0, 0)
    luaSpriteAddAnimationByPrefix('A2', 'v2', 'STAY0', 12, false);
    setObjectCamera('A2', 'camHUD')
	scaleObject('A2', 2.23, 2.23)
	addLuaSprite('A2', false);

	makeAnimatedLuaSprite('A3', 'bg/video/SO_STAY_FINAL3', 0, 0)
    luaSpriteAddAnimationByPrefix('A3', 'v3', 'STAY', 12, false);
    setObjectCamera('A3', 'camHUD')
	scaleObject('A3', 2.23, 2.23)
	addLuaSprite('A3', false);

	makeAnimatedLuaSprite('A4', 'bg/video/SO_STAY_FINAL4', 0, 0)
    luaSpriteAddAnimationByPrefix('A4', 'v4', 'STAY', 13, false);
    setObjectCamera('A4', 'camHUD')
	scaleObject('A4', 2.23, 2.23)
	addLuaSprite('A4', false);

	makeAnimatedLuaSprite('A5', 'bg/video/SO_STAY_FINAL5', 0, 0)
    luaSpriteAddAnimationByPrefix('A5', 'v5', 'STAY', 13, false);
    setObjectCamera('A5', 'camHUD')
	scaleObject('A5', 2.23, 2.23)
	addLuaSprite('A5', false);

		runHaxeCode([[
			Paths.clearUnusedMemory();
		]])
makeLuaSprite('b', 'bars', 0, 0);
setObjectCamera('b', 'camHUD')
scaleObject('b', 1, 1)
addLuaSprite('b', false)

makeLuaSprite('ab', 'Bar/Bar', 465, 615);
setObjectCamera('ab', 'camHUD')
scaleObject('ab', 0.425, 0.625)
addLuaSprite('ab', false)

makeLuaSprite('vb', 'Bar/BarE', 40, 615);
setObjectCamera('vb', 'camHUD')
scaleObject('vb', 0.425, 0.625)
addLuaSprite('vb', false)
setProperty('vb.flipY', true);

makeLuaSprite('sb', 'Bar/Silly_Healthbar', -25, 480);
setObjectCamera('sb', 'camHUD')
scaleObject('sb', 1, 1)
addLuaSprite('sb', false)

makeAnimatedLuaSprite('icv', 'icons/billyicon', 230, 553.75)
    luaSpriteAddAnimationByPrefix('icv', '1', 'IconB', 1, true);
   luaSpriteAddAnimationByPrefix('icv', '2', 'IconC', 1, false);
 luaSpriteAddAnimationByPrefix('icv', '3', 'IconA', 1, false);
    luaSpriteAddAnimationByPrefix('icv', '4', 'IconD', 1, false);
    luaSpriteAddAnimationByPrefix('icv', '5', 'IconE', 1, false);
    setObjectCamera('icv', 'camHUD')
	scaleObject('icv', 1, 1)
	addLuaSprite('icv', false);

end
function onUpdate()
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom', dadzoom)
        else
            setProperty('defaultCamZoom', bfzoom)
end
end
end