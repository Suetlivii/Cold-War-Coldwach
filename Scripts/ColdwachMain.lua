BlueMission01 = 
{
    name = "Blue01",
    coalition = 2,
    startTrigger = "20101",
    goodEndTrigger = "20102",
    badEndTrigeer = "102",
    cancelTrigger = "103",
    startMsgFriendly = "Started task blue01",
    startMsgEnemy = "This is enemy start message blue01",
    goodEndMsgFriendly = "This is end message blue01"
}

testTask = TaskContoller:New(BlueMission01)
testTask:StartTask()