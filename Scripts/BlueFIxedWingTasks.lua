-------------------------------------------------------------------------------------------------------
blueFixedWingTasksConfig = {}
-------------------------------------------------------------------------------------------------------
blue01_task = 
{
    name = 'Hot Key',
    coalition = 2,
    startTrigger = "20101",
    goodEndTrigger = "20102",
    badEndTrigeer = "20103",
    cancelTrigger = "20104",
    startMsgFriendly = [[NAME: “Hot Key”

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
    briefMsgFriendly = [[NAME: “Hot Key”

OBJECTIVE: Destroy the enemy supply base in square EK14. Base is placed near the train station, to the north from Goryachiy Klyuch town. Destroy supply trucks and rocket artillery launchers.

THREATS: Heavy machineguns, 23-mm AAA, possible ZSU-23-4.

NAVIGATION: Follow the railroad from the Tuapse city.]],
    briefMsgEnemy = "",
    markZoneName = "b01zone",
    markText = '"Hot Key" Deep Strike Target'
}
-------------------------------------------------------------------------------------------------------
blue02_task = 
{
    name = 'Sea chase',
    coalition = 2,
    startTrigger = "20201",
    goodEndTrigger = "20202",
    badEndTrigeer = "20203",
    cancelTrigger = "20204",
    startMsgFriendly = [[NAME: “Sea chase”

OBJECTIVE: Find and destroy soviet cargo ship. Ship is trying to escape from Tuapse and heading to the Novorossiysk. Ship will pass through squares DK50, DK40, DK31, DK22.

THREATS: Possible soviet air force, be advised of SA-3 sam sites in square DK70 and DK80.

NAVIGATION: Follow the coast line.]],
    startMsgEnemy = "",
    goodEndMsgFriendly = '“Sea chase” task completed, ship destroyed.',
    goodEndMsgEnemy = "",
    badEndMsgFriendly = '“Sea chase” task failed, ship escaped.',
    badEndMsgEnemy = "",
    cancelEndMsgFriendly = "",
    cancelEndMsgEnemy = "",
    briefMsgFriendly = [[NAME: “Sea chase”

OBJECTIVE: Find and destroy soviet cargo ship. Ship is trying to escape from Tuapse and heading to the Novorossiysk. Ship will pass through squares DK50, DK40, DK31, DK22.

THREATS: Possible soviet air force, be advised of SA-3 sam sites in square DK70 and DK80.

NAVIGATION: Follow the coast line.]],
    briefMsgEnemy = "",
    markZoneName = "b02zone",
    markText = '“Sea chase” possible ship position'
}


table.insert(blueFixedWingTasksConfig, blue01_task)
table.insert(blueFixedWingTasksConfig, blue02_task)
