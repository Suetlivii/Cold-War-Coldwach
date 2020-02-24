MenuCommandController = {}

function MenuCommandController:New(_groupName)
    newObj = 
    {
        groupName = _groupName,
        menuCommandName = nil,
        menuCommandParent = nil,
        eventData = {},
        onCommandListeners = {}
    }
    self.__index = self
    return setmetatable(newObj, self)
end

function MenuCommandController:CreateMenuCommand(_menuCommandParent, _menuCommandName)
    if _menuCommandName == nil then 
        return
    else
        self.menuCommandName = _menuCommandName
    end

    if _menuCommandParent ~= nil then
        self.menuCommandParent = _menuCommandParent
    end

    local function callFunc()
        self:Call()
    end

    local PlaneGroup = GROUP:FindByName( self.groupName )
    if PlaneGroup and PlaneGroup:IsAlive() then
        if self.menuCommandParent ~= nil then
            local MenuManage = MENU_GROUP:New( PlaneGroup, self.menuCommandParent )
            MENU_GROUP_COMMAND:New( PlaneGroup, self.menuCommandName, MenuManage, callFunc )
        else
            MENU_GROUP_COMMAND:New( PlaneGroup, self.menuCommandName, nil, callFunc )
        end
    end

    self.eventData.groupName = self.groupName
    self.eventData.commandName = _menuCommandName
end

function MenuCommandController:AddListener(_obj)
    table.insert( self.onCommandListeners, _obj )
end

function MenuCommandController:Call()
    for i, v in ipairs(self.onCommandListeners) do
        v:OnCommand(self.eventData)
    end
end

------------------------------------------------------------------------------------------------------

GroupMenuManager = {
    commandListeners = {},
    menuCommandControllers = {},
    _sheduler = nil,
    alreadyInitializedGroups = {},
    _prefix = nil,
    _menuCommandParent = nil,
    _menuCommandName = nil,
    _isInit = false
}

function GroupMenuManager:New()
    local self = BASE:Inherit( self, BASE:New() ) -- #DATABASE

    self:SetEventPriority( 1 )
    
    self:HandleEvent( EVENTS.Birth, self._EventOnBirth )

    return self
end

function GroupMenuManager:OnEventBirth(EventData)
    if self._isInit == true then 
        self:InitCommands()
    end
end

function GroupMenuManager:AddMenuCommandForGroupsWithPrefix(_prefix, _menuCommandParent, _menuCommandName)
    self._prefix = _prefix
    self._menuCommandParent = _menuCommandParent
    self._menuCommandName = _menuCommandName
    self._isInit = true
end

function GroupMenuManager:InitCommands()

    _prefix = self._prefix
    _menuCommandParent = self._menuCommandParent
    _menuCommandName = self._menuCommandName

    local setGroup = SET_GROUP:New()
    setGroup:FilterPrefixes( { _prefix } )
    setGroup:FilterStart()

    local set = setGroup:GetSetNames()

    for i, v in ipairs(set) do
        if self.alreadyInitializedGroups[v] ~= true then
            Debug:Log("GroupMenuManager:AddMenuCommandForGroupsWithPrefix adding command for group named " .. v)
            local newController = MenuCommandController:New(v)
            newController:CreateMenuCommand(_menuCommandParent, _menuCommandName)
            newController:AddListener(self)
            table.insert( self.menuCommandControllers, newController )
            table.insert( self.alreadyInitializedGroups, v )
            self.alreadyInitializedGroups[v] = true
        end
    end
end

function GroupMenuManager:AddListener(_object)
    table.insert( self.commandListeners, _object )
end

function GroupMenuManager:OnCommand(_eventData)
    Debug:Log("GroupMenuManager:OnCommand, group name is " .. _eventData.groupName .. ", command name is " .. _eventData.commandName)
    for i, v in ipairs(self.commandListeners) do
        v:OnCommand(_eventData)
    end
end
