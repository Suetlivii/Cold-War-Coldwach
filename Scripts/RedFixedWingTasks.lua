redFixedWingTasksConfig = {}
-------------------------------------------------------------------------------------------------------
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
-------------------------------------------------------------------------------------------------------
red02_task = 
{
    name = 'Worm Catcher',
    coalition = 1,
    startTrigger = "10201",
    goodEndTrigger = "10202",
    badEndTrigeer = "10203",
    cancelTrigger = "10204",
    startMsgFriendly = [[NAME: “Worm Catcher” 

OBJECTIVE: Destroy 3 missile launchers, type is SS-N-2 Silkworm. They are placed on the coast, square EJ17, near the Makopse town.

THREATS: 23-mm AAA, Shilkas, MANPADS, machineguns. Be advised of enemy SA-3 site in square EJ35.

NAVIGATION: Follow the coastline, look for the bridge.]],
    startMsgEnemy = "",
    goodEndMsgFriendly = '“Worm Catcher” anti-ship missiles launchers destroyed, mission completed!',
    goodEndMsgEnemy = "",
    badEndMsgFriendly = "",
    badEndMsgEnemy = "",
    cancelEndMsgFriendly = "",
    cancelEndMsgEnemy = "",
    briefMsgFriendly = [[NAME: “Worm Catcher” 

OBJECTIVE: Destroy 3 missile launchers, type is SS-N-2 Silkworm. They are placed on the coast, square EJ17, near the Makopse town.

THREATS: 23-mm AAA, Shilkas, MANPADS, machineguns. Be advised of enemy SA-3 site in square EJ35.

NAVIGATION: Follow the coastline, look for the bridge.]],
    briefMsgEnemy = "",
    markZoneName = "r02zone",
    markText = '“Worm Catcher” target'
}

table.insert(redFixedWingTasksConfig, red01_task)
table.insert(redFixedWingTasksConfig, red02_task)