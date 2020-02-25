redFixedWingTasksConfig = 
{

}

red01_task = 
{
    name = 'Red strike task',
    coalition = 1,
    startTrigger = "10101",
    goodEndTrigger = "10102",
    badEndTrigeer = "10103",
    cancelTrigger = "10104",
    startMsgFriendly = "NAME: Kurinskaya Supply Strike\n\nOBJECTIVE: Destroy enemy forces in square EK31, near the train station.\n\nTHREATS: Possible zu-23, Shilkas, heavy machineguns\n\nNAVIGATION: Use railroad from Tuapse as reference.",
    startMsgEnemy = "",
    goodEndMsgFriendly = '"Hot Key" Deep Strike accomplished, good job!',
    goodEndMsgEnemy = "",
    badEndMsgFriendly = "",
    badEndMsgEnemy = "",
    cancelEndMsgFriendly = "",
    cancelEndMsgEnemy = "",
    briefMsgFriendly = "NAME: Kurinskaya Supply Strike\n\nOBJECTIVE: Destroy enemy forces in square EK31, near the train station.\n\nTHREATS: Possible zu-23, Shilkas, heavy machineguns\n\nNAVIGATION: Use railroad from Tuapse as reference.",
    briefMsgEnemy = ""
}

table.insert(redFixedWingTasksConfig, red01_task)