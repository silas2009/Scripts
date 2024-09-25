function getPath(instance)
	local specialCharacters = {" ","%.","\\","/","\"",",","'",":",";","!","@","#","%$","%%","%^","&","%?","%*","%(","%)","%[","%]","{","}","%-","%+","=","~","`","|","<",">"}
	local path = {instance}
	local stringPath = {}
	if #path == 1 and path[1] == game then return "game" end
	repeat instance = instance.Parent table.insert(path,instance) until instance == game
	for i = #path,1,-1 do
		local inst = path[i]
		local name = inst.Name
		if inst == game then
			name = "game"
		elseif inst == workspace then
			table.remove(stringPath,1)
			name = "workspace"
		end
		local hasSpecialChars = false
		for _,v in pairs(specialCharacters) do
			if string.match(name,v) then
				print(v,name)
				name = "[\"" .. name .. "\"]"
				hasSpecialChars = true
				break
			end
		end
		if not hasSpecialChars then
			name = "." .. name
		end
		table.insert(stringPath,name)
	end
	local pathString = table.concat(stringPath,"")
	pathString = pathString:sub(2,#pathString)
	return pathString
end

function getInstanceId(ids,instance)
	for id,inst in pairs(ids) do
		if instance == inst then
			return id
		end
	end
	return nil
end

function getInstanceFromId(ids,id)
	for _id,inst in pairs(ids) do
		if id == _id then
			return inst
		end
	end
	return nil
end

function record(length,instancesFilter)
	local scriptFormat = {variables={},changes={}}
	local instanceIds = {}
	local existedInstances = {}
	local connections = {}
	local startTick
	local changedTimes = 0

	local function getChangesTimePosition(timePosition)
		local changesTbl
		for _,v in pairs(scriptFormat.changes) do
			if v.TimePosition == timePosition then
				changesTbl = v
				break
			end
		end
		if not changesTbl then
			changesTbl = {TimePosition=timePosition}
			table.insert(scriptFormat.changes,changesTbl)
		end
		return changesTbl
	end

	local function addToList(id,instance,existed)
		if not scriptFormat.variables[id] then
			scriptFormat.variables[id] = {existed and getPath(instance) or ("Instance.new(\"%s\")"):format(instance.ClassName)}
			local existed = table.find(existedInstances,instance.Parent) and true or false
			local currentTime = math.round((tick()-startTick)*100)/100
			local changesTbl = getChangesTimePosition(currentTime)
			table.insert(changesTbl,{Id=id,Name="Name",Value="\"" .. instance.Name .. "\""})
			table.insert(changesTbl,{Id=id,Name="Parent",Value=existed and getPath(instance.Parent) or instance.Parent})
		end
	end

	local function add(instance,existed)
		if existed then table.insert(existedInstances,instance) end
		local namematchamount = -1
		repeat namematchamount += 1 until not instanceIds[namematchamount > 0 and instance.Name .. namematchamount or instance.Name]
		local id = namematchamount > 0 and instance.Name .. namematchamount or instance.Name
		instanceIds[id] = instance
		local changed
		changed = instance.Changed:Connect(function(property)
			if changedTimes == 0 then
				startTick = tick()
			end
			changedTimes += 1
			addToList(id,instance,existed)
			local success,err = pcall(function()
				local value = instance:IsA("ValueBase") and property or instance[property]
				property = instance:IsA("ValueBase") and "Value" or property
				if typeof(value) == "Instance" then
					local otherId = getInstanceId(instanceIds,value)
					if otherId then
						addToList(otherId,value,table.find(existedInstances,value) and true or false)
					end
					value = otherId
				elseif typeof(value) == "string" then
					value = "\"" .. value .. "\""
				elseif typeof(value) == "Vector3" then
					value = ("Vector3.new(%s, %s, %s)"):format(math.round(value.X*10000)/10000,math.round(value.Y*10000)/10000,math.round(value.Z*10000)/10000)
				elseif typeof(value) == "CFrame" then
					local rotX,rotY,rotZ = value:ToEulerAnglesXYZ()
					value = ("CFrame.new(%s, %s, %s) * CFrame.fromEulerAnglesXYZ(math.rad(%s), math.rad(%s), math.rad(%s))"):format(math.round(value.X*10000)/10000,math.round(value.Y*10000)/10000,math.round(value.Z*10000)/10000,math.round(math.deg(rotX)*10000)/10000,math.round(math.deg(rotY)*10000)/10000,math.round(math.deg(rotZ)*10000)/10000)
				end
				local currentTime = math.round((tick()-startTick)*100)/100
				local changesTbl = getChangesTimePosition(currentTime)
				table.insert(changesTbl,{Id=id,Name=property,Value=tostring(value)})
			end)
			if not success then warn(err) end
		end)
		table.insert(connections,changed)
	end

	for _,inst in pairs(instancesFilter) do
		add(inst,true)
		table.insert(connections,inst.DescendantAdded:Connect(function(desc)
			add(desc)
		end))
		for _,desc in pairs(inst:GetDescendants()) do
			add(desc,true)
		end
	end

	repeat task.wait() until changedTimes > 0
	task.wait(length)
	for _,changes in pairs(scriptFormat.changes) do
		for _,change in pairs(changes) do
			if typeof(change) == "table" and change.Name == "Parent" and typeof(change.Value) == "Instance" then
				local id = getInstanceId(instanceIds,change.Value)
				if id then
					change.Value = id
				else
					change.Value = "nil"
				end
			end
		end
	end
	for _,v in pairs(connections) do v:Disconnect() end
	local scriptSource = ""
	for varName,values in pairs(scriptFormat.variables) do
		scriptSource = scriptSource .. ("local %s = %s;\n"):format(varName,values[1])
	end
	local lastTimePosition = 0
	for timePosition,changes in ipairs(scriptFormat.changes) do
		local timePosition = changes.TimePosition
		scriptSource = scriptSource .. ("wait(%s);\n"):format(math.round((timePosition - lastTimePosition)*10000)/10000)
		for _,change in pairs(changes) do
			if typeof(change) == "table" then
				local varName = change.Id
				print(varName,change.Name,change.Value)
				scriptSource = scriptSource .. ("%s.%s = %s;\n"):format(varName,change.Name,change.Value or "nil")
			end
		end
		lastTimePosition = timePosition
	end
	return scriptSource
end

setclipboard(record(5,{game.Players.LocalPlayer.Character}))
