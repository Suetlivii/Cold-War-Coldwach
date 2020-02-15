TaskConfig = 
{
    name = "CommonTask",
    coalition = 1,
    startTrigger = "101",
    goodEndTrigger = "102",
    badEndTrigeer = "103",
    cancelTrigger = "104",
    startMsgFriendly = "This is friendly start message",
    startMsgEnemy = "This is enemy start message",
    goodEndMsgFriendly = "This is good end message for friendly coalition",
    goodEndMsgEnemy = "This is good end message for enemy coalition",
    badEndMsgFriendly = "This is bad end message for friendly",
    badEndMsgEnemy = "This is bad end message for enemy",
    cancelEndMsgFriendly = "This is cancel message for friendly",
    cancelEndMsgEnemy = "This is cancel message for enemy",
    briefMsgFriendly = "This is brief message for friendly",
    briefMsgEnemy = "This is brief message for enemy"
}

------------------------------------------------------------------------------------------------------
--taskStates 
-- 0 - not starter
-- 1 - active 
-- 2 - goodEnd
-- 3 - badEnd
-- 4 - canceled

MESSAGE_TIME_ON_SCREEN = 5

TaskContoller = {}

function TaskContoller:New(_taskConfig)
    newObj = 
    {
        taskConfig = _taskConfig,
        onEndListeners = {},
        taskState = 0
    }
    self.__index = self
    return setmetatable(newObj, self)
end

function TaskContoller:StartTask()
    Debug:Log("StartTask called, task name is " .. self.taskConfig.name)
    self.taskState = 1
    local startUserFlag = USERFLAG:New(self.taskConfig.startTrigger)
    startUserFlag:Set(1)

    self:MessageToFriendlyCoalition(self.taskConfig.startMsgFriendly, MESSAGE_TIME_ON_SCREEN)
    self:MessageToEnemyCoalition(self.taskConfig.startMsgEnemy, MESSAGE_TIME_ON_SCREEN)


    local goodEndEvent = UserFlagCather:New(self.taskConfig.goodEndTrigger, true)
    goodEndEvent:AddListener(self, "OnGoodEndTrigger")

    local badEndEvent = UserFlagCather:New(self.taskConfig.badEndTrigeer, true)
    badEndEvent:AddListener(self, "OnBadEndTrigger")

    local cancelEndEvent = UserFlagCather:New(self.taskConfig.cancelTrigger, true)
    cancelEndEvent:AddListener(self, "OnCancelEndTrigger")

    Debug:Log("StartTask end successfully, task name is " .. self.taskConfig.name)

    return true
end

function TaskContoller:AddOnEndEventListener(object)
    table.insert( self.onEndListeners, object )
end

function TaskContoller:EndTask()
    for i, v in ipairs(self.onEndListeners) do
        v:OnTaskEnd(self.taskConfig, self.taskState)
    end
end

function TaskContoller:OnGoodEndTrigger()
    if self.taskState ~= 1 then
        Debug:Log("LOGIC ERROR: OnGoodEndTrigger called with task state = " .. self.taskState .. " task name is " .. self.taskConfig.name)
        return 
    end

    Debug:Log("OnGoodEndTrigger called, task name is " .. self.taskConfig.name)
    self.taskState = 2
    self:MessageToFriendlyCoalition(self.taskConfig.goodEndMsgFriendly, MESSAGE_TIME_ON_SCREEN)
    self:MessageToEnemyCoalition(self.taskConfig.goodEndMsgEnemy, MESSAGE_TIME_ON_SCREEN)
    self:EndTask()
end

function TaskContoller:OnBadEndTrigger()
    if self.taskState ~= 1 then
        Debug:Log("LOGIC ERROR: OnBadEndTrigger called with task state = " .. self.taskState .. " task name is " .. self.taskConfig.name)
        return 
    end

    Debug:Log("OnBadEndTrigger called, task name is " .. self.taskConfig.name)
    self.taskState = 3
    self:MessageToFriendlyCoalition(self.taskConfig.badEndMsgFriendly, MESSAGE_TIME_ON_SCREEN)
    self:MessageToEnemyCoalition(self.taskConfig.badEndMsgEnemy, MESSAGE_TIME_ON_SCREEN)
    self:EndTask()
end

function TaskContoller:OnCancelEndTrigger()
    if self.taskState ~= 1 then
        Debug:Log("LOGIC ERROR: OnCancelEndTrigger called with task state = " .. self.taskState .. " task name is " .. self.taskConfig.name)
        return 
    end

    Debug:Log("OnCancelEndTrigger called, task name is " .. self.taskConfig.name)
    self.taskState = 4
    self:MessageToFriendlyCoalition(self.taskConfig.cancelEndMsgFriendly, MESSAGE_TIME_ON_SCREEN)
    self:MessageToEnemyCoalition(self.taskConfig.cancelEndMsgEnemy, MESSAGE_TIME_ON_SCREEN)
    self:EndTask()
end

function TaskContoller:MessageToFriendlyCoalition(text, duration)
    if text ~= "" then
        local newMsg = MESSAGE:New(text, duration):ToCoalition(self.taskConfig.coalition)
    end
end

function TaskContoller:MessageToEnemyCoalition(text, duration)
    local coal = 1
    if self.taskConfig.coalition == 2 then
        coal = 1
    else
        coal = 2
    end

    if text ~= "" then
        local newMsg = MESSAGE:New(text, duration):ToCoalition(coal)
    end
end

function TaskContoller:MessageToGroup(groupName, text, duration)
    local msgGroup = GROUP:FindByName( groupName )

    if msgGroup ~= nil then
        local newMsg = MESSAGE:New(text, duration):ToGroup(msgGroup)
    end
end

function TaskContoller:BriefMessageToGroup(groupName, duration)
    local msgGroup = GROUP:FindByName( groupName )
    local groupCoal = msgGroup:GetCoalition()

    if self.taskConfig.coalition == groupCoal then 
        self:MessageToGroup( groupName, self.taskConfig.briefMsgFriendly, duration )
    else
        self:MessageToGroup( groupName, self.taskConfig.briefMsgEnemy, duration )
    end
end

function TaskContoller:GetCoalitionOfGroup(groupName)
    local group = GROUP:FindByName( groupName )
    return group:GetCoalition()
end

------------------------------------------------------------------------------------------------------

UserFlagCather = {}

function UserFlagCather:New(_userFlag, _isCallOnce)
    newObj = 
    {
        userFlag = _userFlag,
        isCallOnce = _isCallOnce,
        _flag = nil,
        _userFlagObj = nil,
        _objToCall = nil,
        _callFuncName = nil,
        _objArgs = nil,
        _sheduler = nil
    }
    self.__index = self
    return setmetatable(newObj, self)
end

function UserFlagCather:AddListener(object, funcName)
    self._objToCall = object
    self._callFuncName = funcName

    self._sheduler = SCHEDULER:New( nil, 
    function()
        self:Check()
    end, {}, 1, 1
    )
end

function UserFlagCather:Check()
    if self._userFlagObj == nil then
        self._userFlagObj = USERFLAG:New(self.userFlag)
    end

    if self._flag == nil then
        self._flag = self._userFlagObj:Get()
    end

    local newFlag = self._userFlagObj:Get()
    if self._flag ~= newFlag then
        self:Call(newFlag)
        self._flag = newFlag
    end

    if self._objToCall == nil then 
        self._sheduler = nil
        self = nil
    end
end

function UserFlagCather:Call(newValue)
    self._objToCall[self._callFuncName](self._objToCall)

    if self.isCallOnce == true then
        self._sheduler = nil
        self = nil
    end
end
