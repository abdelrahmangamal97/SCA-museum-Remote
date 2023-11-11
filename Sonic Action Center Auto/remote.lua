local kb = libs.keyboard;
local win = libs.win;
local server = libs.server;
local list;
local items;
local interruptPresentation = false; 
local sleepTimer;

actions.sleep = function (milliseconds)
    local t = milliseconds / 200 ;
    local continueLoop = true;  -- Flag to control the loop
    for i = 1, t do
        print(i);
        os.sleep(200)
        if interruptPresentation then
            interruptPresentation = false;
            print("Interrupted the sleep loop");
            continueLoop = false;
            break;
        end
        print("bot");
        if not continueLoop then
            break;
        end
    end
end

actions.openResolume = function ()
    -- Replace the path with the actual path to Resolume Arena on your system
    os.open("C:\\Program Files\\Resolume Arena\\Arena.exe");
    os.sleep(6000);
    
    -- Get the list of running tasks
    list = win.list(false);
    
    -- Find the task that includes "Resolume Arena" in its title
    local resolumeTask = nil;
    for i, task in ipairs(list) do
        if string.match(task.title, "Resolume Arena") then
            resolumeTask = task;
        end
    end

    -- If a Resolume Arena task is found, switch to it and cascade others
    if resolumeTask then
        win.switchto(resolumeTask.handle);
    end
    
    os.sleep(800);
    kb.stroke("i");
    os.sleep(800);
end

actions.Whole = function ()
    print("whole started");
    actions.switchToResolume();
    actions.sleep(800);
    kb.stroke("k");
    actions.sleep(800);
    actions.switchToResolume();
    kb.stroke("l");
    actions.sleep(15000);
    actions.switchToResolume();
    kb.stroke("d");
    actions.sleep(44000);
    actions.switchToResolume();
    kb.stroke("g", "f");
    actions.sleep(50200);
    actions.switchToResolume();
    kb.stroke("c");
    actions.sleep(44000);
    actions.switchToResolume();
    kb.stroke("i", "o");
end

actions.switchToResolume = function ()
    -- Get the list of running tasks
    list = win.list(false);
    
    -- Find the task that includes "Resolume Arena" in its title
    local resolumeTask = nil;
    for i, task in ipairs(list) do
        if string.match(task.title, "Resolume Arena") then
            resolumeTask = task;
        end
    end

    -- If a Resolume Arena task is found, switch to it and cascade others
    if resolumeTask then
        win.switchto(resolumeTask.handle);
    end
end

actions.CloseResolume = function ()
    actions.switchToResolume();
    actions.interruptPresentation();
    kb.stroke("Z");
end

actions.interruptPresentation = function ()
    interruptPresentation = true;
    continueLoop = false;
    print("Presentation interrupted");
end
