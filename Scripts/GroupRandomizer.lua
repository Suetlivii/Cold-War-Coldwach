GroupRandomizer = {}

function GroupRandomizer:New()
    newObj = 
    {
        _percentKillWord = nil,
        _unitCountKillWord = nil,
        eventHandler = nil,
        _alreadyFoundGroupsNames = {}
    }
    self.__index = self
    return setmetatable(newObj, self)
end

function GroupRandomizer:Start(_percentKillWord, _unitCountKillWord)
    self._percentKillWord = _percentKillWord
    self._unitCountKillWord = _unitCountKillWord

    local OnBirthHandler = EVENTHANDLER:New()
    OnBirthHandler:HandleEvent(EVENTS.Birth)


    local thisObj = self
    function OnBirthHandler:OnEventBirth(EventData)
        thisObj:OnBirth(EventData)
    end

    Debug:Log("GroupRandomizer:Start started")
end

function GroupRandomizer:OnBirth(EventData)
    local percentKillWord = self._percentKillWord .. "<(.-)>"
    local percent = string.match(EventData.IniDCSGroupName, percentKillWord)

    local countKillWord = self._unitCountKillWord .. "<(.-)>"
    local killCount = string.match(EventData.IniDCSGroupName, countKillWord)

    if percent ~= nil then 
        self:KillPercent(EventData.IniDCSGroupName, tonumber(percent))
    end

    if killCount ~= nil then 
        self:KillUnits(EventData.IniDCSGroupName, tonumber(killCount))
    end
end

function GroupRandomizer:KillPercent(_groupName, _percent)
    _percent = tonumber(_percent)
    if _percent <= 0 or _percent >= 1 then 
        return false
    end

    local groupName = _groupName
    local group = GROUP:FindByName(groupName)
    if group == nil then 
        return false
    end
    Debug:Log("GroupRandomizer:KillPercent found group with percent kill key word, group name is " .. groupName .. " percent is " .. _percent )

    local unitsList = group:GetUnits()

    local unitsToKill = #unitsList * _percent
    self:KillUnits(_groupName, unitsToKill)

end

function GroupRandomizer:FindValueInTable(_table, _value)
    for i, v in ipairs(_table) do 
        if v == _value then 
            return i
        end
    end
    return false
end

function GroupRandomizer:KillUnits(_groupName, _unitsCount)
    if self._alreadyFoundGroupsNames[_groupName] == true then 
        return false
    end

    _unitsCount = tonumber(_unitsCount)
     if _unitsCount <= 0 then 
        return false
    end
    _unitsCount = math.floor( _unitsCount )

    local groupName = _groupName
    local group = GROUP:FindByName(groupName)
    if group == nil then 
        return false
    end
    table.insert( self._alreadyFoundGroupsNames, groupName )
    self._alreadyFoundGroupsNames[groupName] = true
    Debug:Log("GroupRandomizer:Kill count is started for " .. groupName .. " count is " .. _unitsCount )

    local unitsList = group:GetUnits()

    if #unitsList < 2 then 
        return false
    end

    if _unitsCount >= #unitsList + 1 then 
        return false
    end

    local unitsToKillKeys = {}
    for i = 1, #unitsList do 
        table.insert(unitsToKillKeys, i)
        unitsToKillKeys[i] = i
    end

    for i = 1, _unitsCount do 
        local rng = math.random( 1, #unitsToKillKeys )
        table.remove(unitsToKillKeys, rng)
    end

    for i = 1, #unitsList do 
        if self:FindValueInTable(unitsToKillKeys, i) == false then 
            unitsList[i]:Destroy()
        end
    end
end
