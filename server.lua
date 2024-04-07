function scriptRotatingStripes()
    setCloudsEnabled(false)
    setFogDistance(10)
    setFarClipDistance(1000)

    rotatingstripes1 = createObject(5766, 1055, -4256.95, 636.1, 0, 0, 0)
    moveObject(rotatingstripes1, 400000, 1055, -4256.95, 636.1, 0, 0, 360)
    setTimer(moveObject, 400000, 0, rotatingstripes1, 400000, 1055, -4256.95, 636.1, 0, 0, 360)
    setElementDoubleSided(rotatingstripes1, true)
    setObjectScale(rotatingstripes1, 21)
    

    rotatingstripes2 = createObject(5766, 1055, -4256.95, 686.1, 0, 0, 100)
    moveObject(rotatingstripes2, 150000, 1055, -4256.95, 686.1, 0, 0, 360)
    setTimer(moveObject, 150000, 0, rotatingstripes2, 150000, 1055, -4256.95, 686.1, 0, 0, 360)
    setElementDoubleSided(rotatingstripes2, true)
    setObjectScale(rotatingstripes2, 23)

    rotatingstripes3 = createObject(5766, 1055, -4256.95, 636.1, 0, 0, 0)
    moveObject(rotatingstripes3, 200000, 1055, -4256.95, 636.1, 0, 0, -360)
    setTimer(moveObject, 200000, 0, rotatingstripes3, 200000, 1055, -4256.95, 636.1, 0, 0, -360)
    setElementDoubleSided(rotatingstripes3, true)
    setObjectScale(rotatingstripes3, 26)
end 
addEventHandler("onResourceStart", getResourceRootElement(getThisResource()), scriptRotatingStripes)

