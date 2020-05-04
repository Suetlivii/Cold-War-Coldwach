-------------------------------------------------------------------------------------------------------
blueFixedWingTasksConfig = {}
-------------------------------------------------------------------------------------------------------
blue01_task = 
{
    name = 'b01',
    groupsPrefixes = { "FW" },
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
    groupsPrefixes = { "FW" },
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
    groupsPrefixes = { "FW" },
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
-------------------------------------------------------------------------------------------------------
blue04_task = 
{
    name = 'b04',
    groupsPrefixes = { "FW" },
    coalition = 2,
    startTrigger = "20401",
    goodEndTrigger = "20402",
    badEndTrigeer = "20403",
    cancelTrigger = "20404",
    startMsgFriendly = [[NAME: "Supply destruction"

OBJECTIVE: Destroy soviet supply base placed in square DK82, near the Defanovka town. Targets are trucks and other infrastructure.  

THREATS: Possible soviet fighters, 23-mm artillery, manpads.

NAVIGATION: Use road from Dzhubga town (square DK70).]],
    startMsgEnemy = "",
    goodEndMsgFriendly = '"Supply destruction" task completed.',
    goodEndMsgEnemy = "",
    badEndMsgFriendly = '"Supply destruction" task failed.',
    badEndMsgEnemy = "",
    cancelEndMsgFriendly = "",
    cancelEndMsgEnemy = "",
    briefMsgFriendly = nil,
    briefMsgEnemy = "",
    markZoneName = "b04zone",
    markText = '"Supply destruction" target'
}
-------------------------------------------------------------------------------------------------------
blue05_task = 
{
    name = 'b05',
    groupsPrefixes = { "FW" },
    coalition = 2,
    startTrigger = "20501",
    goodEndTrigger = "20502",
    badEndTrigeer = "20503",
    cancelTrigger = "20504",
    startMsgFriendly = [[NAME: "Power off"

OBJECTIVE: Destroy important electrical substation in square EK35.   

THREATS: Possible soviet fighters, 23-mm artillery, manpads and SA-8.

NAVIGATION: Use powerlines.]],
    startMsgEnemy = "",
    goodEndMsgFriendly = '"Power off" task completed.',
    goodEndMsgEnemy = "",
    badEndMsgFriendly = '"Power off" task failed.',
    badEndMsgEnemy = "",
    cancelEndMsgFriendly = "",
    cancelEndMsgEnemy = "",
    briefMsgFriendly = nil,
    briefMsgEnemy = "",
    markZoneName = "b05zone",
    markText = '"Power off" substantion position'
}
-------------------------------------------------------------------------------------------------------
blue06_task = 
{
    name = 'b06',
    groupsPrefixes = { "FW" },
    coalition = 2,
    startTrigger = "20601",
    goodEndTrigger = "20602",
    badEndTrigeer = "20603",
    cancelTrigger = "20604",
    startMsgFriendly = [[NAME: "Road hunting"

OBJECTIVE: Find and destroy soviet supply column. They are moving from Krasnodar to Goryachiy Klyuch. Road is placed in squares EK17, EK16, EK15.  

THREATS: Possible soviet fighters, 23-mm artillery, manpads. Be advised of SA-6 south from Krasnodar.

NAVIGATION: Follow the road.]],
    startMsgEnemy = "",
    goodEndMsgFriendly = '"Road hunting" task completed.',
    goodEndMsgEnemy = "",
    badEndMsgFriendly = '"Road hunting" task failed.',
    badEndMsgEnemy = "",
    cancelEndMsgFriendly = "",
    cancelEndMsgEnemy = "",
    briefMsgFriendly = nil,
    briefMsgEnemy = "",
    markZoneName = "b06zone",
    markText = '"Road hunting" road.'
}
-------------------------------------------------------------------------------------------------------
blue07_task = 
{
    name = 'b07',
    groupsPrefixes = { "FW" },
    coalition = 2,
    startTrigger = "20701",
    goodEndTrigger = "20702",
    badEndTrigeer = "20703",
    cancelTrigger = "20704",
    startMsgFriendly = [[NAME: "Uragan"

OBJECTIVE: Destroy soviet BM-27 MLRS launchers. They are going to attack out forces so hurry up.  

THREATS: Possible soviet fighters, 23-mm artillery, manpads. Be advised of SA-6 at Maykop.

NAVIGATION: Follow the railroad from Tuapse.]],
    startMsgEnemy = "",
    goodEndMsgFriendly = '"Uragan" task completed.',
    goodEndMsgEnemy = "",
    badEndMsgFriendly = '"Uragan" task failed.',
    badEndMsgEnemy = "",
    cancelEndMsgFriendly = "",
    cancelEndMsgEnemy = "",
    briefMsgFriendly = nil,
    briefMsgEnemy = "",
    markZoneName = "b07zone",
    markText = '"Uragan" targets position.'
}

table.insert(blueFixedWingTasksConfig, blue01_task)
table.insert(blueFixedWingTasksConfig, blue02_task)
--table.insert(blueFixedWingTasksConfig, blue03_task)
table.insert(blueFixedWingTasksConfig, blue04_task)
table.insert(blueFixedWingTasksConfig, blue05_task)
table.insert(blueFixedWingTasksConfig, blue06_task)
table.insert(blueFixedWingTasksConfig, blue07_task)