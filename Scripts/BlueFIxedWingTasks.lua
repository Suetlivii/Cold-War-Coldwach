-------------------------------------------------------------------------------------------------------
blueFixedWingTasksConfig = 
{

}

blue01_task = 
{
    name = '"Hot Key" Deep Strike',
    coalition = 2,
    startTrigger = "20101",
    goodEndTrigger = "20102",
    badEndTrigeer = "20103",
    cancelTrigger = "20104",
    startMsgFriendly = [[NAME: “Hot Key” Deep Strike

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
    briefMsgFriendly = [[NAME: “Hot Key” Deep Strike

OBJECTIVE: Destroy the enemy supply base in square EK14. Base is placed near the train station, to the north from Goryachiy Klyuch town. Destroy supply trucks and rocket artillery launchers.

THREATS: Heavy machineguns, 23-mm AAA, possible ZSU-23-4.

NAVIGATION: Follow the railroad from the Tuapse city.]],
    briefMsgEnemy = ""
}

table.insert(blueFixedWingTasksConfig, blue01_task)
