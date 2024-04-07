function changeDistance()
    for i,object in pairs(getElementsByType("object")) do
        if isElement(object) then
            local elementID = getElementModel(object)
            engineSetModelLODDistance(elementID,800)
        end
    end
end
addEventHandler("onClientResourceStart",getResourceRootElement(getThisResource()),changeDistance)


--randomiser

local availablevehicles = {
    5531,357,485,413,418,440,459,482,483,508,582,422,428,543,554,600,407,416,427,490,528,544,596,597,598,599,601,402,
    5555,587,602,603,401,410,436,474,491,496,517,526,527,533,545,549,439,475,542,412,419,518,534,535,
    5536,567,575,576,405,409,421,426,438,445,466,467,492,507,516,529,540,546,547,550,551,566,580,585,400,404,442,458,470,479,489,495,
    5500,561,579,589,423,424,434,444,494,502,503,504,556,557,568,588,471,
    
    --sport/fast
    429,541,415,480,562,565,411,559,560,506,451,558,477,
    
    --industrial
    --406,486, 532
    
    --trashmaster
    408,
    
    --buses 
    431,437,
    
    --trucks
    403,499,609,498,524,578,573,455,414,443,515,514,456,525,552,478,433,
    
    --bikes
    581,462,521,463,522,461,448,468,586,523,
    
    --bicycles
    509,481,510,
    
    --RC
    --441,594,564,

    --small 1 (baggage, caddy, tug, sweeper, mower)
    485,457,583,
    --small 2 (mower, sweeper)
    574,572,
    
    --forklift
    530,

    --kart
    571,
    
    --plane (no RC)
    --592,577,511,512,593,520,553,476,519,460,513,
    
    --heli (no RC)
    --548,425,417,487,488,497,563,447,469,
    
    --boat
    --472,473,493,595,484,430,453,452,446,454,
    
    --vortex
    --539,
    
    420} --just putting this here for trailing comma (taxi)

local marker1 = createMarker(1076.54, -4235.55, 645.5, "arrow", 3, 255, 255, 255)
local marker2 = createMarker(1076.54, -4278.02, 645.5, "arrow", 3, 255, 255, 255)
local marker3 = createMarker(1034.07, -4278.02, 645.5, "arrow", 3, 255, 255, 255)
local marker4 = createMarker(1034.07, -4235.55, 645.5, "arrow", 3, 255, 255, 255)


function randomise(hitPlayer, matchingDimension)
    playSound("switch.mp3")
    local veh = getPedOccupiedVehicle(hitPlayer)
    local newveh = availablevehicles[math.random(#availablevehicles)] 
    setElementModel(veh, newveh) 
end

addEventHandler ("onClientMarkerHit", getRootElement(), randomise)

function autokill()
    local x, y, z = getElementPosition(localPlayer)
    local vehicle = getPedOccupiedVehicle(localPlayer)
	if z < 630 then 
        setElementHealth(vehicle, getElementHealth(vehicle) - 25)
    end
end
addEventHandler("onClientRender", root, autokill)

