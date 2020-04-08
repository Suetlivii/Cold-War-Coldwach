Debug = Debuger:New(ME_isDebugMode)

--Adding menu commands ----------------------------------------------------------------------------------
--For fixed wing (FW) aircraft
FixedWingGroupMenuManager = GroupMenuManager:New()
FixedWingGroupMenuManager:AddMenuCommandForGroupsWithPrefix("FW", nil, "Show current task")
--For rotary wing (RW) aircraft
RotaryWingGroupMenuManager = GroupMenuManager:New()
RotaryWingGroupMenuManager:AddMenuCommandForGroupsWithPrefix("RW", nil, "Show current task")


--Adding task managers -----------------------------------------------------------------------------------
--Blue fixed wing task manager
BlueFixedWingTaskManager = TaskManager:New("Blue FW task manager")
BlueFixedWingTaskManager:SetMissions(blueFixedWingTasksConfig)
BlueFixedWingTaskManager:SetFirstTask(ME_first_b)
BlueFixedWingTaskManager:StartTasking()
--Blue rotary wing task manager
BlueRotaryWingTaskManager = TaskManager:New("Blue RW task manager")
BlueRotaryWingTaskManager:SetMissions(blueRotaryWingTasksConfig)
BlueRotaryWingTaskManager:SetFirstTask(ME_first_rb)
BlueRotaryWingTaskManager:StartTasking()

--Red fixed wing task manager
RedFixedWingTaskManager = TaskManager:New("Red FW task manager")
RedFixedWingTaskManager:SetMissions(redFixedWingTasksConfig)
RedFixedWingTaskManager:SetFirstTask(ME_first_r)
RedFixedWingTaskManager:StartTasking()
--Red rotary wing task manager
RedRotaryWingTaskManager = TaskManager:New("Red RW task manager")
RedRotaryWingTaskManager:SetMissions(redRotaryWingTasksConfig) 
RedRotaryWingTaskManager:SetFirstTask(ME_first_rr)
RedRotaryWingTaskManager:StartTasking()


--Adding task report managers that will show task brief on "Show current task" menu command for FIXED wing aircraft
BlueFixedWingBriefTaskReportManager = TaskReportManager:New(BlueFixedWingTaskManager, "Show current task", 45)
RedFixedWingBriefTaskReportManager = TaskReportManager:New(RedFixedWingTaskManager, "Show current task", 45)
--Adding those task report managers to menu commnad managers
FixedWingGroupMenuManager:AddListener(BlueFixedWingBriefTaskReportManager)
FixedWingGroupMenuManager:AddListener(RedFixedWingBriefTaskReportManager)

--Adding task report managers that will show task brief on "Show current task" menu command for ROTARY wing aircraft
BlueRotaryWingBriefTaskReportManager = TaskReportManager:New(BlueRotaryWingTaskManager, "Show current task", 45)
RedRotaryWingBriefTaskReportManager = TaskReportManager:New(RedRotaryWingTaskManager, "Show current task", 45)
--Adding those task report managers to menu commnad managers
RotaryWingGroupMenuManager:AddListener(BlueRotaryWingBriefTaskReportManager)
RotaryWingGroupMenuManager:AddListener(RedRotaryWingBriefTaskReportManager)


--Group randomizer init -------------------------------------------------------------------------------------
mainGroupRandomizer = GroupRandomizer:New()
mainGroupRandomizer:SetKeyWords("perkill", "cntkill")
mainGroupRandomizer:RandomizeOnce(false)
