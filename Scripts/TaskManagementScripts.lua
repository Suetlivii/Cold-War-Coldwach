TaskManager = {}

function TaskManager:New(_managerName)
    newObj = 
    {
        _managerName = _managerName,
        _taskConfigsList = nil,
        _nextTaskConfigsList = nil,
        _currentTask = nil
    }
    self.__index = self
    return setmetatable(newObj, self)
end

function TaskManager:StartTasking()
    if #self._nextTaskConfigsList <= 0 then 
        Debug:Log("TaskManager: no tasks are found, task manager name is " .. self._managerName)
        return
    end

    Debug:Log("TaskManager:StartTasking, starting tasking")
    local randomTaskConfig = self:GetRandomTask(self._nextTaskConfigsList)
    local taskToStart = TaskContoller:New(randomTaskConfig)

    if taskToStart ~= nil then
        Debug:Log("TaskManager:StartTasking, starting task with name " .. taskToStart.taskConfig.name)
        taskToStart:StartTask()
        taskToStart:AddOnEndEventListener(self)
        self._currentTask = taskToStart
        self:RemoveTaskFromList(taskToStart.taskConfig.name, self._nextTaskConfigsList)
    else
        Debug:Log("TaskManager:StartTasking: ERROR: no task to started, got nil")
        return nil
    end
end

function TaskManager:GetRandomTask(_taskList)
    if #_taskList > 0 then
        local taskList = _taskList
        local rng = math.random( #taskList )

        if taskList[rng] ~= nil then
            return taskList[rng]
        else
            return nil
        end
    else
        return nil
    end
end

function TaskManager:RemoveTaskFromList(_taskName, _list)
    for k, v in ipairs(_list) do
        if v.name == _taskName then
            table.remove( _list, k )
        end
    end
end

function TaskManager:FindTask(_taskName, _list)
    for k, v in ipairs(_list) do
        if v.name == _taskName then
            return _list[k]
        end
    end
end

function TaskManager:SetMissions(_taskConfigsList)
    Debug:Log("TaskManager:SetMissions: setting tasks, count is " .. #_taskConfigsList)
    self._taskConfigsList = _taskConfigsList
    self._nextTaskConfigsList = self:DeepCopyTable(_taskConfigsList)
end

function TaskManager:OnTaskEnd(_taskConfig, _taskState)
    if #self._nextTaskConfigsList > 0 then
        self:StartTasking()
    else
        Debug:Log("TaskManager: all tasks are done, no more tasks to start. Manager name is " .. self._managerName)
        self._currentTask = nil
    end
end

function TaskManager:DeepCopyTable(orig)
    local deepcopy = UTILS.DeepCopy
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

------------------------------------------------------------------------------------------------------

TaskReportManager = {}

function TaskReportManager:New(_taskManager, _briefCommandName, _textDuration)
    newObj = 
    {
        _taskManager = _taskManager,
        _briefCommandName = _briefCommandName,
        _textDuration = _textDuration
    }
    self.__index = self
    return setmetatable(newObj, self)
end

function TaskReportManager:OnCommand(eventData)
    if eventData.commandName == self._briefCommandName then 
        if self._taskManager._currentTask ~= nil then
            Debug:Log("TaskReportManager:OnCommand: sending message to group named " .. eventData.groupName) 
            self._taskManager._currentTask:BriefMessageToGroup(eventData.groupName, self._textDuration)
        end
    end
end
