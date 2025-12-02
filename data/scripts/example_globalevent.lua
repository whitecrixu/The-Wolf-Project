-- Example RevScriptSys GlobalEvent
-- This demonstrates startup and interval events

-- Startup event
local startupEvent = GlobalEvent("RevScriptSysStartup")

function startupEvent.onStartup()
    print(">> [RevScriptSys] Server startup event triggered!")
    return true
end

startupEvent:type("startup")
startupEvent:register()

-- Timer event (executes at specific time)
local timerEvent = GlobalEvent("RevScriptSysTimer")

function timerEvent.onTime()
    print(">> [RevScriptSys] Timer event triggered at scheduled time!")
    return true
end

timerEvent:time("12:00:00")  -- Execute at noon
timerEvent:register()

print(">> [RevScriptSys] Loaded example_globalevent.lua")
