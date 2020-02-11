Debug = Debuger:New(ME_isDebugMode)

BlueMission01 = 
{
    name = "blue01",
    coalition = 1,
    startTrigger = "20101",
    goodEndTrigger = "20102",
    badEndTrigeer = "20103",
    cancelTrigger = "20104",
    startMsgFriendly = "This is friendly start message blue01",
    startMsgEnemy = "This is enemy start message blue01",
    goodEndMsgFriendly = "This is good end message for friendly coalition blue01",
    goodEndMsgEnemy = "This is good end message for enemy coalition blue01",
    badEndMsgFriendly = "This is bad end message for friendly blue01",
    badEndMsgEnemy = "This is bad end message for enemy blue01",
    cancelEndMsgFriendly = "This is cancel message for friendly blue01",
    cancelEndMsgEnemy = "This is cancel message for enemy blue01"
}

testTask = TaskContoller:New(BlueMission01)
testTask:StartTask()

test = GroupMenuManager:New()
test:AddMenuCommandForGroupsWithPrefix("TG", "testParent1", "testCommand1")