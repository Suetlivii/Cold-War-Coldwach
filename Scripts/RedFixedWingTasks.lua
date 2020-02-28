redFixedWingTasksConfig = 
{

}

red01_task = 
{
    name = 'Kurinskaya Deep Strike',
    coalition = 1,
    startTrigger = "10101",
    goodEndTrigger = "10102",
    badEndTrigeer = "10103",
    cancelTrigger = "10104",
    startMsgFriendly = [[NAME: Kurinskaya Deep Strike

OBJECTIVE: Destroy enemy forces in square EK31, near the train station. Your targets are any trucks or vehicles.

THREATS: Heavy machineguns, 23-mm AAA, possible ZSU-23-4, MANPADS

NAVIGATION: Use railroad for navigation reference. Use Krasnodar-Center RSBN (Channel 3) 150 / 85km or Krymsk (Channel 2) 115 / 128km]],
    startMsgEnemy = "",
    goodEndMsgFriendly = 'Enemy forces at Kurinskaya train station destroyed, good work comrade!',
    goodEndMsgEnemy = "",
    badEndMsgFriendly = "",
    badEndMsgEnemy = "",
    cancelEndMsgFriendly = "",
    cancelEndMsgEnemy = "",
    briefMsgFriendly = [[NAME: Kurinskaya Deep Strike

OBJECTIVE: Destroy enemy forces in square EK31, near the train station. Your targets are any trucks or vehicles.

THREATS: Heavy machineguns, 23-mm AAA, possible ZSU-23-4, MANPADS

NAVIGATION: Use railroad for navigation reference. Use Krasnodar-Center RSBN (Channel 3) 150 / 85km or Krymsk (Channel 2) 115 / 128km]],
    briefMsgEnemy = "",
    markZoneName = "r01zone",
    markText = 'Kurinskaya Deep Strike Target'
}

table.insert(redFixedWingTasksConfig, red01_task)