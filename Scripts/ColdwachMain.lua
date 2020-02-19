Debug = Debuger:New(ME_isDebugMode)

FixedWingGroupMenuManager = GroupMenuManager:New()
FixedWingGroupMenuManager:AddMenuCommandForGroupsWithPrefix("FW", nil, "Show current task")

BlueFixedWingTaskManager = TaskManager:New("Blue task manager")
BlueFixedWingTaskManager:SetMissions(blueFixedWingTasksConfig)
BlueFixedWingTaskManager:StartTasking()

FixedWingBriefTaskReportManager = TaskReportManager:New(BlueFixedWingTaskManager, "Show current task", 15)

FixedWingGroupMenuManager:AddListener(FixedWingBriefTaskReportManager)

mainGroupRandomizer = GroupRandomizer:New()
mainGroupRandomizer:Start("perkill", "cntkill")
