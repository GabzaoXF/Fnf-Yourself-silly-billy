lockFps = 65--60 recommended

--shitty math stuff by tormented
--this script might suck idk

ranOnce = false
function onUpdatePost(elapsed)
    fps = 1 / elapsed
    fix1 = fps / lockFps
    pleasework = fps / fix1
    penis = lockFps * 67.5
    waitTime = pleasework / penis
    eloopsed = elapsed
    if not ranOnce then
        runTimer("updateFix",waitTime)
        ranOnce = true
    end
end

function onTimerCompleted(tag)
    if tag == 'updateFix' then
        runTimer("updateFix",waitTime)
        callOnLuas('onUpdateFixed', {eloopsed});
        callOnLuas('onUpdateFixedPost', {eloopsed});
    end
end