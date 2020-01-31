TaskConfig = 
{
    name = "CommonTask",
    coalition = 1,
    startTrigger = "100",
    goodEndTrigger = "101",
    badEndTrigeer = "102",
    cancelTrigger = "103",
    startMsgFriendly = "This is start message",
    startMsgEnemy = "This is enemy start message",
    goodEndMsgFriendly = "This is end message"
}

------------------------------------------------------------------------------------------------------

TaskContoller = {}

function TaskContoller:New(_taskConfig)
    newObj = 
    {
        taskConfig = _taskConfig
    }
    self.__index = self
    return setmetatable(newObj, self)
end

function TaskContoller:StartTask()
    local startUserFlag = USERFLAG:New(self.taskConfig.startTrigger)
    startUserFlag:Set(1)

    self:MessageToTaskCoalition(self.taskConfig.startMsgFriendly, 10)
    self:MessageToEnemyCoalition(self.taskConfig.startMsgEnemy, 10)

    thisTask = self

    local goodEndEvent = UserFlagCather:New(self.taskConfig.goodEndTrigger, true)
    goodEndEvent:AddListener(thisTask, "OnGoodEndTrigger")

end

function TaskContoller:OnGoodEndTrigger()
    self:MessageToTaskCoalition(self.taskConfig.goodEndMsgFriendly, 10)
end

function TaskContoller:MessageToTaskCoalition(text, duration)
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
    thisObj = self

    self._sheduler = SCHEDULER:New( nil, 
    function()
        thisObj:Check()
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
end

function UserFlagCather:Call(newValue)
    self._objToCall[self._callFuncName](self._objToCall)

    if self.isCallOnce == true then
        self._sheduler = nil
        self = nil
    end
end