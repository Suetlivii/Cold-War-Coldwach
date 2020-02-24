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
    startMsgFriendly = "NAME: “Hot Key” Deep Strike\n\nOBJECTIVE: Destroy the enemy supply base in square EK14. Base is placed at train station, to the north from Goryachiy Klyuch town.\n\nTHREATS: 23mm anti-air artillery, infantry firearms.\n\nNAVIGATION: Follow the railroad from the Tuapse city.",
    startMsgEnemy = "",
    goodEndMsgFriendly = '"Hot Key" Deep Strike accomplished, good job!',
    goodEndMsgEnemy = "",
    badEndMsgFriendly = "",
    badEndMsgEnemy = "",
    cancelEndMsgFriendly = "",
    cancelEndMsgEnemy = "",
    briefMsgFriendly = "NAME: “Hot Key” Deep Strike\n\nOBJECTIVE: Destroy the enemy supply base in square EK14. Base is placed at train station, to the north from Goryachiy Klyuch town.\n\nTHREATS: 23mm anti-air artillery, infantry firearms.\n\nNAVIGATION: Follow the railroad from the Tuapse city.",
    briefMsgEnemy = ""
}

table.insert(blueFixedWingTasksConfig, blue01_task)
