Debug = Debuger:New(ME_isDebugMode)

FixedWingGroupMenuManager = GroupMenuManager:New()
FixedWingGroupMenuManager:AddMenuCommandForGroupsWithPrefix("FW", nil, "Show current task")

BlueFixedWingTaskManager = TaskManager:New("Blue FW task manager")
BlueFixedWingTaskManager:SetMissions(blueFixedWingTasksConfig)
BlueFixedWingTaskManager:StartTasking()

RedFixedWingTaskManager = TaskManager:New("Red FW task manager")
RedFixedWingTaskManager:SetMissions(redFixedWingTasksConfig)
RedFixedWingTaskManager:StartTasking()

BlueFixedWingBriefTaskReportManager = TaskReportManager:New(BlueFixedWingTaskManager, "Show current task", 45)
RedFixedWingBriefTaskReportManager = TaskReportManager:New(RedFixedWingTaskManager, "Show current task", 45)

FixedWingGroupMenuManager:AddListener(BlueFixedWingBriefTaskReportManager)
FixedWingGroupMenuManager:AddListener(RedFixedWingBriefTaskReportManager)

mainGroupRandomizer = GroupRandomizer:New()
mainGroupRandomizer:Start("perkill", "cntkill")