-------------------------------------------------------------------------------------------------------
blueFixedWingTasksConfig = {}
-------------------------------------------------------------------------------------------------------
blue01_task = 
{
    name = 'b01',
    coalition = 2,
    startTrigger = "20101",
    goodEndTrigger = "20102",
    badEndTrigeer = "20103",
    cancelTrigger = "20104",
    startMsgFriendly = [[NAME: "Hot Key"

OBJECTIVE: Destroy the enemy supply base in square EK14. Base is placed near the train station, to the north from Goryachiy Klyuch town. Destroy supply trucks and rocket artillery launchers.

THREATS: Heavy machineguns, 23-mm AAA, possible ZSU-23-4.

NAVIGATION: Follow the railroad from the Tuapse city.]],
    startMsgEnemy = "",
    goodEndMsgFriendly = '"Hot Key" Deep Strike task accomplished, good job!',
    goodEndMsgEnemy = "",
    badEndMsgFriendly = "",
    badEndMsgEnemy = "",
    cancelEndMsgFriendly = "",
    cancelEndMsgEnemy = "",
    briefMsgFriendly = nil,
    briefMsgEnemy = "",
    markZoneName = "b01zone",
    markText = '"Hot Key" Deep Strike Target'
}
-------------------------------------------------------------------------------------------------------
blue02_task = 
{
    name = 'b02',
    coalition = 2,
    startTrigger = "20201",
    goodEndTrigger = "20202",
    badEndTrigeer = "20203",
    cancelTrigger = "20204",
    startMsgFriendly = [[NAME: "Sea chase"

OBJECTIVE: Find and destroy soviet cargo ship. Ship is heavily damaged and it’s unable to move. You can spot the smoke in square DK41, that’s the target. 

THREATS: Possible soviet air force, be advised of SA-3 sam sites in square DK70 and DK80.

NAVIGATION: Follow the coast line.]],
    startMsgEnemy = "",
    goodEndMsgFriendly = '"Sea chase" task completed, ship destroyed.',
    goodEndMsgEnemy = "",
    badEndMsgFriendly = '"Sea chase" task failed, ship escaped.',
    badEndMsgEnemy = "",
    cancelEndMsgFriendly = "",
    cancelEndMsgEnemy = "",
    briefMsgFriendly = nil,
    briefMsgEnemy = "",
    markZoneName = "b02zone",
    markText = '"Sea chase" possible ship position'
}
-------------------------------------------------------------------------------------------------------
blue03_task = 
{
    name = 'b03',
    coalition = 2,
    startTrigger = "20301",
    goodEndTrigger = "20302",
    badEndTrigeer = "20303",
    cancelTrigger = "20304",
    startMsgFriendly = [[NAME: "Fast response"

OBJECTIVE: Our column was ambushed in square EK32, near the Stantsiony town. Find them and support, they will use green smoke to mark themselves. Also they reported a mortar strike - find the mortars and destroy them.  

THREATS: Possible soviet air force, 23-mm artillery, infantry.

NAVIGATION: Use railroad as reference.]],
    startMsgEnemy = "",
    goodEndMsgFriendly = '"Fast response" task completed.',
    goodEndMsgEnemy = "",
    badEndMsgFriendly = '"Fast response" task failed.',
    badEndMsgEnemy = "",
    cancelEndMsgFriendly = "",
    cancelEndMsgEnemy = "",
    briefMsgFriendly = nil,
    briefMsgEnemy = "",
    markZoneName = "b03zone",
    markText = '"Fast response" ambush position'
}

table.insert(blueFixedWingTasksConfig, blue01_task)
table.insert(blueFixedWingTasksConfig, blue02_task)
table.insert(blueFixedWingTasksConfig, blue03_task)
