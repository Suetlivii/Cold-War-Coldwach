-------------------------------------------------------------------------------------------------------
blueRotaryWingTasksConfig = {}
-------------------------------------------------------------------------------------------------------
rblue01_task = 
{
    name = "rb01",
    groupsPrefixes = { "RW" },
    coalition = 2,
    startTrigger = "40101",
    goodEndTrigger = "40102",
    badEndTrigeer = "40103",
    cancelTrigger = "40104",
    startMsgFriendly = [[NAME: "Apsheronsk insertion"

OBJECTIVE: Pick up 2 groups from Warsaw FARP, drop them in EK62 square. Support them when they are on the ground.

THREATS: Infantry, possible zu-23.

NAVIGATION: Fly heading 356 from Warsaw FARP, look for the powerlines.]],
    startMsgEnemy = "",
    goodEndMsgFriendly = '"Apsheronks Insertion" completed!',
    goodEndMsgEnemy = "",
    badEndMsgFriendly = '"Apsheronks Insertion" failed, all troops are dead.',
    badEndMsgEnemy = "",
    cancelEndMsgFriendly = "",
    cancelEndMsgEnemy = "",
    briefMsgFriendly = nil,
    briefMsgEnemy = "",
    markZoneName = "rb01zone",
    markText = '"Apsheronks Insertion" disembark point'
}
-------------------------------------------------------------------------------------------------------
rblue02_task = 
{
    name = "rb02",
    groupsPrefixes = { "RW" },
    coalition = 2,
    startTrigger = "40201",
    goodEndTrigger = "40202",
    badEndTrigeer = "40203",
    cancelTrigger = "40204",
    startMsgFriendly = [[NAME: "Intercepting recovery"

OBJECTIVE: Enemy helicopter crashed in square EK81. Soviet forces are trying to recovery helicopter crew. Find crash site and destroy enemy forces.

THREATS: Infantry, soviet helicopters.

NAVIGATION: Fly heading 032 from Warsaw FARP, look for the Dagestanskaya town.]],
    startMsgEnemy = "",
    goodEndMsgFriendly = '"Intercepting recovery" task completed!',
    goodEndMsgEnemy = "",
    badEndMsgFriendly = '"Intercepting recovery" failed, all troops are dead.',
    badEndMsgEnemy = "",
    cancelEndMsgFriendly = "",
    cancelEndMsgEnemy = "",
    briefMsgFriendly = nil,
    briefMsgEnemy = "",
    markZoneName = "rb02zone",
    markText = '"Intercepting recovery" disembark point'
}
-------------------------------------------------------------------------------------------------------



--table.insert(blueRotaryWingTasksConfig, rblue01_task)
table.insert(blueRotaryWingTasksConfig, rblue02_task)