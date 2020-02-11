TaskManager = {}

function TaskManager:New()
    newObj = 
    {
        _missionsConfigsList = {},
        _nextMissionsConfigsList = {},
        _currentMissionsControllersList = {}
    }
    self.__index = self
    return setmetatable(newObj, self)
end

function TaskManager:StartTasking()
    self._nextMissionsConfigsList[1] = self:DeepCopyTable(self._missionsConfigsList[1])
    self._nextMissionsConfigsList[2] = self:DeepCopyTable(self._missionsConfigsList[2])
end

function TaskManager:GetRandomTask(_coalition)
    local coalMissionsConfigsList = self._nextMissionsConfigsList[_coalition]
    local rng = math.random( #coalMissionsConfigsList )

    return coalMissionsConfigsList[rng]
end

function TaskManager:RemoveTaskFromList(_taskName)

end

function TaskManager:FindTask(_taskName)
    
end

function TaskManager:SetMissions(_coalition, _missionsList)
    if _coalition == 1 then 
        self._redMissionsList = _missionsList
    end

    if _coalition == 2 then
        self._blueMissionList = _missionsList
    end
end

function TaskManager:OnTaskEnd(_taskConfig, _taskState)

end

function TaskManager:DeepCopyTable(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end