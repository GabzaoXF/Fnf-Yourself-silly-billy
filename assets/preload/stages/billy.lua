
function onCreate()
setProperty('skipCountdown', true)
     
makeLuaSprite('BG1', 'bg/silly_mirror', 0, 0);
setScrollFactor('BG1', 1, 1);
scaleObject('BG1', 2.5, 2.5);
addLuaSprite('BG1', false)

makeLuaSprite('BG01', 'bg/broken_mirror', 0, 0);
setScrollFactor('BG01', 1, 1);
scaleObject('BG01', 2.5, 2.5);
addLuaSprite('BG01', false)

makeLuaSprite('white', 'bg/Multi', -200, -200);
setScrollFactor('white', 1, 1);
scaleObject('white', 12, 12);
addLuaSprite('white', false)

makeLuaSprite('BG2', 'bg/Silly_floor', 0, 0);
setScrollFactor('BG2', 1, 1);
scaleObject('BG2', 2.5, 2.5);
addLuaSprite('BG2', false)

makeLuaSprite('BG3', 'bg/Silly_idk', 0, 0);
setScrollFactor('BG3', 1, 1);
scaleObject('BG3', 2.5, 2.5);
addLuaSprite('BG3', false)

makeLuaSprite('BG4', 'bg/Silly_idk2', 0, 0);
setScrollFactor('BG4', 1, 1);
scaleObject('BG4', 2.5, 2.5);
addLuaSprite('BG4', false)


makeLuaSprite('BG6', 'bg/Silly_clouds', 0, 0);
setScrollFactor('BG6', 1, 1);
scaleObject('BG6', 2.5, 2.5);
addLuaSprite('BG6', true)


makeLuaSprite('black', 'bg/Multi', -200, -200);
setObjectCamera('black', 'camHUD')
scaleObject('black', 12, 12);
addLuaSprite('black', false)


end
function onCreatePost()    
setProperty('gf.visible', false)
setProperty('BG6.alpha', 0.3);
setProperty('black.color', '000000');
setProperty('black.alpha', 0);
setProperty('white.alpha', 0);
setProperty('BG01.alpha', 0);

setProperty('scoreTxt.x', -233.75);
setProperty('scoreTxt.y', 690);
setProperty('iconP1.flipX', true);
setProperty('healthBarBG.visible', false);
setProperty('healthBar.visible', false);
setProperty('iconP2.visible', false);
setProperty('A1.alpha', 0);
setProperty('A2.alpha', 0);
setProperty('A3.alpha', 0);
setProperty('A4.alpha', 0);
setProperty('A5.alpha', 0);
end
function onSongStart() 
startVideo('open') 	
setProperty('inCutscene', false);
end
function onUpdatePost()
setProperty('iconP1.x', 375);
setProperty('iconP1.y', 553.75);

setPropertyFromGroup('opponentStrums', 0, 'alpha', 0)
setPropertyFromGroup('opponentStrums', 1, 'alpha', 0)
setPropertyFromGroup('opponentStrums', 2, 'alpha', 0)
setPropertyFromGroup('opponentStrums', 3, 'alpha', 0)
  
  if getProperty('healthBar.percent') > 5 then
	setProperty('ab.scale.x', 0.00001)
 	setProperty('ab.x', -500)
	setProperty('vb.x', 40)
   setProperty('vb.scale.x', 0.425)
	end
    if getProperty('healthBar.percent') > 10 then
    setProperty('vb.x', 49.1294118)
    setProperty('vb.scale.x', 0.3825)

	setProperty('ab.x', 333.917647)
    setProperty('ab.scale.x', 0.0425)
	end
    if getProperty('healthBar.percent') > 20 then
	    setProperty('vb.x', 69.1294118)
    setProperty('vb.scale.x', 0.34)

	setProperty('ab.x', 348.482353)
    setProperty('ab.scale.x', 0.085)
	end
    if getProperty('healthBar.percent') > 30 then
		    setProperty('vb.x', 83.6941177)
    setProperty('vb.scale.x', 0.2975)

	setProperty('ab.x', 363.047059)
    setProperty('ab.scale.x', 0.1275)
	end
    if getProperty('healthBar.percent') > 40 then
		    setProperty('vb.x', 98.2588236)
    setProperty('vb.scale.x', 0.255)

	setProperty('ab.x', 377.611765)
    setProperty('ab.scale.x', 0.17)
	end
    if getProperty('healthBar.percent') > 50 then
	setProperty('vb.x', 112.82353)
	setProperty('ab.x', 392.176471)
    setProperty('vb.scale.x', 0.2125)
    setProperty('ab.scale.x', 0.2125)
	end
    if getProperty('healthBar.percent') > 60 then
		    setProperty('vb.x', 127.388235)
    setProperty('vb.scale.x', 0.17)

	setProperty('ab.x', 406.741176)
    setProperty('ab.scale.x', 0.255)	
end
    if getProperty('healthBar.percent') > 70 then
		    setProperty('vb.x', 141.952941)
    setProperty('vb.scale.x', 0.1275)

	setProperty('ab.x', 421.305882)
    setProperty('ab.scale.x', 0.2975)
	end
    if getProperty('healthBar.percent') > 80 then
		    setProperty('vb.x', 156.517647)
    setProperty('vb.scale.x', 0.085)

	setProperty('ab.x', 435.870588)
    setProperty('ab.scale.x', 0.34)
	end
    if getProperty('healthBar.percent') > 90 then
		    setProperty('vb.x', 171.082353)
    setProperty('vb.scale.x', 0.0425)

	setProperty('ab.x', 450.435294)
    setProperty('ab.scale.x', 0.3825)
	end
    if getProperty('healthBar.percent') > 99 then
		    setProperty('vb.x', -500)
    setProperty('vb.scale.x', 0.00001)

	setProperty('ab.x', 465)
    setProperty('ab.scale.x', 0.425)
	end
	if downscroll then
setProperty('iconP1.y', 33.75);
setProperty('scoreTxt.y', 155);
	setProperty('ab.y', 95)
	setProperty('vb.y', 95)
	setProperty('sb.y', -40)
	setProperty('icv.y', 33.75)
end
end
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.005);
    end
end
function onBeatHit()
    if curBeat% 1 == 0 then
setProperty('icv.scale.x', 1)
setProperty('icv.scale.y', 1)
        doTweenY('wa', 'icv.scale', 1.2, 0.45, 'sineInOut')
        doTweenX('x2', 'icv.scale', 1.2, 0.45, 'sineInOut')

end
end
