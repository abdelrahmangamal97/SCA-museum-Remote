local kb = libs.keyboard;
local win = libs.win;
local server = libs.server;
local list;
local items;



--@help Command 1
actions.command1 = function ()
	kb.stroke("ctrl", "alt", "delete");
end


--@help Command 2
actions.command2 = function ()
	kb.stroke("win", "e");
end

--@help Close
actions.CloseResolume = function ()
	kb.stroke("Z");
end 

--@help Command 3
actions.Cleaning = function ()
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
       kb.stroke("c");
end

actions.Diging = function ()
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
    kb.stroke("d");
end

actions.North = function ()
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
    kb.stroke("l");
end
actions.MorraDubling = function ()
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
    kb.stroke("k");
end
actions.Lables = function ()
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
    kb.stroke("o");
end

actions.kmplates = function ()
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
    kb.stroke("p");
end

actions.openResolume = function ()
    -- Replace the path with the actual path to Resolume Arena on your system
    os.open("C:\\Program Files\\Resolume Arena\\Arena.exe");
    os.sleep(8000);
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
        os.sleep(800);
        kb.stroke("i");
    end
end

actions.Whole = function ()

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
    os.sleep(800);
    kb.stroke("k");
    os.sleep(800);
    kb.stroke("l");
    os.sleep(15000);
    kb.stroke("d");
    os.sleep(44000);
    kb.stroke("g", "f");
    os.sleep(50280);
    kb.stroke("c");
    os.sleep(44000);
    kb.stroke("i","o");
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