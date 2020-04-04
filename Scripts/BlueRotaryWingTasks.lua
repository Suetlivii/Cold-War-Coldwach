-------------------------------------------------------------------------------------------------------
blueRotaryWingTasksConfig = {}
-------------------------------------------------------------------------------------------------------
rblue01_task = 
{
    name = "Apsheronsk insertion",
    coalition = 2,
    startTrigger = "40101",
    goodEndTrigger = "40102",
    badEndTrigeer = "40103",
    cancelTrigger = "40104",
    startMsgFriendly = [[NAME: "Apsheronsk insertion"

OBJECTIVE: Pick up 2 groups from Warsaw FARP, drop them in EK62 square. Support them when they are on ground.

THREATS: Infantry, possible ZU-23

NAVIGATION: Fly heading 356 from Warsaw FARP, look for the powerlines.]],
    startMsgEnemy = "",
    goodEndMsgFriendly = '"Apsheronks Insertion" complete!',
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

table.insert(blueRotaryWingTasksConfig, rblue01_task)