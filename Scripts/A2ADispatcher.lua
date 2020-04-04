if ME_isBlueCap == true then 

    BlueDetectionSetGroup = SET_GROUP:New()
    BlueDetectionSetGroup:FilterPrefixes( { "US EWR" } )
    BlueDetectionSetGroup:FilterStart()

    -- Setup the detection and group targets to a 30km range!
    BlueDetection = DETECTION_AREAS:New( BlueDetectionSetGroup, 10000 )

    -- Setup the A2A dispatcher, and initialize it.
    BlueA2ADispatcher = AI_A2A_DISPATCHER:New( BlueDetection )

    BlueA2ADispatcher:SetEngageRadius( 50000 )
    BlueA2ADispatcher:SetGciRadius( 150000 )
    BlueA2ADispatcher:SetDisengageRadius(120000)

    --https://flightcontrol-master.github.io/MOOSE_DOCS/Documentation/Wrapper.Airbase.html
    BlueA2ADispatcher:SetSquadron( "GudautaF5", AIRBASE.Caucasus.Gudauta, { "GudautaF5Cap" }, 12 )
    BlueA2ADispatcher:SetSquadronTakeoffFromParkingHot( "GudautaF5" )  
    BlueA2ADispatcher:SetSquadronLandingAtRunway( "GudautaF5" )

    BlueA2ADispatcher:SetSquadronGrouping( "GudautaF5", 2 )
    BlueA2ADispatcher:SetSquadronOverhead( "GudautaF5", 2 )

    BlueA2ACapZone = ZONE:New("BlueA2ACapZone")
    --min alt, max alt, min patrol speed, max patrol speed, min engage speed, max engage speed, radio/baro alt
    BlueA2ADispatcher:SetSquadronCap( "GudautaF5", BlueA2ACapZone, 2000, 5000, 600, 800, 800, 1200, "RADIO" )
    --name, max spawned groups, min time sec, max time sec
    BlueA2ADispatcher:SetSquadronCapInterval( "GudautaF5", 1, 5, 10, 1 )
end

if ME_isRedCap == true then 

    RedDetectionSetGroup = SET_GROUP:New()
    RedDetectionSetGroup:FilterPrefixes( { "USSR EWR" } )
    RedDetectionSetGroup:FilterStart()

    -- Setup the detection and group targets to a 30km range!
    RedDetection = DETECTION_AREAS:New( RedDetectionSetGroup, 10000 )

    -- Setup the A2A dispatcher, and initialize it.
    RedA2ADispatcher = AI_A2A_DISPATCHER:New( RedDetection )

    RedA2ADispatcher:SetEngageRadius( 50000 )
    RedA2ADispatcher:SetGciRadius( 150000 )
    RedA2ADispatcher:SetDisengageRadius(120000)

    --https://flightcontrol-master.github.io/MOOSE_DOCS/Documentation/Wrapper.Airbase.html
    RedA2ADispatcher:SetSquadron( "AnapaMig21", AIRBASE.Caucasus.Anapa_Vityazevo, { "AnapaMig21Cap" }, 12 )
    RedA2ADispatcher:SetSquadronTakeoffFromParkingHot( "AnapaMig21" )  
    RedA2ADispatcher:SetSquadronLandingAtRunway( "AnapaMig21" )

    RedA2ADispatcher:SetSquadronGrouping( "AnapaMig21", 2 )
    RedA2ADispatcher:SetSquadronOverhead( "AnapaMig21", 2 )

    RedA2ACapZone = ZONE:New("RedA2ACapZone")
    --min alt, max alt, min patrol speed, max patrol speed, min engage speed, max engage speed, radio/baro alt
    RedA2ADispatcher:SetSquadronCap( "AnapaMig21", RedA2ACapZone, 2000, 5000, 600, 800, 800, 1200, "RADIO" )
    --name, max spawned groups, min time sec, max time sec
    RedA2ADispatcher:SetSquadronCapInterval( "AnapaMig21", 1, 5, 10, 1 )
end