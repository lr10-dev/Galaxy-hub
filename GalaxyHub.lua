local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Lista de usuários autorizados
local authorizedUsers = {
    ["AdmBrookhaven4"] = true,
    ["sr_greg81"] = true,
    ["TwT_perdiminhaconta"] = true,
    ["scarys_cary66666"] = true,
    ["AdmBrookhaven5"] = true,
    ["kdjdhwie12"] = true,
    ["admbughaven4"] = true,
    ["Pguel_01"] = true,
    ["fazolpguel2"] = true,
    ["kdjdhwie14"] = true,
    ["kdjdhwie13"] = true,
    ["TemplariosHub"] = true,
    ["j3ffwoods"] = true,
    ["Ink_sannes13"] = true,
    ["juninho126501"] = true,
    ["baconbadass6"] = true,
    ["Johnatan_FF95"] = true,
    ["Nego_Doce144"] = true,
    ["joaoantonio1997"] = true,
    ["contadefarme12"] = true,
    ["sr_greg26"] = true,
    ["sirtjfoxy123"] = true,
    ["samuel123456game1"] = true,
    ["thekjahwn"] = true,
    ["bypassadonis"] = true,
    ["PerfFectBx4483"] = true,
    ["breno628e5"] = true,
    ["kdjdhwie"] = true,
    ["SCARYS_CARY66666"] = true,
    ["davigemes300617"] = true,
    ["ERROR887282"] = true,
    ["Meliodas1234328"] = true,
    ["ajudante_Claudio"] = true,
    ["hdqnwsn"] = true,
    ["thek01890"] = true,
    ["mano_shark6"] = true,
    ["volvinhr"] = true,
    ["KAIO_XTY"] = true,
    ["djekejsn"] = true,
    ["D99SHOP"] = true,
    ["cotryball8"] = true,
    ["ADMBROOKHAVEN6676"] = true,
    ["cuidado_025"] = true,
    ["PerfFectBx4483"] = true,
    ["Mateuszinban"] = true,
    ["nolyhaha"] = true,
    ["mTADORDEWEB666"] = true,
    ["eobli7"] = true,
    ["novacontapolicebrook"] = true,
    ["Nego_doce144"] = true,
    ["amandabrfofinhagam2"] = true,
    ["uehdutududgetd"] = true,
    ["whydeltamyacc"] = true,
    ["mileno_fofinho"] = true,
    ["PROBLEMATICOGAMES3"] = true,
    ["controlman221"] = true,
    ["sigafenixmenu2025"] = true,
    ["Miguel072027202u29"] = true,
    ["Shupei_Tuavara"] = true,
    ["ShupeiTeu_Cu"] = true,
    ["Xx_shelby01"] = true,
}

-- Caso o jogador não seja autorizado, ele será kickado
if not authorizedUsers[LocalPlayer.Name] then
    LocalPlayer:Kick("❌️ Você não tem Permissão para Executar esse Script, fale com o criador dele para que ele libere seu acesso.")
    return
end

local Intro = Instance.new("ScreenGui")
local Logo = Instance.new("ImageLabel")
local Circle = Instance.new("UICorner")

Intro.Name = "Intro"
Intro.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Intro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Logo.Name = "Logo"
Logo.Parent = Intro
Logo.AnchorPoint = Vector2.new(0.5, 0.5)
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
Logo.Size = UDim2.new(0, 400, 0, 400)
Logo.Image = "rbxassetid://86898373680592"
Logo.ImageTransparency = 0
Logo.ScaleType = Enum.ScaleType.Crop

Circle.CornerRadius = UDim.new(110235, 0)
Circle.Name = "Circle"
Circle.Parent = Logo

-- Timer de 3 segundos antes de desaparecer
task.wait(3) -- Aguarda 3 segundos
Logo:TweenSizeAndPosition(
    UDim2.new(0, 0, 0, 0), -- Diminui o logo
    UDim2.new(0.5, 0, 0.5, 0), -- Mantém no centro
    Enum.EasingDirection.Out,
    Enum.EasingStyle.Quad,
    1, -- Tempo da animação
    true,
    function()
        Intro:Destroy() -- Remove a tela de introdução
    end
)


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/suwiwydbwiwbsjsjHub/Orion-Libray-transparente-/refs/heads/main/README.md')))()
local Window = OrionLib:MakeWindow({
    Name = "PB HUB Troll 10.0",
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "PBHubConfigs",
    IntroEnabled = true,
    IntroText = "Team Police Brookhaven",
    IntroIcon = "rbxassetid://86898373680592",
    Icon = "rbxassetid://86898373680592",
    CloseCallback = function() 
        print("PB hub fechado")
    end
})


local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

local Toggle = Instance.new("ImageButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.BackgroundTransparency = 0.5
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0, 50, 0, 50)
Toggle.Image = "rbxassetid://86898373680592"
Toggle.Draggable = true

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0.1, 0)
Corner.Parent = Toggle

local isOn = false
local selectedPlayerName = nil

local function onButtonClicked()
    if gethui():FindFirstChild("Orion") then
        gethui().Orion.Enabled = not gethui().Orion.Enabled
    end
end

local function offButtonClicked()
    if gethui():FindFirstChild("Orion") then
        gethui().Orion.Enabled = not gethui().Orion.Enabled
    end
end

Toggle.MouseButton1Click:Connect(function()
    isOn = not isOn
    if isOn then
        Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        onButtonClicked()
    else
        Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        offButtonClicked()
    end
end)


local playerName = game.Players.LocalPlayer.Name

OrionLib:MakeNotification({
    Name = "Bem-vindo(a)!",
    Content = "Olá " .. playerName,
    Image = "rbxassetid://132225387260946",
    Time = 5
})


local Tab = Window:MakeTab({
	Name = "Fling",
	Icon = "rbxassetid://10734975486",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Fling Player"
})


local Targets = {""} -- Nome será preenchido pela TextBox
local LoopAtivo = false

-- TextBox para capturar o nome do jogador e armazenar em Targets[1]
Tab:AddTextbox({
    Name = "Digite o nome do Jogador",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        Targets[1] = Value
    end
})

-- Botão com a função completa no Callback e loop infinito usando RunService
Tab:AddToggle({
	Name = "Fling",
	Default = false,
	Callback = function(Value)
		if Value then
            -- Ativa o loop quando a toggle é ligada
            LoopAtivo = true
            task.spawn(function()
                while LoopAtivo do
                    local player = game.Players.LocalPlayer
 local mouse = player:GetMouse()
 local Targets = {Targets[1]}
 
 local Players = game:GetService("Players")
 local Player = Players.LocalPlayer
 
 local AllBool = false
 
 local GetPlayer = function(Name)
	Name = Name:lower()
	if Name == "all" or Name == "others" then
		AllBool = true
		return
	elseif Name == "random" then
		local GetPlayers = Players:GetPlayers()
		if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
		return GetPlayers[math.random(#GetPlayers)]
	elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
		for _,x in next, Players:GetPlayers() do
			if x ~= Player then
				if x.Name:lower():match("^"..Name) then
					return x;
				elseif x.DisplayName:lower():match("^"..Name) then
					return x;
				end
			end
		end
	else
		return
	end
 end
 
 local Message = function(_Title, _Text, Time)
	print(_Title)
	print(_Text)
	print(Time)
end

local SkidFling = function(TargetPlayer)
	local Character = Player.Character
	local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
	local RootPart = Humanoid and Humanoid.RootPart
 
	local TCharacter = TargetPlayer.Character
	local THumanoid
	local TRootPart
	local THead
	local Accessory
	local Handle
 
	if TCharacter:FindFirstChildOfClass("Humanoid") then
		THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
	end
	if THumanoid and THumanoid.RootPart then
		TRootPart = THumanoid.RootPart
	end
	if TCharacter:FindFirstChild("Head") then
		THead = TCharacter.Head
	end
	if TCharacter:FindFirstChildOfClass("Accessory") then
		Accessory = TCharacter:FindFirstChildOfClass("Accessory")
	end
	if Accessoy and Accessory:FindFirstChild("Handle") then
		Handle = Accessory.Handle
	end
 
	if Character and Humanoid and RootPart then
		if RootPart.Velocity.Magnitude < 50 then
			getgenv().OldPos = RootPart.CFrame
		end
		if THumanoid and THumanoid.Sit and not AllBool then
		end
		if THead then
			workspace.CurrentCamera.CameraSubject = THead
		elseif not THead and Handle then
			workspace.CurrentCamera.CameraSubject = Handle
		elseif THumanoid and TRootPart then
			workspace.CurrentCamera.CameraSubject = THumanoid
		end
		if not TCharacter:FindFirstChildWhichIsA("BasePart") then
			return
		end
		
		local FPos = function(BasePart, Pos, Ang)
			RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
			Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
			RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
			RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
		end
		
		local SFBasePart = function(BasePart)
			local TimeToWait = 2
			local Time = tick()
			local Angle = 0
 
			repeat
				if RootPart and THumanoid then
					if BasePart.Velocity.Magnitude < 50 then
						Angle = Angle + 100
 
						FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
						task.wait()
					else
						FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
						task.wait()
						
						FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
						task.wait()
					end
				else
					break
				end
			until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
		end
		
		workspace.FallenPartsDestroyHeight = 0/0
		
		local BV = Instance.new("BodyVelocity")
		BV.Name = "EpixVel"
		BV.Parent = RootPart
		BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
		BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
		
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
		
		if TRootPart and THead then
			if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
				SFBasePart(THead)
			else
				SFBasePart(TRootPart)
			end
		elseif TRootPart and not THead then
			SFBasePart(TRootPart)
		elseif not TRootPart and THead then
			SFBasePart(THead)
		elseif not TRootPart and not THead and Accessory and Handle then
			SFBasePart(Handle)
		else
		end
		
		BV:Destroy()
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
		workspace.CurrentCamera.CameraSubject = Humanoid
	
		workspace.FallenPartsDestroyHeight = getgenv().FPDH
	else
	end
 end
 
 getgenv().Welcome = true
 if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end
 
 if AllBool then
	for _,x in next, Players:GetPlayers() do
		SkidFling(x)
	end
 end
 
 for _,x in next, Targets do
	if GetPlayer(x) and GetPlayer(x) ~= Player then
		if GetPlayer(x).UserId ~= 1414978355 then
			local TPlayer = GetPlayer(x)
			if TPlayer then
				SkidFling(TPlayer)
			end
		else
		end
	elseif not GetPlayer(x) and not AllBool then
	end
 end
                    task.wait(0.1)
                end
            end)
        else
            -- Desativa o loop quando a toggle é desligada
            LoopAtivo = false
        end
	end    
})


local playerTextbox

local function findPlayerByName(partialName)
    for _, player in pairs(game.Players:GetPlayers()) do
        if string.find(player.Name:lower(), partialName:lower()) or 
           string.find(player.DisplayName:lower(), partialName:lower()) then
            return player
        end
    end
    return nil
end

local function changeCharacterSize(sizeType, sizeValue)
    local args = {
        [1] = sizeType,
        [2] = sizeValue
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack(args))
end

local function equipAllItems()
    local myPlayer = game.Players.LocalPlayer
    local myCharacter = myPlayer.Character

    for _, tool in pairs(myPlayer.Backpack:GetChildren()) do
        if tool:IsA("Tool") then
            tool.Parent = myCharacter
            wait(0.1)
        end
    end
end

local function invokeServer()
    local args = {
        [1] = "PickingTools",
        [2] = "Couch"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
end

local function clearAllTools()
    local args = {
        [1] = "ClearAllTools"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s"):FireServer(unpack(args))
end

local function isPlayerMoving(player)
    local character = player.Character
    if character then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            return humanoidRootPart.Velocity.Magnitude > 0.1
        end
    end
    return false
end

local function teleportToPlayer(targetPlayer, mode)
    local myPlayer = game.Players.LocalPlayer
    local myCharacter = myPlayer.Character
    local targetCharacter = targetPlayer.Character

    if not myCharacter or not targetCharacter then return end

    local originalPosition = myCharacter.PrimaryPart.CFrame
    local myHumanoid = myCharacter:FindFirstChildWhichIsA("Humanoid")

    local function executeTeleport()
        while true do
            if not targetPlayer.Parent then
                OrionLib:MakeNotification({
                    Name = "Player left",
                    Content = "The player has left the game.",
                    Time = 5
                })
                break
            end

            local humanoid = targetCharacter:FindFirstChildWhichIsA("Humanoid")
            if humanoid and humanoid:GetState() == Enum.HumanoidStateType.Seated then
                if mode == "fling" then
                    myCharacter:SetPrimaryPartCFrame(CFrame.new(1e8, 1e8, 1e8))
                    wait(0.7)
                    clearAllTools()
                    changeCharacterSize("CharacterSizeUp", 1)
                elseif mode == "kill" then
                    local distantPosition = CFrame.new(176.308655, -496.272827, 153.928467, 0.444366872, 0.485874146, 0.75263828, -2.14771028e-08, 0.840143502, -0.54236412, -0.895844877, 0.240143502, 0.54236412)
                    myCharacter:SetPrimaryPartCFrame(distantPosition)
                    wait(0.7)
                    clearAllTools()
                    changeCharacterSize("CharacterSizeUp", 1)
                elseif mode == "bring" then
                    wait(0.01)
                    myCharacter:SetPrimaryPartCFrame(originalPosition)
                    if myHumanoid then
                        myHumanoid.PlatformStand = true
                        wait(1)
                        myHumanoid.PlatformStand = false
                    end
                    wait(0.7)
                    clearAllTools()
                    changeCharacterSize("CharacterSizeUp", 1)
                end
                break
            end

            local targetPosition = targetCharacter.PrimaryPart.Position
            local forwardDirection = targetCharacter.PrimaryPart.CFrame.LookVector
            local rightDirection = targetCharacter.PrimaryPart.CFrame.RightVector
            local upwardAdjustment = Vector3.new(0, 1, 0)

            if isPlayerMoving(targetPlayer) then
                local newPosition = targetPosition + forwardDirection * 25 + upwardAdjustment
                myCharacter:SetPrimaryPartCFrame(CFrame.new(newPosition))
                wait(0.1)
            else
                if mode == "kill" then
                    myCharacter:SetPrimaryPartCFrame(CFrame.new(targetPosition + rightDirection * 2 + upwardAdjustment))
                    wait(0.05)
                    myCharacter:SetPrimaryPartCFrame(CFrame.new(targetPosition - rightDirection * 2 + upwardAdjustment))
                    wait(0.05)
                    myCharacter:SetPrimaryPartCFrame(CFrame.new(targetPosition + forwardDirection * 5 + upwardAdjustment))
                    wait(0.05)
                    myCharacter:SetPrimaryPartCFrame(CFrame.new(targetPosition - forwardDirection * 2 + upwardAdjustment))
                    wait(0.05)
                else
                    myCharacter:SetPrimaryPartCFrame(CFrame.new(targetPosition + forwardDirection * 5 + upwardAdjustment))
                    wait(0.05)
                    myCharacter:SetPrimaryPartCFrame(CFrame.new(targetPosition + rightDirection * 2 + upwardAdjustment))
                    wait(0.05)
                    myCharacter:SetPrimaryPartCFrame(CFrame.new(targetPosition - rightDirection * 2 + upwardAdjustment))
                    wait(0.05)
                    myCharacter:SetPrimaryPartCFrame(CFrame.new(targetPosition - forwardDirection * 5 + upwardAdjustment))
                    wait(0.05)
                end
            end
        end
    end

    spawn(function()
        changeCharacterSize("CharacterSizeDown", 0.55)
        invokeServer()
        wait(1)
        equipAllItems()
        if myHumanoid then
            myHumanoid.PlatformStand = false
        end
        executeTeleport()
    end)
end

Tab:AddTextbox({
    Name = "Nick do player",
    Default = "",
    TextDisappear = true,
    Callback = function(value)
        playerTextbox = value
    end
})

Tab:AddButton({
    Name = "Bring Player",
    Callback = function()
        local targetPlayer = findPlayerByName(playerTextbox)
        if targetPlayer then
            teleportToPlayer(targetPlayer, "bring")
        else
            OrionLib:MakeNotification({
                Name = "Player not found",
                Content = "The player is not in the game.",
                Time = 5
            })
        end
    end
})


Tab:AddParagraph("Hey!"," Não e Necessário usa Couch para Usa o Bring Player ele pega o Couch automaticamente")

local Section = Tab:AddSection({
	Name = "Boat Fling[Remake]"
})


local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

local playerNames = {}
for _, player in pairs(Players:GetPlayers()) do
    table.insert(playerNames, player.Name)
end

local selectedPlayerName = nil

Tab:AddDropdown({
    Name = "Target",
    Options = playerNames,
    Callback = function(selected)
        selectedPlayerName = selected
    end
})

local function executeScript()
    local UserInputService = game:GetService("UserInputService")
    local Mouse = game.Players.LocalPlayer:GetMouse()
    local Folder = Instance.new("Folder", Workspace)
    local Part = Instance.new("Part", Folder)
    local Attachment1 = Instance.new("Attachment", Part)
    Part.Anchored = true
    Part.CanCollide = false
    Part.Transparency = 1

    local NetworkAccess = coroutine.create(function()
        settings().Physics.AllowSleep = false
        while RunService.RenderStepped:Wait() do
            for _, player in next, Players:GetPlayers() do
                if player ~= Players.LocalPlayer then
                    player.MaximumSimulationRadius = 0
                    sethiddenproperty(player, "SimulationRadius", 0)
                end
            end
            Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge)
            setsimulationradius(math.huge)
        end
    end)
    coroutine.resume(NetworkAccess)

    local function ForceVehicle(v)
        if v:IsA("Model") and v:FindFirstChildOfClass("VehicleSeat") then
            Mouse.TargetFilter = v
            for _, x in next, v:GetDescendants() do
                if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                    x:Destroy()
                end
            end
            if v:FindFirstChild("Attachment") then
                v:FindFirstChild("Attachment"):Destroy()
            end
            if v:FindFirstChild("AlignPosition") then
                v:FindFirstChild("AlignPosition"):Destroy()
            end
            if v:FindFirstChild("Torque") then
                v:FindFirstChild("Torque"):Destroy()
            end
            for _, part in next, v:GetDescendants() do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                    local Torque = Instance.new("Torque", part)
                    Torque.Torque = Vector3.new(100000 * 12, 100000 * 12, 100000 * 12)
                    local AlignPosition = Instance.new("AlignPosition", part)
                    local Attachment2 = Instance.new("Attachment", part)
                    Torque.Attachment0 = Attachment2
                    AlignPosition.MaxForce = 999999
                    AlignPosition.MaxVelocity = math.huge
                    AlignPosition.Responsiveness = 200
                    AlignPosition.Attachment0 = Attachment2
                    AlignPosition.Attachment1 = Attachment1
                end
            end
        end
    end

    for _, v in next, Workspace:GetDescendants() do
        ForceVehicle(v)
    end

    Workspace.DescendantAdded:Connect(function(v)
        ForceVehicle(v)
    end)

    spawn(function()
        while true do
            local voidPosition = Vector3.new(101, -446, -180)
            Attachment1.WorldCFrame = CFrame.new(voidPosition)
            RunService.RenderStepped:Wait()
        end
    end)
end

local function monitorSeats()
    for _, seat in pairs(Workspace:GetDescendants()) do
        if seat:IsA("Seat") or seat:IsA("VehicleSeat") then
            seat:GetPropertyChangedSignal("Occupant"):Connect(function()
                if seat.Occupant then
                    local occupantPlayer = Players:GetPlayerFromCharacter(seat.Occupant.Parent)
                    if occupantPlayer and occupantPlayer.Name == selectedPlayerName then
                        executeScript()
                    end
                end
            end)
        end
    end

    Workspace.DescendantAdded:Connect(function(descendant)
        if descendant:IsA("Seat") or descendant:IsA("VehicleSeat") then
            descendant:GetPropertyChangedSignal("Occupant"):Connect(function()
                if descendant.Occupant then
                    local occupantPlayer = Players:GetPlayerFromCharacter(descendant.Occupant.Parent)
                    if occupantPlayer and occupantPlayer.Name == selectedPlayerName then
                        executeScript()
                    end
                end
            end)
        end
    end)
end

monitorSeats()
Tab:AddButton({
    Name = "Boat Fling",
    Callback = function()
        local Player = game.Players.LocalPlayer
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local Humanoid = Character:FindFirstChildOfClass("Humanoid")
        local RootPart = Character:WaitForChild("HumanoidRootPart")
        local Vehicles = game.Workspace:FindFirstChild("Vehicles")
        local OldPos = RootPart.CFrame

        if not Humanoid or not Vehicles then return end

        local function GetCar()
            return Vehicles:FindFirstChild(Player.Name.."Car")
        end

        local PCar = GetCar()

        if not PCar then
            RootPart.CFrame = CFrame.new(-2, 5, 2085)
            task.wait(0.5)
            local RemoteEvent = game:GetService("ReplicatedStorage"):FindFirstChild("RE")
            if RemoteEvent and RemoteEvent:FindFirstChild("1Ca1r") then
                RemoteEvent["1Ca1r"]:FireServer("PickingBoat", "MilitaryBoatFree")
            end
            task.wait(1)
            PCar = GetCar()
        end

        if PCar then
            local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
            if Seat and not Humanoid.Sit then
                repeat
                    RootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)
                    task.wait()
                until Humanoid.Sit or not PCar.Parent
            end
        end

        wait(0.2)

        local UserInputService = game:GetService("UserInputService")
        local RunService = game:GetService("RunService")
        local Mouse = Players.LocalPlayer:GetMouse()
        local Folder = Instance.new("Folder", game:GetService("Workspace"))
        local Part = Instance.new("Part", Folder)
        local Attachment1 = Instance.new("Attachment", Part)
        Part.Anchored = true
        Part.CanCollide = false
        Part.Transparency = 1

        local NetworkAccess = coroutine.create(function()
            settings().Physics.AllowSleep = false
            while RunService.RenderStepped:Wait() do
                for _, player in next, Players:GetPlayers() do
                    if player ~= Players.LocalPlayer then
                        player.MaximumSimulationRadius = 0
                        sethiddenproperty(player, "SimulationRadius", 2)
                    end
                end
                Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge)
                setsimulationradius(math.huge)
            end
        end)
        coroutine.resume(NetworkAccess)

        local function ForceVehicle(v)
            if v:IsA("Model") and v:FindFirstChildOfClass("VehicleSeat") then
                Mouse.TargetFilter = v
                for _, x in next, v:GetDescendants() do
                    if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                        x:Destroy()
                    end
                end
                if v:FindFirstChild("Attachment") then
                    v:FindFirstChild("Attachment"):Destroy()
                end
                if v:FindFirstChild("AlignPosition") then
                    v:FindFirstChild("AlignPosition"):Destroy()
                end
                if v:FindFirstChild("Torque") then
                    v:FindFirstChild("Torque"):Destroy()
                end
                for _, part in next, v:GetDescendants() do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                        local Torque = Instance.new("Torque", part)
                        Torque.Torque = Vector3.new(1000 * 102, 100000 * 102, 10000 * 12)
                        local AlignPosition = Instance.new("AlignPosition", part)
                        local Attachment2 = Instance.new("Attachment", part)
                        Torque.Attachment0 = Attachment2
                        AlignPosition.MaxForce = 99999
                        AlignPosition.MaxVelocity = math.huge
                        AlignPosition.Responsiveness = 200
                        AlignPosition.Attachment0 = Attachment2
                        AlignPosition.Attachment1 = Attachment1
                    end
                end
            end
        end

        for _, v in next, game:GetService("Workspace"):GetDescendants() do
            ForceVehicle(v)
        end

        game:GetService("Workspace").DescendantAdded:Connect(function(v)
            ForceVehicle(v)
        end)

        spawn(function()
            while true do
                if selectedPlayerName then
                    local player = Players:FindFirstChild(selectedPlayerName)
                    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        local rootPart = player.Character.HumanoidRootPart
                        Attachment1.WorldCFrame = rootPart.CFrame
                    end
                end
                RunService.RenderStepped:Wait()
            end
        end)

        wait(4)

        local targetPosition = Vector3.new(101, -446, -180)
        player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)

        -- Código adicionado para efeito do kill()
        local function applyKillEffect(targetPlayer)
            if targetPlayer and targetPlayer.Character then
                local TargetRP = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                local TargetH = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
                local Angles = 45

                if TargetRP and TargetH then
                    kill(TargetRP, CFrame.new(0, 3, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.05, CFrame.Angles(math.rad(Angles), 0, 0))
                    kill(TargetRP, CFrame.new(0, -1.5, 2) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.05, CFrame.Angles(math.rad(Angles), 0, 0))
                    kill(TargetRP, CFrame.new(2, 1.5, 2.25)  + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10, CFrame.Angles(math.rad(50), 0, 0))
                    kill(TargetRP, CFrame.new(-2.25, -1.5, 2.25) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10, CFrame.Angles(math.rad(30), 0, 0))
                    kill(TargetRP, CFrame.new(0, 1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.05, CFrame.Angles(math.rad(Angles), 0, 0))
                    kill(TargetRP, CFrame.new(0, -1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.05, CFrame.Angles(math.rad(Angles), 0, 0))
                end
            end
        end

        local function onPlayerSeated(player)
            if player and player.Character then
                local humanoid = player.Character:FindFirstChild("Humanoid")
                if humanoid and humanoid.SeatPart then
                    if humanoid.SeatPart.Parent:IsA("VehicleSeat") then
                        player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                        applyKillEffect(player)
                    end
                end
            end
        end

        game:GetService("Players").PlayerAdded:Connect(function(player)
            if player.Name == selectedPlayerName then
                player.CharacterAdded:Connect(function(character)
                    local humanoid = character:WaitForChild("Humanoid")
                    humanoid.Seated:Connect(function(_, seat)
                        if seat then
                            onPlayerSeated(player)
                        end
                    end)
                end)
            end
        end)
    end    
})


local Section = Tab:AddSection({
	Name = "Car Variables "
})


local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

local playerNames = {}
for _, player in pairs(Players:GetPlayers()) do
    table.insert(playerNames, player.Name)
end

local selectedPlayerName = nil

Tab:AddDropdown({
    Name = "Target Player",
    Options = playerNames,
    Callback = function(selected)
        selectedPlayerName = selected
    end
})

local function executeScript()
    local UserInputService = game:GetService("UserInputService")
    local Mouse = game.Players.LocalPlayer:GetMouse()
    local Folder = Instance.new("Folder", Workspace)
    local Part = Instance.new("Part", Folder)
    local Attachment1 = Instance.new("Attachment", Part)
    Part.Anchored = true
    Part.CanCollide = false
    Part.Transparency = 1

    local NetworkAccess = coroutine.create(function()
        settings().Physics.AllowSleep = false
        while RunService.RenderStepped:Wait() do
            for _, player in next, Players:GetPlayers() do
                if player ~= Players.LocalPlayer then
                    player.MaximumSimulationRadius = 0
                    sethiddenproperty(player, "SimulationRadius", 0)
                end
            end
            Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge)
            setsimulationradius(math.huge)
        end
    end)
    coroutine.resume(NetworkAccess)

    local function ForceVehicle(v)
        if v:IsA("Model") and v:FindFirstChildOfClass("VehicleSeat") then
            Mouse.TargetFilter = v
            for _, x in next, v:GetDescendants() do
                if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                    x:Destroy()
                end
            end
            if v:FindFirstChild("Attachment") then
                v:FindFirstChild("Attachment"):Destroy()
            end
            if v:FindFirstChild("AlignPosition") then
                v:FindFirstChild("AlignPosition"):Destroy()
            end
            if v:FindFirstChild("Torque") then
                v:FindFirstChild("Torque"):Destroy()
            end
            for _, part in next, v:GetDescendants() do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                    local Torque = Instance.new("Torque", part)
                    Torque.Torque = Vector3.new(100000 * 12, 100000 * 12, 100000 * 12)
                    local AlignPosition = Instance.new("AlignPosition", part)
                    local Attachment2 = Instance.new("Attachment", part)
                    Torque.Attachment0 = Attachment2
                    AlignPosition.MaxForce = 999999
                    AlignPosition.MaxVelocity = math.huge
                    AlignPosition.Responsiveness = 200
                    AlignPosition.Attachment0 = Attachment2
                    AlignPosition.Attachment1 = Attachment1
                end
            end
        end
    end

    for _, v in next, Workspace:GetDescendants() do
        ForceVehicle(v)
    end

    Workspace.DescendantAdded:Connect(function(v)
        ForceVehicle(v)
    end)

    spawn(function()
        while true do
            local voidPosition = Vector3.new(223809667072, 223809667072, -223809667072)
            Attachment1.WorldCFrame = CFrame.new(voidPosition)
            RunService.RenderStepped:Wait()
        end
    end)
end

local function monitorSeats()
    for _, seat in pairs(Workspace:GetDescendants()) do
        if seat:IsA("Seat") or seat:IsA("VehicleSeat") then
            seat:GetPropertyChangedSignal("Occupant"):Connect(function()
                if seat.Occupant then
                    local occupantPlayer = Players:GetPlayerFromCharacter(seat.Occupant.Parent)
                    if occupantPlayer and occupantPlayer.Name == selectedPlayerName then
                        executeScript()
                    end
                end
            end)
        end
    end

    Workspace.DescendantAdded:Connect(function(descendant)
        if descendant:IsA("Seat") or descendant:IsA("VehicleSeat") then
            descendant:GetPropertyChangedSignal("Occupant"):Connect(function()
                if descendant.Occupant then
                    local occupantPlayer = Players:GetPlayerFromCharacter(descendant.Occupant.Parent)
                    if occupantPlayer and occupantPlayer.Name == selectedPlayerName then
                        executeScript()
                    end
                end
            end)
        end
    end)
end

monitorSeats()
Tab:AddButton({
    Name = "Car Fling",
    Callback = function()
        local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:FindFirstChildOfClass("Humanoid")
local RootPart = Character:WaitForChild("HumanoidRootPart")
local Vehicles = game.Workspace:FindFirstChild("Vehicles")
local OldPos = RootPart.CFrame

if not Humanoid or not Vehicles then return end

local function GetCar()
    return Vehicles:FindFirstChild(Player.Name.."Car")
end

local PCar = GetCar()

if not PCar then
    RootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)
    task.wait(0.5)
    local RemoteEvent = game:GetService("ReplicatedStorage"):FindFirstChild("RE")
    if RemoteEvent and RemoteEvent:FindFirstChild("1Ca1r") then
        RemoteEvent["1Ca1r"]:FireServer("PickingCar", "SchoolBus")
    end
    task.wait(1)
    PCar = GetCar()
end

if PCar then
    local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
    if Seat and not Humanoid.Sit then
        repeat
            RootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)
            task.wait()
        until Humanoid.Sit or not PCar.Parent
    end
end
        wait(0.2)
        
        local UserInputService = game:GetService("UserInputService")
        local RunService = game:GetService("RunService")
        local Mouse = Players.LocalPlayer:GetMouse()
        local Folder = Instance.new("Folder", game:GetService("Workspace"))
        local Part = Instance.new("Part", Folder)
        local Attachment1 = Instance.new("Attachment", Part)
        Part.Anchored = true
        Part.CanCollide = false
        Part.Transparency = 1

        local NetworkAccess = coroutine.create(function()
            settings().Physics.AllowSleep = false
            while RunService.RenderStepped:Wait() do
                for _, player in next, Players:GetPlayers() do
                    if player ~= Players.LocalPlayer then
                        player.MaximumSimulationRadius = 0
                        sethiddenproperty(player, "SimulationRadius", 2)
                    end
                end
                Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge)
                setsimulationradius(math.huge)
            end
        end)
        coroutine.resume(NetworkAccess)

        local function ForceVehicle(v)
            if v:IsA("Model") and v:FindFirstChildOfClass("VehicleSeat") then
                Mouse.TargetFilter = v
                for _, x in next, v:GetDescendants() do
                    if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                        x:Destroy()
                    end
                end
                if v:FindFirstChild("Attachment") then
                    v:FindFirstChild("Attachment"):Destroy()
                end
                if v:FindFirstChild("AlignPosition") then
                    v:FindFirstChild("AlignPosition"):Destroy()
                end
                if v:FindFirstChild("Torque") then
                    v:FindFirstChild("Torque"):Destroy()
                end
                for _, part in next, v:GetDescendants() do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                        local Torque = Instance.new("Torque", part)
                        Torque.Torque = Vector3.new(1000 * 102, 100000 * 102, 10000 * 12)
                        local AlignPosition = Instance.new("AlignPosition", part)
                        local Attachment2 = Instance.new("Attachment", part)
                        Torque.Attachment0 = Attachment2
                        AlignPosition.MaxForce = 99999
                        AlignPosition.MaxVelocity = math.huge
                        AlignPosition.Responsiveness = 200
                        AlignPosition.Attachment0 = Attachment2
                        AlignPosition.Attachment1 = Attachment1
                    end
                end
            end
        end

        for _, v in next, game:GetService("Workspace"):GetDescendants() do
            ForceVehicle(v)
        end

        game:GetService("Workspace").DescendantAdded:Connect(function(v)
            ForceVehicle(v)
        end)

        spawn(function()
            while true do
                if selectedPlayerName then
                    local player = Players:FindFirstChild(selectedPlayerName)
                    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        local rootPart = player.Character.HumanoidRootPart
                        Attachment1.WorldCFrame = rootPart.CFrame
                    end
                end
                RunService.RenderStepped:Wait()
            end
        end)

        wait(4)
        
        local targetPosition = Vector3.new(223809667072, 223809667072, -223809667072)
        player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)

        local function onPlayerSeated(player)
            if player and player.Character then
                local humanoid = player.Character:FindFirstChild("Humanoid")
                if humanoid and humanoid.SeatPart then
                    if humanoid.SeatPart.Parent:IsA("VehicleSeat") then
                        player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    end
                end
            end
        end

        game:GetService("Players").PlayerAdded:Connect(function(player)
            if player.Name == selectedPlayerName then
                player.CharacterAdded:Connect(function(character)
                    local humanoid = character:WaitForChild("Humanoid")
                    humanoid.Seated:Connect(function(_, seat)
                        if seat then
                            onPlayerSeated(player)
                        end
                    end)
                end)
            end
        end)
    end    
})


local function executeScript()
    local UserInputService = game:GetService("UserInputService")
    local Mouse = game.Players.LocalPlayer:GetMouse()
    local Folder = Instance.new("Folder", Workspace)
    local Part = Instance.new("Part", Folder)
    local Attachment1 = Instance.new("Attachment", Part)
    Part.Anchored = true
    Part.CanCollide = false
    Part.Transparency = 1

    local NetworkAccess = coroutine.create(function()
        settings().Physics.AllowSleep = false
        while RunService.RenderStepped:Wait() do
            for _, player in next, Players:GetPlayers() do
                if player ~= Players.LocalPlayer then
                    player.MaximumSimulationRadius = 0
                    sethiddenproperty(player, "SimulationRadius", 0)
                end
            end
            Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge)
            setsimulationradius(math.huge)
        end
    end)
    coroutine.resume(NetworkAccess)

    local function ForceVehicle(v)
        if v:IsA("Model") and v:FindFirstChildOfClass("VehicleSeat") then
            Mouse.TargetFilter = v
            for _, x in next, v:GetDescendants() do
                if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                    x:Destroy()
                end
            end
            if v:FindFirstChild("Attachment") then
                v:FindFirstChild("Attachment"):Destroy()
            end
            if v:FindFirstChild("AlignPosition") then
                v:FindFirstChild("AlignPosition"):Destroy()
            end
            if v:FindFirstChild("Torque") then
                v:FindFirstChild("Torque"):Destroy()
            end
            for _, part in next, v:GetDescendants() do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                    local Torque = Instance.new("Torque", part)
                    Torque.Torque = Vector3.new(100000 * 12, 100000 * 12, 100000 * 12)
                    local AlignPosition = Instance.new("AlignPosition", part)
                    local Attachment2 = Instance.new("Attachment", part)
                    Torque.Attachment0 = Attachment2
                    AlignPosition.MaxForce = 999999
                    AlignPosition.MaxVelocity = math.huge
                    AlignPosition.Responsiveness = 200
                    AlignPosition.Attachment0 = Attachment2
                    AlignPosition.Attachment1 = Attachment1
                end
            end
        end
    end

    for _, v in next, Workspace:GetDescendants() do
        ForceVehicle(v)
    end
    Workspace.DescendantAdded:Connect(function(v)
        ForceVehicle(v)
    end)
    spawn(function()
        while true do
            local voidPosition = Vector3.new(0, -470, 0)
            Attachment1.WorldCFrame = CFrame.new(voidPosition)
            RunService.RenderStepped:Wait()
        end
    end)
end
local function monitorSeats()
    for _, seat in pairs(Workspace:GetDescendants()) do
        if seat:IsA("Seat") or seat:IsA("VehicleSeat") then
            seat:GetPropertyChangedSignal("Occupant"):Connect(function()
                if seat.Occupant then
                    local occupantPlayer = Players:GetPlayerFromCharacter(seat.Occupant.Parent)
                    if occupantPlayer and occupantPlayer.Name == selectedPlayerName then
                        executeScript()
                    end
                end
            end)
        end
    end
    Workspace.DescendantAdded:Connect(function(descendant)
        if descendant:IsA("Seat") or descendant:IsA("VehicleSeat") then           descendant:GetPropertyChangedSignal("Occupant"):Connect(function()
                if descendant.Occupant then
                    local occupantPlayer = Players:GetPlayerFromCharacter(descendant.Occupant.Parent)
                    if occupantPlayer and occupantPlayer.Name == selectedPlayerName then
                        executeScript()
                    end
                end
            end)
        end
    end)
end
monitorSeats()
Tab:AddButton({
    Name = "Car kill",
    Callback = function()
        local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:FindFirstChildOfClass("Humanoid")
local RootPart = Character:WaitForChild("HumanoidRootPart")
local Vehicles = game.Workspace:FindFirstChild("Vehicles")
local OldPos = RootPart.CFrame

if not Humanoid or not Vehicles then return end

local function GetCar()
    return Vehicles:FindFirstChild(Player.Name.."Car")
end

local PCar = GetCar()

if not PCar then
    RootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)
    task.wait(0.5)
    local RemoteEvent = game:GetService("ReplicatedStorage"):FindFirstChild("RE")
    if RemoteEvent and RemoteEvent:FindFirstChild("1Ca1r") then
        RemoteEvent["1Ca1r"]:FireServer("PickingCar", "SchoolBus")
    end
    task.wait(1)
    PCar = GetCar()
end
if PCar then
    local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
    if Seat and not Humanoid.Sit then
        repeat
            RootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)
            task.wait()
        until Humanoid.Sit or not PCar.Parent
    end
end
        wait(0.2)
        
        local UserInputService = game:GetService("UserInputService")
        local RunService = game:GetService("RunService")
        local Mouse = Players.LocalPlayer:GetMouse()
        local Folder = Instance.new("Folder", game:GetService("Workspace"))
        local Part = Instance.new("Part", Folder)
        local Attachment1 = Instance.new("Attachment", Part)
        Part.Anchored = true
        Part.CanCollide = false
        Part.Transparency = 1

        local NetworkAccess = coroutine.create(function()
            settings().Physics.AllowSleep = false
            while RunService.RenderStepped:Wait() do
                for _, player in next, Players:GetPlayers() do
                    if player ~= Players.LocalPlayer then
                        player.MaximumSimulationRadius = 0
                        sethiddenproperty(player, "SimulationRadius", 2)
                    end
                end
                Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge, math.huge)
                setsimulationradius(math.huge)
            end
        end)
        coroutine.resume(NetworkAccess)
        local function ForceVehicle(v)
            if v:IsA("Model") and v:FindFirstChildOfClass("VehicleSeat") then
                Mouse.TargetFilter = v
                for _, x in next, v:GetDescendants() do
                    if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                        x:Destroy()
                    end
                end
                if v:FindFirstChild("Attachment") then
                    v:FindFirstChild("Attachment"):Destroy()
                end
                if v:FindFirstChild("AlignPosition") then
                    v:FindFirstChild("AlignPosition"):Destroy()
                end
                if v:FindFirstChild("Torque") then
                    v:FindFirstChild("Torque"):Destroy()
                end
                for _, part in next, v:GetDescendants() do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                        local Torque = Instance.new("Torque", part)
                        Torque.Torque = Vector3.new(1000 * 102, 100000 * 102, 10000 * 12)
                        local AlignPosition = Instance.new("AlignPosition", part)
                        local Attachment2 = Instance.new("Attachment", part)
                        Torque.Attachment0 = Attachment2
                        AlignPosition.MaxForce = 99999
                        AlignPosition.MaxVelocity = math.huge
                        AlignPosition.Responsiveness = 200
                        AlignPosition.Attachment0 = Attachment2
                        AlignPosition.Attachment1 = Attachment1
                    end
                end
            end
        end

        for _, v in next, game:GetService("Workspace"):GetDescendants() do
            ForceVehicle(v)
        end    game:GetService("Workspace").DescendantAdded:Connect(function(v)
            ForceVehicle(v)
        end)
        spawn(function()
            while true do
                if selectedPlayerName then
                    local player = Players:FindFirstChild(selectedPlayerName)
                    if player and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        local rootPart = player.Character.HumanoidRootPart
                        Attachment1.WorldCFrame = rootPart.CFrame
                    end
                end
                RunService.RenderStepped:Wait()
            end
        end)

        wait(4)
        
        local targetPosition = Vector3.new(101, -446, -180)
        player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)

        local function onPlayerSeated(player)
            if player and player.Character then
                local humanoid = player.Character:FindFirstChild("Humanoid")
                if humanoid and humanoid.SeatPart then
                    if humanoid.SeatPart.Parent:IsA("VehicleSeat") then
                        player.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition)
                    end
                end
            end
        end

        game:GetService("Players").PlayerAdded:Connect(function(player)
            if player.Name == selectedPlayerName then
                player.CharacterAdded:Connect(function(character)
                    local humanoid = character:WaitForChild("Humanoid")
                    humanoid.Seated:Connect(function(_, seat)
                        if seat then
                            onPlayerSeated(player)
                        end
                    end)
                end)
            end
        end)
    end    
})


local Section = Tab:AddSection({
	Name = "Ban House Kill"
})


local selectedPlayer

local function ShowPlayerList()
    local playerNames = {}
    for _, player in pairs(game.Players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    
    Tab:AddDropdown({
        Name = "Target",
        Default = playerNames[1],
        Options = playerNames,
        Callback = function(Value)
            selectedPlayer = game.Players:FindFirstChild(Value)
            print("Jogador selecionado: " .. Value)
        end
    })
end

ShowPlayerList()


Tab:AddButton({
    Name = "House Ban",
    Callback = function()
        local Player = game.Players.LocalPlayer
    local Backpack = Player.Backpack
    local Character = Player.Character
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Character:FindFirstChild("HumanoidRootPart")
    local Houses = game.Workspace:FindFirstChild("001_Lots")
    local OldPos = RootPart.CFrame
    local Angles = 0
    local Vehicles = Workspace.Vehicles
    local Pos

   
    function Check()
        if Player and Character and Humanoid and RootPart and Vehicles then
            return true
        else
            return false
        end
    end

  
    if selectedPlayer and selectedPlayer.Character then
        if Check() then
            local House = Houses:FindFirstChild(Player.Name.."House")
            if not House then
                local EHouse
                for _,Lot in pairs(Houses:GetChildren()) do
                    if Lot.Name == "For Sale" then
                        for _,num in pairs(Lot:GetDescendants()) do
                            if num:IsA("NumberValue") and num.Name == "Number" and num.Value < 25 and num.Value > 10 then
                                EHouse = Lot
                                break
                            end
                        end
                    end
                end

                local BuyDetector = EHouse:FindFirstChild("BuyHouse")
                Pos = BuyDetector.Position
                if BuyDetector and BuyDetector:IsA("BasePart") then
                    RootPart.CFrame = BuyDetector.CFrame + Vector3.new(0,-6,0)
                    task.wait(.5)
                    local ClickDetector = BuyDetector:FindFirstChild("ClickDetector")
                    if ClickDetector then
                        fireclickdetector(ClickDetector)
                    end
                end
            end

            task.wait(0.5)
            local PreHouse = Houses:FindFirstChild(Player.Name .. "House")
            if PreHouse then
                task.wait(0.5)
                local Number
                for i,x in pairs(PreHouse:GetDescendants()) do
                    if x.Name == "Number" and x:IsA("NumberValue") then
                        Number = x
                    end
                end
                task.wait(0.5)
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gettin1gHous1e"):FireServer("PickingCustomHouse","049_House", Number.Value)
            end

            task.wait(0.5)
            local PCar = Vehicles:FindFirstChild(Player.Name.."Car")
            if not PCar then
                if Check() then
                    RootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)
                    task.wait(0.5)
                    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer("PickingCar","SchoolBus")
                    task.wait(0.5)
                    local PCar = Vehicles:FindFirstChild(Player.Name.."Car")
                    task.wait(0.5)
                    local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
                    if Seat then
                        repeat task.wait()
                            RootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)
                        until Humanoid.Sit
                    end
                end
            end

            task.wait(0.5)
            local PCar = Vehicles:FindFirstChild(Player.Name.."Car")
            if PCar then
                if not Humanoid.Sit then
                    local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
                    if Seat then
                        repeat task.wait()
                            RootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)
                        until Humanoid.Sit
                    end
                end

                local Target = selectedPlayer
                local TargetC = Target.Character
                local TargetH = TargetC:FindFirstChildOfClass("Humanoid")
                local TargetRP = TargetC:FindFirstChild("HumanoidRootPart")
                if TargetC and TargetH and TargetRP then
                    if not TargetH.Sit then
                        while not TargetH.Sit do
                            task.wait()
                            local Fling = function(alvo,pos,angulo)
                                PCar:SetPrimaryPartCFrame(CFrame.new(alvo.Position) * pos * angulo)
                            end
                            Angles = Angles + 100
                            Fling(TargetRP,CFrame.new(0, 1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10,CFrame.Angles(math.rad(Angles), 0, 0))
                            Fling(TargetRP,CFrame.new(0, -1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10,CFrame.Angles(math.rad(Angles), 0, 0))
                            Fling(TargetRP,CFrame.new(2.25, 1.5, -2.25)  + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10,CFrame.Angles(math.rad(Angles), 0, 0))
                            Fling(TargetRP,CFrame.new(-2.25, -1.5, 2.25) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10,CFrame.Angles(math.rad(Angles), 0, 0))
                            Fling(TargetRP,CFrame.new(0, 1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10,CFrame.Angles(math.rad(Angles), 0, 0))
                            Fling(TargetRP,CFrame.new(0, -1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10,CFrame.Angles(math.rad(Angles), 0, 0))
                        end

                        task.wait(0.2)
                        local House = Houses:FindFirstChild(Player.Name.."House")
                        PCar:SetPrimaryPartCFrame(CFrame.new(House.HouseSpawnPosition.Position))
                        task.wait(0.2)
                        local pedro = Region3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(30,30,30),game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(30,30,30))

                        local a = workspace:FindPartsInRegion3(pedro,game.Players.LocalPlayer.Character.HumanoidRootPart,math.huge)

                        for i,v in pairs(a) do
                            if v.Name == "HumanoidRootPart" then
                                local b = game:GetService("Players"):FindFirstChild(v.Parent.Name)
                                local args = {
                                    [1] = "BanPlayerFromHouse",
                                    [2] = b,
                                    [3] = v.Parent
                                }

                                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))

                               
                                local args = {
                                    [1] = "DeleteAllVehicles"
                                }
                                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer(unpack(args))
                            end
                        end
                    end
                end
            end
        end
    end
    end
})


local Section = Tab:AddSection({
	Name = "View/Goto"
})


-- Lista de seleção de jogadores para "Goto"
local gotoPlayerList = {}
local selectedGotoPlayer = nil
local avisoToggle = false

local function updatePlayerList()
gotoPlayerList = {}
for _, player in ipairs(game.Players:GetPlayers()) do
table.insert(gotoPlayerList, player.Name)
end
end

updatePlayerList()


Tab:AddDropdown({
Name = "Lista de Jogadores",
Description = "Selecione o jogador alvo para o Goto (couch)",
Options = gotoPlayerList,
Callback = function(playerName)
selectedGotoPlayer = playerName
end
})

-- Adicionar botão para resetar a lista de jogadores
Tab:AddButton({
Name = "Reset Player List",
Callback = function()
updatePlayerList()
playerDropdown:Refresh(gotoPlayerList, true)
end
})

-- Adicionar toggle para view
Tab:AddToggle({
Name = "View",
Default = false,
Callback = function(state)
viewToggle = state
if viewToggle and selectedGotoPlayer then
local player = game.Players:FindFirstChild(selectedGotoPlayer)
if player then
game.Workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
else
print("Jogador não encontrado.")
end
else
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
end
end
})

-- Adicionar toggle para follow
Tab:AddToggle({
Name = "Follow",
Default = false,
Callback = function(state)
followToggle = state
while followToggle do
if selectedGotoPlayer then
local player = game.Players:FindFirstChild(selectedGotoPlayer)
if player then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
else
print("Jogador não encontrado.")
end
end
wait(0.1)
end
end
})

-- Adicionar o botão "Goto" à seção "View/Goto"
Tab:AddButton({
Name = "Goto",
Description = "This player is not on the list",
Callback = function()
if selectedGotoPlayer then
local player = game.Players:FindFirstChild(selectedGotoPlayer)
if player then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
else
print("Jogador não encontrado.")
end
else
print("Nenhum jogador selecionado para o Goto.")
end
end
})


local Section = Tab:AddSection({
	Name = "Bang Player"
})


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local speaker = Players.LocalPlayer

-- Função para verificar se o jogador usa R15 ou R6
local function r15(plr)
    return plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Humanoid").RigType == Enum.HumanoidRigType.R15
end

-- Função para pegar o torso do personagem
local function getTorso(char)
    return char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
end

-- Função para pegar a raiz do personagem
local function getRoot(char)
    return char and char:FindFirstChild("HumanoidRootPart")
end

-- Função para pegar jogadores por nome
local function getPlayer(name, plr)
    local found = {}
    name = name:lower()
    for _, v in pairs(Players:GetPlayers()) do
        if v.Name:lower():sub(1, #name) == name or v.DisplayName:lower():sub(1, #name) == name then
            table.insert(found, v)
        end
    end
    return found
end


Tab:AddTextbox({
    Name = "Nome do Jogador",
    Default = "",
    TextDisappear = true,
    Callback = function(value)
        targetPlayer = value
    end
})

Tab:AddSlider({
    Name = "Velocidade",
    Min = 1,
    Max = 10,
    Default = 3,
    Color = Color3.fromRGB(255, 50, 50),
    Increment = 0.5,
    ValueName = "Speed",
    Callback = function(value)
        bangSpeed = value
    end
})

Tab:AddButton({
    Name = "Executar Bang",
    Callback = function()
        local humanoid = speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid")
        if not humanoid then return end

        local bangAnim = Instance.new("Animation")
        bangAnim.AnimationId = r15(speaker) and "rbxassetid://5918726674" or "rbxassetid://148840371"
        local bang = humanoid:LoadAnimation(bangAnim)
        bang:Play(0.1, 1, 1)
        bang:AdjustSpeed(bangSpeed or 3)

        local bangDied
        bangDied = humanoid.Died:Connect(function()
            bang:Stop()
            bangAnim:Destroy()
            bangDied:Disconnect()
            if bangLoop then bangLoop:Disconnect() end
        end)

        if targetPlayer then
            local players = getPlayer(targetPlayer, speaker)
            for _, v in pairs(players) do
                local bangPlayer = v
                local bangOffset = CFrame.new(0, 0, 1.1)
                bangLoop = RunService.Stepped:Connect(function()
                    pcall(function()
                        local otherRoot = getTorso(bangPlayer.Character)
                        if otherRoot then
                            getRoot(speaker.Character).CFrame = otherRoot.CFrame * bangOffset
                        end
                    end)
                end)
            end
        end
    end
})


Tab:AddParagraph("Hey!","Ser você quiser Para o bang somente dê um Reset")


local Section = Tab:AddSection({
	Name = "Spin Player"
})


-- Variável para controlar se o Spin Fling V2 está ativado
local spinFlingV2Enabled = false

-- Função para girar o personagem em torno de um eixo específico
local function rotateCharacter(axis, speed)
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local hrp = character.HumanoidRootPart
        if axis == "X" then
            hrp.CFrame = hrp.CFrame * CFrame.Angles(speed, 99999, 99999)
        elseif axis == "Y" then
            hrp.CFrame = hrp.CFrame * CFrame.Angles(99999, speed, 99999)
        elseif axis == "Z" then
            hrp.CFrame = hrp.CFrame * CFrame.Angles(99999, 99999, speed)
        end
    end
end

-- Função para iniciar ou parar o Spin Fling V2 baseado no toggle
local function toggleSpinFlingV2(enabled)
    if enabled then
        -- Inicia o loop para girar rapidamente o personagem em todos os ângulos
        spinLoop = game:GetService("RunService").Stepped:Connect(function()
            rotateCharacter("X", 9999999999)
            rotateCharacter("Y", 9999999999)
            rotateCharacter("Z", 9999999999)
        end)
        print("Spin Fling V2 ativado.")
    else
        -- Para o loop do Spin Fling V2
        if spinLoop then
            spinLoop:Disconnect()
            spinLoop = nil
        end
        print("Spin Fling V2 desativado.")
    end
end

-- Adicionar o Toggle Button para Spin Fling V2
Tab:AddToggle({
    Name = "Spin Fling V1",
    Description = "Ativa ou desativa o giro intenso em todos os ângulos do personagem",
    Default = false,
    Callback = function(enabled)
        toggleSpinFlingV2(enabled)
    end
})


-- Variável para controlar se o Spin Fling V2 está ativado
local spinFlingV2Enabled = false

-- Função para girar o personagem em torno de um eixo específico
local function rotateCharacter(axis, speed)
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local hrp = character.HumanoidRootPart
        if axis == "X" then
            hrp.CFrame = hrp.CFrame * CFrame.Angles(speed, 999999, 999999)
        elseif axis == "Y" then
            hrp.CFrame = hrp.CFrame * CFrame.Angles(999999, speed, 999999)
        elseif axis == "Z" then
            hrp.CFrame = hrp.CFrame * CFrame.Angles(999999, 999999, speed)
        end
    end
end

-- Função para iniciar ou parar o Spin Fling V2 baseado no toggle
local function toggleSpinFlingV2(enabled)
    if enabled then
        -- Inicia o loop para girar rapidamente o personagem em todos os ângulos
        spinLoop = game:GetService("RunService").Stepped:Connect(function()
            rotateCharacter("X", 999999999999)
            rotateCharacter("Y", 999999999999)
            rotateCharacter("Z", 999999999999)
        end)
        print("Spin Fling V2 ativado.")
    else
        -- Para o loop do Spin Fling V2
        if spinLoop then
            spinLoop:Disconnect()
            spinLoop = nil
        end
        print("Spin Fling V2 desativado.")
    end
end

-- Adicionar o Toggle Button para Spin Fling V2
Tab:AddToggle({
    Name = "Spin Fling V2",
    Description = "Ativa ou desativa o giro intenso em todos os ângulos do personagem",
    Default = false,
    Callback = function(enabled)
        toggleSpinFlingV2(enabled)
    end
})


-- Variável para controlar se o Spin Fling V2 está ativado
local spinFlingV2Enabled = false

-- Função para girar o personagem em torno de um eixo específico
local function rotateCharacter(axis, speed)
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local hrp = character.HumanoidRootPart
        if axis == "X" then
            hrp.CFrame = hrp.CFrame * CFrame.Angles(speed, 9999899, 9998999)
        elseif axis == "Y" then
            hrp.CFrame = hrp.CFrame * CFrame.Angles(9999899, speed, 9999999)
        elseif axis == "Z" then
            hrp.CFrame = hrp.CFrame * CFrame.Angles(9998999, 9999899, speed)
        end
    end
end

-- Função para iniciar ou parar o Spin Fling V2 baseado no toggle
local function toggleSpinFlingV2(enabled)
    if enabled then
        -- Inicia o loop para girar rapidamente o personagem em todos os ângulos
        spinLoop = game:GetService("RunService").Stepped:Connect(function()
            rotateCharacter("X", 9999999999999)
            rotateCharacter("Y", 9999999999999)
            rotateCharacter("Z", 9999999999999)
        end)
        print("Spin Fling V2 ativado.")
    else
        -- Para o loop do Spin Fling V2
        if spinLoop then
            spinLoop:Disconnect()
            spinLoop = nil
        end
        print("Spin Fling V2 desativado.")
    end
end

-- Adicionar o Toggle Button para Spin Fling V2
Tab:AddToggle({
    Name = "Spin Fling V3[Manutenção]",
    Description = "Ativa ou desativa o giro intenso em todos os ângulos do personagem",
    Default = false,
    Callback = function(enabled)
        toggleSpinFlingV2(enabled)
    end
})


local Section = Tab:AddSection({
	Name = "Players All"
})


Tab:AddButton({
	Name = "Fling All Couch[Rework]",
	Callback = function()
      	local function HandleTool()
    local args = {
        [1] = "PlayerWantsToDeleteTool",
        [2] = "Couch"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s"):FireServer(unpack(args))
    wait(0.5)
    
    local args = {
        [1] = "PickingTools",
        [2] = "Couch"
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
    
    local function equiptool()
        for i, v in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") and v.Name == "Couch" then
                v.Parent = game.Players.LocalPlayer.Character
            end
        end
    end
    
    equiptool()
    wait(0.5)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.F, false, game)
end

local player = game.Players.LocalPlayer
 local mouse = player:GetMouse()
 local Targets = {"all"}
 
 local Players = game:GetService("Players")
 local Player = Players.LocalPlayer
 
 local AllBool = false
 
 local GetPlayer = function(Name)
	Name = Name:lower()
	if Name == "all" or Name == "others" then
		AllBool = true
		return
	elseif Name == "random" then
		local GetPlayers = Players:GetPlayers()
		if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
		return GetPlayers[math.random(#GetPlayers)]
	elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
		for _,x in next, Players:GetPlayers() do
			if x ~= Player then
				if x.Name:lower():match("^"..Name) then
					return x;
				elseif x.DisplayName:lower():match("^"..Name) then
					return x;
				end
			end
		end
	else
		return
	end
 end
 
 local Message = function(_Title, _Text, Time)
	print(_Title)
	print(_Text)
	print(Time)
end
 
 local SkidFling = function(TargetPlayer)
    HandleTool()
wait(0.5)
	local Character = Player.Character
	local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
	local RootPart = Humanoid and Humanoid.RootPart
 
	local TCharacter = TargetPlayer.Character
	local THumanoid
	local TRootPart
	local THead
	local Accessory
	local Handle
 
	if TCharacter:FindFirstChildOfClass("Humanoid") then
		THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
	end
	if THumanoid and THumanoid.RootPart then
		TRootPart = THumanoid.RootPart
	end
	if TCharacter:FindFirstChild("Head") then
		THead = TCharacter.Head
	end
	if TCharacter:FindFirstChildOfClass("Accessory") then
		Accessory = TCharacter:FindFirstChildOfClass("Accessory")
	end
	if Accessoy and Accessory:FindFirstChild("Handle") then
		Handle = Accessory.Handle
	end
 
	if Character and Humanoid and RootPart then
		if RootPart.Velocity.Magnitude < 50 then
			getgenv().OldPos = RootPart.CFrame
		end
		if THumanoid and THumanoid.Sit and not AllBool then
		end
		if THead then
			workspace.CurrentCamera.CameraSubject = THead
		elseif not THead and Handle then
			workspace.CurrentCamera.CameraSubject = Handle
		elseif THumanoid and TRootPart then
			workspace.CurrentCamera.CameraSubject = THumanoid
		end
		if not TCharacter:FindFirstChildWhichIsA("BasePart") then
			return
		end
		
		local FPos = function(BasePart, Pos, Ang)
			RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
			Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
			RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
			RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
		end
		
		local SFBasePart = function(BasePart)
			local TimeToWait = 2
			local Time = tick()
			local Angle = 0
 
			repeat
				if RootPart and THumanoid then
					if BasePart.Velocity.Magnitude < 50 then
						Angle = Angle + 100
 
						FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
						task.wait()
					else
						FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
						task.wait()
						
						FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
						task.wait()
 
						FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
						task.wait()
					end
				else
					break
				end
			until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
		end
		
		workspace.FallenPartsDestroyHeight = 0/0
		
		local BV = Instance.new("BodyVelocity")
		BV.Name = "EpixVel"
		BV.Parent = RootPart
		BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
		BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
		
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
		
		if TRootPart and THead then
			if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
				SFBasePart(THead)
			else
				SFBasePart(TRootPart)
			end
		elseif TRootPart and not THead then
			SFBasePart(TRootPart)
		elseif not TRootPart and THead then
			SFBasePart(THead)
		elseif not TRootPart and not THead and Accessory and Handle then
			SFBasePart(Handle)
		else
		end
		
		BV:Destroy()
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
		workspace.CurrentCamera.CameraSubject = Humanoid
		
		repeat
			RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
			Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
			Humanoid:ChangeState("GettingUp")
			table.foreach(Character:GetChildren(), function(_, x)
				if x:IsA("BasePart") then
					x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
				end
			end)
			task.wait()
		until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
		workspace.FallenPartsDestroyHeight = getgenv().FPDH
	else
	end
 end
 
 getgenv().Welcome = true
 if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end
 
 if AllBool then
	for _,x in next, Players:GetPlayers() do
		SkidFling(x)
	end
 end
 
 for _,x in next, Targets do
	if GetPlayer(x) and GetPlayer(x) ~= Player then
		if GetPlayer(x).UserId ~= 1414978355 then
			local TPlayer = GetPlayer(x)
			if TPlayer then
				SkidFling(TPlayer)
			end
		else
		end
	elseif not GetPlayer(x) and not AllBool then
	end
 end
	print("button pressed")
  	end    
})


-- Variável para controlar o toggle
local teleportToggle = false

-- Função de teletransporte
local function teleportToPlayers()
    local localPlayer = game.Players.LocalPlayer
    local players = game.Players:GetPlayers()
    
    for _, player in pairs(players) do
        if not teleportToggle then break end -- Para se o toggle for desativado
        if player ~= localPlayer then
        --Ficar pequeno antes
        local args = {
[1] = "CharacterSizeDown",
[2] = 5
}
game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack(args))
            -- Teleporta para o jogador
            local character = player.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                local hrp = character.HumanoidRootPart
                localPlayer.Character.HumanoidRootPart.CFrame = hrp.CFrame
                wait(1) -- Aguarda 1 segundo para evitar problemas de sincronia
            end
        end
        -- Teleporta para (-8.657157897949219, -222.3133087158203, -23.58349609375)
        localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8.657157897949219, -222.3133087158203, -23.58349609375)
        wait(1) -- Aguarda antes de passar para o próximo jogador
    end
end

Tab:AddToggle({
    Name = "Kill All",
    Default = false,
    Callback = function(value)
        teleportToggle = value
        if teleportToggle then
            teleportToPlayers()
        end
    end
})

-- Variável para controlar o toggle
local teleportToggle = false

-- Função de teletransporte
local function teleportToSky()


--xaet

local args = {
[1] = "PickingTools",
[2] = "ShoppingCart"
}
game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

--xaetttttt

local args = {
[1] = "PickingTools",
[2] = "Stretcher"
}
game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

--Couch

local args = {
[1] = "PickingTools",
[2] = "Couch"
}
game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

--Equip itens

local function equiparItem(itemName)
    local player = game.Players.LocalPlayer
    local backpack = player:FindFirstChild("Backpack")
    
    if backpack then
        -- Verifica se o item já está no inventário
        local item = backpack:FindFirstChild(itemName)
        if item then
            -- Move o item para a mão do jogador, caso não esteja equipado
            local character = player.Character
            if character and not character:FindFirstChild(itemName) then
                item.Parent = character
                print(itemName .. " equipado!")
            else
                print(itemName .. " já está equipado.")
            end
        else
            print(itemName .. " não está no inventário.")
        end
    else
        print("Backpack não encontrado.")
    end
end

-- Checar e equipar Sniper e FireX
equiparItem("Couch")
equiparItem("ShoppingCart")
equiparItem("Stretcher")

    local localPlayer = game.Players.LocalPlayer
    local players = game.Players:GetPlayers()
    
    for _, player in pairs(players) do
        if not teleportToggle then break end -- Para se o toggle for desativado
        if player ~= localPlayer then
        --Ficar pequeno antes
        local args = {
[1] = "CharacterSizeDown",
[2] = 5
}
game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clothe1s"):FireServer(unpack(args))
            -- Teleporta para o jogador
            local character = player.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                local hrp = character.HumanoidRootPart
                localPlayer.Character.HumanoidRootPart.CFrame = hrp.CFrame
                wait(1) -- Aguarda 1 segundo para evitar problemas de sincronia
            end
        end
        -- Teleporta para (9999999827968, 9999999827968, 9999999827968)
        localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9999999827968, 9999999827968, 9999999827968)
        wait(1) -- Aguarda antes de passar para o próximo jogador
    end
end

Tab:AddToggle({
    Name = "Bug All",
    Default = false,
    Callback = function(value)
        teleportToggle = value
        if teleportToggle then
            teleportToSky()
        end
    end
})

-- Variáveis e serviços
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TeleportToggle = false
local OriginalPosition

-- Função para teletransportar e voltar à posição original
local function TeleportToPlayers()
    while TeleportToggle do
        -- Salva a posição original do jogador
        if not OriginalPosition then
            OriginalPosition = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
        end
        
        for _, player in ipairs(Players:GetPlayers()) do
            -- Ignora o jogador local
            if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                -- Teleporta para o jogador
                LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
                wait(1) -- Espera 1 segundo antes de ir para o próximo jogador
                
                -- Retorna para a posição original
                if OriginalPosition then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = OriginalPosition
                end
                wait(1) -- Espera 1 segundo antes de continuar
            end
        end
        
        -- Reseta a posição original se todos foram visitados
        OriginalPosition = nil
    end
end


Tab:AddToggle({
    Name = "Bring all",
    Default = false,
    Callback = function(Value)
        TeleportToggle = Value
        if TeleportToggle then
            TeleportToPlayers()
        end
    end
})


local Tab = Window:MakeTab({
    Name = "Outros/Trolar",
    Icon = "rbxassetid://10734888000",
    PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Blackhole V2"
})

Tab:AddToggle({
    Name = "Blackhole V2",
    Default = false,
    Callback = function(Value)
        if Value then
            -- Quando a toggle estiver ativada
            loadstring(game:HttpGet("https://github.com/TemplariosScripts1/Blackhole1/raw/refs/heads/main/Blackhole1Obfuscate.txt"))()
        else
            -- Quando a toggle estiver desativada
            loadstring(game:HttpGet("https://github.com/TemplariosScripts1/Blackhole2/raw/refs/heads/main/Blackhole2Obfuscate.txt"))()
        end
    end
})

local Section = Tab:AddSection({
	Name = "Anti Void"
})

-- Variável de controle
local voidImmunityEnabled = false

-- Função para ativar/desativar a imunidade ao void
local function setVoidImmunity(state)
    if state then
        workspace.FallenPartsDestroyHeight = 0/0
    else
        workspace.FallenPartsDestroyHeight = -500 -- Valor padrão do Roblox
    end
end

-- Toggle para o Orion Lib
Tab:AddToggle({
    Name = "Anti Void",
    Default = false,
    Callback = function(State)
        voidImmunityEnabled = State
        setVoidImmunity(voidImmunityEnabled)
    end
})

local Section = Tab:AddSection({
	Name = "Tornado"
})

Tab:AddToggle({
    Name = "Tornado",
    Default = false,
    Callback = function(Value)
        if Value then
            -- Quando a toggle estiver ativada
            loadstring(game:HttpGet("https://github.com/TemplariosScripts1/Tornado/raw/refs/heads/main/TornadoObfuscate.txt"))()
        else
            -- Quando a toggle estiver desativada
            loadstring(game:HttpGet("https://github.com/TemplariosScripts1/Blackhole2/raw/refs/heads/main/Blackhole2Obfuscate.txt"))()
        end
    end
})

local Section = Tab:AddSection({
	Name = "Não Sentar em Carros/Items/Etc"
})

-- Tabela para armazenar o estado original dos assentos
local originalSeatStates = {}
-- Tabela para armazenar as conexões dos eventos
local connections = {}

-- Função que desabilita a habilidade de sentar
local function disableSeating()
    for _, seat in pairs(workspace:GetDescendants()) do
        if seat:IsA("Seat") or seat:IsA("VehicleSeat") then
            originalSeatStates[seat] = seat.Disabled
            seat.Disabled = true
        end
    end

    table.insert(connections, workspace.DescendantAdded:Connect(function(descendant)
        if descendant:IsA("Seat") or descendant:IsA("VehicleSeat") then
            originalSeatStates[descendant] = descendant.Disabled
            descendant.Disabled = true
        end
    end))

    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        table.insert(connections, player.CharacterAdded:Connect(function(character)
            table.insert(connections, character.DescendantAdded:Connect(function(descendant)
                if descendant:IsA("SeatWeld") then
                    descendant:Destroy()
                end
            end))
        end))
    end
end

-- Função que reativa a habilidade de sentar
local function enableSeating()
    for seat, originalState in pairs(originalSeatStates) do
        if seat and seat.Parent then
            seat.Disabled = originalState
        end
    end

    -- Desconecta todos os eventos
    for _, connection in pairs(connections) do
        connection:Disconnect()
    end
    connections = {}

    -- Certifica-se de que todos os assentos estejam habilitados
    for _, seat in pairs(workspace:GetDescendants()) do
        if seat:IsA("Seat") or seat:IsA("VehicleSeat") then
            seat.Disabled = false
        end
    end

    -- Remove qualquer conexão de assento existente
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if player.Character then
            for _, descendant in pairs(player.Character:GetDescendants()) do
                if descendant:IsA("SeatWeld") then
                    descendant:Destroy()
                end
            end
        end
    end
end

Tab:AddToggle({
    Name = "Não Sentar em Carros/Items/Etc",
    Default = false,
    Callback = function(value)
        if value then
            disableSeating()
        else
            enableSeating()
        end
    end
})

local Section = Tab:AddSection({
	Name = "Anti Fling"
})

-- Função para deletar o veículo específico de um jogador
local function deleteVehicleFromPlayer(player)
    local vehiclesFolder = workspace:FindFirstChild("Vehicles")
    if vehiclesFolder then
        local vehicleName = player.Name .. "Car"
        local vehicle = vehiclesFolder:FindFirstChild(vehicleName)
        if vehicle then
            vehicle:Destroy()
            print("Veículo deletado para: " .. player.Name)
        else
            warn("Veículo não encontrado para: " .. player.Name)
        end
    end
end

-- Função para deletar o veículo de todos os jogadores
local function deleteVehicleFromAllPlayers()
    for _, player in pairs(game.Players:GetPlayers()) do
        deleteVehicleFromPlayer(player)
    end
end

-- Função para deletar as parts associadas ao jogador
local function deletePartsFromPlayer(player)
    local admFolder = workspace:FindFirstChild(player.Name)
    if admFolder then
        -- Lista das parts a serem deletadas
        local partsToDelete = {"Couch", "Stretcher", "Wagon", "Stroller", "ShoppingCart", "LawnMower"}
        
        for _, partName in pairs(partsToDelete) do
            local part = admFolder:FindFirstChild(partName)
            if part then
                part:Destroy()
                print(partName .. " deletada para: " .. player.Name)
            else
                warn(partName .. " não encontrada para: " .. player.Name)
            end
        end
    end
end

-- Função para deletar as parts de todos os jogadores
local function deletePartsFromAllPlayers()
    for _, player in pairs(game.Players:GetPlayers()) do
        deletePartsFromPlayer(player)
    end
end

-- Variável de controle do loop
local isLooping = false

-- Função para controlar o loop
local function startLoop()
    while isLooping do
        deleteVehicleFromAllPlayers()       -- Deletar veículos de todos os jogadores
        deletePartsFromAllPlayers()         -- Deletar as parts de todos os jogadores
        wait(1) -- Tempo entre cada execução do loop (5 segundos neste exemplo)
    end
end

Tab:AddToggle({
    Name = "Anti Fling",
    Default = false,
    Callback = function(state)
        isLooping = state
        if isLooping then
            startLoop()
        end
    end    
})


local Section = Tab:AddSection({
	Name = "Anti Lag Server"
})

local Players = game:GetService("Players")

local PlayerName = ""

Tab:AddTextbox({
    Name = "Nome do Jogador que está lagando",
    Default = "",
    TextDisappear = false,
    Callback = function(value)
        PlayerName = value
    end
})

Tab:AddButton({
    Name = "Ativar Anti Lag Server",
    Callback = function()
        if PlayerName and PlayerName ~= "" then
            for _, player in ipairs(Players:GetPlayers()) do
                if string.find(player.Name:lower(), PlayerName:lower()) then
                    local character = workspace:FindFirstChild(player.Name)
                    if character then
                        character:Destroy()
                    end
                    local playerInstance = Players:FindFirstChild(player.Name)
                    if playerInstance then
                        playerInstance:Destroy()
                    end
                end
            end
        else
            OrionLib:MakeNotification({
                Name = "Erro",
                Content = "Jogador não encontrado",
                Image = "rbxassetid://132225387260946",
                Time = 5
            })
        end
    end
})

local Section = Tab:AddSection({
	Name = "Notificar Saída e Entrada dos Jogadores"
})

local notifyPlayers = false

Tab:AddToggle({
    Name = "Ativar Notificações de Saída e Entrada dos Jogadores",
    Default = false,
    Callback = function(Value)
        notifyPlayers = Value
    end
})

game.Players.PlayerAdded:Connect(function(player)
    if notifyPlayers then
        local message = string.format("%s(%s) entrou no servidor!", player.Name, player.DisplayName)
        OrionLib:MakeNotification({
            Name = "Entrada de Jogador",
            Content = message,
            Image = "rbxassetid://132225387260946",
            Time = 5
        })
    end
end)

game.Players.PlayerRemoving:Connect(function(player)
    if notifyPlayers then
        local message = string.format("%s(%s) saiu do servidor!", player.Name, player.DisplayName)
        OrionLib:MakeNotification({
            Name = "Saída de Jogador",
            Content = message,
            Image = "rbxassetid://132225387260946",
            Time = 5
        })
    end
end)

local Section = Tab:AddSection({
	Name = "Bebe que Segue Jogador"
})

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local followToggle = false
local originalCFrame

-- Função para suavizar a movimentação até o jogador alvo
local function smoothFollow(targetHumanoidRootPart)
    local bodyPosition = Instance.new("BodyPosition")
    bodyPosition.MaxForce = Vector3.new(1e6, 1e6, 1e6)
    bodyPosition.P = 1e5
    bodyPosition.D = 1e3
    bodyPosition.Position = targetHumanoidRootPart.Position + Vector3.new(1, 0, 0) -- Gruda na lateral direita
    bodyPosition.Parent = LocalPlayer.Character.HumanoidRootPart

    task.wait(0.5) -- Aguarda até o personagem se alinhar

    -- Após o alinhamento, cria o Weld
    local weld = Instance.new("Weld")
    weld.Part0 = LocalPlayer.Character.HumanoidRootPart
    weld.Part1 = targetHumanoidRootPart
    weld.C0 = CFrame.new(0.1, 0, 0) -- Ajusta a posição para grudar na lateral direita
    weld.Parent = LocalPlayer.Character.HumanoidRootPart

    bodyPosition:Destroy()
end

-- Função para conectar ao jogador e executar comandos
local function connectToPlayer(playerName)
    for _, player in pairs(Players:GetPlayers()) do
        if string.find(player.Name:lower(), playerName:lower()) and player ~= LocalPlayer then
            local character = player.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                -- Salvar posição e orientação originais
                originalCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame

                -- Suavizar movimentação até o alvo
                smoothFollow(character.HumanoidRootPart)

                -- Executar funções adicionais ao ativar
                local args1 = { "CharacterFollowSpawnPlayer", "BabyBoy" }
                ReplicatedStorage.RE:FindFirstChild("1Bab1yFollo1w"):FireServer(unpack(args1))

                local args2 = { "CharacterSizeDown", 4 }
                ReplicatedStorage.RE:FindFirstChild("1Clothe1s"):FireServer(unpack(args2))

                return true
            end
        end
    end
    return false
end

-- Função para desconectar e voltar ao normal
local function disconnect()
    if originalCFrame then
        -- Remover conexões (Welds) e voltar ao normal
        for _, weld in pairs(LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
            if weld:IsA("Weld") then
                weld:Destroy()
            end
        end

        -- Voltar à posição original
        LocalPlayer.Character.HumanoidRootPart.CFrame = originalCFrame

        -- Executar funções adicionais ao desativar
        local args1 = { "DeleteFollowCharacter" }
        ReplicatedStorage.RE:FindFirstChild("1Bab1yFollo1w"):FireServer(unpack(args1))

        local args2 = { "CharacterSizeUp", 1 }
        ReplicatedStorage.RE:FindFirstChild("1Clothe1s"):FireServer(unpack(args2))

        originalCFrame = nil
    end
end

local playerName = ""

Tab:AddTextbox({
    Name = "Digite o Nome do Jogador",
    Default = "",
    TextDisappear = true,
    Callback = function(input)
        playerName = input
    end
})

Tab:AddToggle({
    Name = "Ativar",
    Default = false,
    Callback = function(value)
        followToggle = value

        if followToggle then
            if playerName ~= "" and connectToPlayer(playerName) then
                -- Sucesso ao seguir o jogador
            else
                followToggle = false
                -- Falha ao encontrar o jogador
            end
        else
            disconnect()
            -- Jogador desconectado
        end
    end
})


local Tab = Window:MakeTab({
    Name = "Tools/Lag Server",
    Icon = "rbxassetid://10709769508",
    PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Duplicar Lanternas"
})

local countValue = 0

Tab:AddTextbox({
	Name = "Insira o Número de Lanternas",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		countValue = tonumber(Value)
        if not countValue then
            print("TemplariosHub")
        end
	end	  
})

Tab:AddButton({
	Name = "Duplicar Lanternas",
	Callback = function()
      		if countValue and countValue > 0 then
        -- Define referências
        local player = game.Players.LocalPlayer
        local initialPosition = player.Character.HumanoidRootPart.Position
        local targetPart = workspace["001_Lots"][player.Name .. "House"].HousePickedByPlayer.HouseModel.ToolsFlashLight.Touch

        -- Verifica se a parte existe
        if targetPart then
            -- Teleporta o jogador para a part e reduz a velocidade
            player.Character.HumanoidRootPart.CFrame = targetPart.CFrame
            player.Character.Humanoid.WalkSpeed = 0

            -- Executa o fireclickdetector o número de vezes especificado
            for i = 1, countValue do
                fireclickdetector(workspace["001_Lots"][player.Name .. "House"].HousePickedByPlayer.HouseModel.ToolsFlashLight.Tools.FlashLight.ClickDetector)
                wait(0.5)
            end

            -- Retorna o jogador ao local original e restaura a velocidade
            player.Character.HumanoidRootPart.CFrame = CFrame.new(initialPosition)
            player.Character.Humanoid.WalkSpeed = 16
        else
            -- Notificação com imagem caso a part não exista
            game.StarterGui:SetCore("SendNotification", {
                Title = "Templarios Hub",
                Text = "Falha ao Duplicar Lanternas, Verifique se Colocou essa Casa. (Casa da Agency)",
                Duration = 5,
                Icon = "rbxassetid://78517296345487" -- Substitua pelo ID da imagem desejada
            })
        end
    else
        print("TemplariosHub")
    end
  	end    
})

Tab:AddParagraph("Atenção!","Lembre-se que você deve pegar a Casa da Agency Para o Duplicar Lanternas Funcionar!")

local Section = Tab:AddSection({
	Name = "Duplicar Extintores"
})

local player = game.Players.LocalPlayer
local dupeCount -- Variável para armazenar o número digitado

Tab:AddTextbox({
	Name = "Insira o Número de Extintores",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		dupeCount = tonumber(Value) -- Converte o valor digitado para número
		if not dupeCount or dupeCount <= 0 then
			print("Por favor, insira um número válido.") -- Mensagem de erro se não for um número válido
		end
	end	  
})

local function getCharacterComponents()
	local character = player.Character or player.CharacterAdded:Wait()
	return character:WaitForChild("Humanoid"), character:WaitForChild("HumanoidRootPart")
end

local function findClickDetector()
	-- Verifica se o objeto FireX e seus filhos existem no novo caminho
	local fireX = workspace.WorkspaceCom["001_DayCare"].Tools:FindFirstChild("FireX")
	if fireX then
		-- Procura por um ClickDetector dentro de FireX
		for _, child in ipairs(fireX:GetChildren()) do
			if child:IsA("ClickDetector") then
				return child -- Retorna o ClickDetector encontrado
			end
		end
	end
	return nil -- Retorna nil se nenhum ClickDetector for encontrado
end

Tab:AddButton({
	Name = "Duplicar Extintores",
	Callback = function()
		local humanoid, rootPart = getCharacterComponents() -- Obtém componentes atualizados
		local clickDetector = findClickDetector() -- Obtém o ClickDetector dentro de FireX

		if dupeCount and dupeCount > 0 and clickDetector then
			local originalPosition = rootPart.Position -- Armazena a posição inicial do jogador
			local originalSpeed = humanoid.WalkSpeed -- Armazena a velocidade original do jogador

			-- Teleporta o jogador para a nova posição e define a velocidade para 0
			rootPart.CFrame = CFrame.new(433.39031982421875, -107.79502868652344, 101.17525482177734)
			humanoid.WalkSpeed = 0

			-- Executa o fireclickdetector a quantidade de vezes desejada
			for i = 1, dupeCount do
				fireclickdetector(clickDetector)
				wait(0.5) -- Intervalo entre execuções
			end

			-- Aguarda 3 segundos antes de restaurar a posição e a velocidade
			wait(3)
			rootPart.CFrame = CFrame.new(originalPosition)
			humanoid.WalkSpeed = originalSpeed
		else
			print("Por favor, insira um número válido ou verifique se o ClickDetector existe.") -- Mensagem de erro se não for um número válido ou o ClickDetector não for encontrado
		end
	end    
})

-- Reatribui componentes após o reset
player.CharacterAdded:Connect(function()
	player.Character:WaitForChild("Humanoid").Changed:Connect(function()
		humanoid, rootPart = getCharacterComponents()
	end)
end)

local Section = Tab:AddSection({
	Name = "Duplicar Guitarras"
})

local player = game.Players.LocalPlayer
local humanoid = player.Character:WaitForChild("Humanoid")
local rootPart = player.Character:WaitForChild("HumanoidRootPart")
local dupeCount -- Variável para armazenar o número digitado

Tab:AddTextbox({
	Name = "Insira o Número de Guitarras",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		dupeCount = tonumber(Value) -- Converte o valor digitado para número
		if not dupeCount or dupeCount <= 0 then
			print("Por favor, insira um número válido.") -- Mensagem de erro se não for um número válido
		end
	end	  
})

Tab:AddButton({
	Name = "Duplicar Guitarras",
	Callback = function()
      		-- Verifica se o valor é válido
		if dupeCount and dupeCount > 0 then
			local originalPosition = rootPart.Position -- Armazena a posição inicial do jogador
			local originalSpeed = humanoid.WalkSpeed -- Armazena a velocidade original do jogador

			-- Teleporta o jogador para a nova posição e define a velocidade para 0
			rootPart.CFrame = CFrame.new(-379.8940124511719, 18.473968505859375, 211.9053955078125)
			humanoid.WalkSpeed = 0
			
			-- Executa o fireclickdetector a quantidade de vezes desejada
			for i = 1, dupeCount do
				fireclickdetector(workspace.WorkspaceCom["001_GiveTools"].ElectricGuitar.ClickDetector)
				game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.F,false,game)
				wait(0.5) -- Intervalo entre execuções
			end

			-- Aguarda 3 segundos antes de restaurar a posição e a velocidade
			wait(3)
			rootPart.CFrame = CFrame.new(originalPosition)
			humanoid.WalkSpeed = originalSpeed
		else
			print("Por favor, insira um número válido.") -- Mensagem de erro se não for um número válido
		end
  	end    
})

local Section = Tab:AddSection({
	Name = "Duplicar Violões"
})

local player = game.Players.LocalPlayer
local humanoid = player.Character:WaitForChild("Humanoid")
local rootPart = player.Character:WaitForChild("HumanoidRootPart")
local dupeCount -- Variável para armazenar o número digitado

Tab:AddTextbox({
	Name = "Insira o Número de Violões",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		dupeCount = tonumber(Value) -- Converte o valor digitado para número
		if not dupeCount or dupeCount <= 0 then
			print("Por favor, insira um número válido.") -- Mensagem de erro se não for um número válido
		end
	end	  
})

Tab:AddButton({
	Name = "Duplicar Violões",
	Callback = function()
      		-- Verifica se o valor é válido
		if dupeCount and dupeCount > 0 then
			local originalPosition = rootPart.Position -- Armazena a posição inicial do jogador
			local originalSpeed = humanoid.WalkSpeed -- Armazena a velocidade original do jogador

			-- Teleporta o jogador para a nova posição e define a velocidade para 0
			rootPart.CFrame = CFrame.new(-379.8940124511719, 18.473968505859375, 211.9053955078125)
			humanoid.WalkSpeed = 0
			
			-- Executa o fireclickdetector a quantidade de vezes desejada
			for i = 1, dupeCount do
				fireclickdetector(workspace.WorkspaceCom["001_GiveTools"].Guitar.ClickDetector)
				game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.F,false,game)
				wait(0.5) -- Intervalo entre execuções
			end

			-- Aguarda 3 segundos antes de restaurar a posição e a velocidade
			wait(3)
			rootPart.CFrame = CFrame.new(originalPosition)
			humanoid.WalkSpeed = originalSpeed
		else
			print("Por favor, insira um número válido.") -- Mensagem de erro se não for um número válido
		end
  	end    
})

local Section = Tab:AddSection({
	Name = "Equipar todos os items"
})

Tab:AddButton({
    Name = "Equipar Todos os Items",
    Callback = function()
local function equiptool()
  for i,v in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
      v.Parent = game.Players.LocalPlayer.Character
    end
  end
end
equiptool()

    end
})

local Section = Tab:AddSection({
	Name = "Lag Server"
})

-- Variáveis
local isLooping = false -- Controle do loop
local originalPosition = nil -- Para armazenar a posição original do jogador
local player = game.Players.LocalPlayer -- Referência ao jogador local
local selectedDevice = "Celular" -- Valor padrão do dispositivo

Tab:AddDropdown({
    Name = "Selecionar o Que Vai Usar Para Lagar o Servidor",
    Default = "Celular",
    Options = {"Laptop", "Celular", "Caça Fantasmas", "Celular e Laptop"},
    Callback = function(Value)
        selectedDevice = Value -- Atualiza o dispositivo selecionado com base na escolha do usuário
    end
})

-- Função para iniciar o loop
local function startLoop()
    if not isLooping then
        isLooping = true
        originalPosition = player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character.HumanoidRootPart.Position

        -- Define coordenadas baseadas no dispositivo selecionado
        local teleportPosition
        if selectedDevice == "Laptop" then
            teleportPosition = Vector3.new(-123.742, 20.074, 251.402)
        elseif selectedDevice == "Celular" then
            teleportPosition = Vector3.new(-123.742, 20.074, 251.402)
        elseif selectedDevice == "Caça Fantasmas" then
            teleportPosition = Vector3.new(-320.216, 7.4, -112.32)
        elseif selectedDevice == "Celular e Laptop" then
            teleportPosition = Vector3.new(-123.742, 20.074, 251.402)
        end

        -- Teleporta o jogador para a nova posição
        if teleportPosition then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)
        end

        -- Define a velocidade para 0
        player.Character.Humanoid.WalkSpeed = 0

        -- Loop principal
        while isLooping do
            -- Verifica o dispositivo selecionado e executa o ClickDetector correspondente
            if selectedDevice == "Laptop" then
                fireclickdetector(workspace.WorkspaceCom["001_CommercialStores"].CommercialStorage1.Store.Tools.Laptop.ClickDetector)
            elseif selectedDevice == "Celular" then
                fireclickdetector(workspace.WorkspaceCom["001_CommercialStores"].CommercialStorage1.Store.Tools:GetChildren()[3].ClickDetector)
            elseif selectedDevice == "Caça Fantasmas" then
                fireclickdetector(workspace.WorkspaceCom["001_GiveTools"].GhostMeter.ClickDetector)
            elseif selectedDevice == "Celular e Laptop" then
                fireclickdetector(workspace.WorkspaceCom["001_CommercialStores"].CommercialStorage1.Store.Tools:GetChildren()[3].ClickDetector)
                wait(0.1)
                fireclickdetector(workspace.WorkspaceCom["001_CommercialStores"].CommercialStorage1.Store.Tools.Laptop.ClickDetector)
            end
            wait(0.01) -- Espera 0.01 segundo
        end
    end
end

-- Função para parar o loop e voltar à posição original
local function stopLoop()
    if isLooping then
        isLooping = false -- Para o loop
        wait(0.1) -- Espera um pouco antes de voltar

        -- Teleporta de volta para a posição original
        if originalPosition then
            player.Character.HumanoidRootPart.CFrame = CFrame.new(originalPosition)
        end

        -- Restaura a velocidade para 16
        player.Character.Humanoid.WalkSpeed = 16
    end
end

-- Reinicializa as variáveis em caso de reset do personagem
player.CharacterAdded:Connect(function()
    isLooping = false -- Garante que o loop seja parado ao resetar
    originalPosition = nil -- Reseta a posição original
end)

-- Botão para iniciar o loop
Tab:AddButton({
    Name = "Lagar Servidor",
    Callback = function()
        startLoop()
    end
})

-- Botão para parar o loop
Tab:AddButton({
    Name = "Parar de Lagar",
    Callback = function()
        stopLoop()
    end
})

Tab:AddParagraph("Atenção", "Caso seu Celular não Seja Muito Bom não é Recomendado que use o Lagar Servidor!")

local Section = Tab:AddSection({
    Name = "Áudio"
})

Tab:AddButton({
	Name = "Pegar Sniper (Necessário)",
	Callback = function()
local args = {
    [1] = "PickingTools",
    [2] = "Sniper"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

  	end    
})

-- TextBox para inserir o ID
Tab:AddTextbox({
    Name = "Digite o ID do Áudio",
    Default = "",
    TextDisappear = true,
    Callback = function(value)
        Value = value
    end
})

-- Botão para executar a função uma vez
Tab:AddButton({
    Name = "Tocar Áudio",
    Callback = function()
        if Value then
            local args = {
                [1] = game:GetService("Players").LocalPlayer.Character.Sniper.Handle,
                [2] = Value,
                [3] = 1
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gu1nSound1s"):FireServer(unpack(args))
            
            local soundId = "rbxassetid://" .. Value
            local sound = Instance.new("Sound")
            sound.SoundId = soundId
            sound.Parent = game.Workspace
            sound.Volume = 0.3
            
            sound:Play()
            wait(3)
            sound:Stop()
        else
            OrionLib:MakeNotification({
                Name = "Erro",
                Content = "Insira um ID válido antes de executar.",
                Image = "rbxassetid://132225387260946",
                Time = 5
            })
        end
    end
})

-- Toggle para ativar/desativar o loop
Tab:AddToggle({
    Name = "Loop Audio",
    Default = false,
    Callback = function(value)
        looping = value
        
        while looping do
            if Value then
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Character.Sniper.Handle,
                    [2] = Value,
                    [3] = 1
                }
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gu1nSound1s"):FireServer(unpack(args))
                
                local soundId = "rbxassetid://" .. Value
                local sound = Instance.new("Sound")
                sound.SoundId = soundId
                sound.Parent = game.Workspace
                sound.Volume = 0.1
                
                sound:Play()
                wait(3)
                sound:Stop()
            else
                OrionLib:MakeNotification({
                    Name = "Erro",
                    Content = "Insira um ID antes de ativar o loop som.",
                    Image = "rbxassetid://132225387260946",
                    Time = 5
                })
                break
            end
            wait(1) -- Intervalo entre execuções
        end
    end
})

Tab:AddParagraph("Atenção","Você deve segurar a <font color='rgb(0, 255, 0)'>Sniper</font> para que o áudio seja executado corretamente de forma FE, suporta o som por 3 segundos")

local Section = Tab:AddSection({
    Name = "Áudio All"
})

Tab:AddButton({
	Name = "Pegar Sniper (Necessário)",
	Callback = function()
local args = {
    [1] = "PickingTools",
    [2] = "Sniper"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

  	end    
})

-- Variáveis
local Value = ""  -- ID do som será inserido pelo usuário
local Speed = 1   -- Velocidade padrão (pode ser ajustada)
local isPlaying = false  -- Estado do toggle
local interval = 0.1  -- Tempo padrão entre execuções

-- Função para tocar o som localmente
local function playSoundLocally(Value, Speed)
    local soundId = "rbxassetid://" .. Value
    local sound = Instance.new("Sound")
    sound.SoundId = soundId
    sound.Parent = game.Workspace
    sound.Volume = 0.3
    sound.PlaybackSpeed = Speed  -- Velocidade do som

    sound:Play()

    -- O som será destruído após 3 segundos, mas isso não impede a execução contínua
    game:GetService("Debris"):AddItem(sound, 3)
end

-- Função para enviar o evento ao servidor
local function playSoundServer(Value, Speed)
    local args = {
        [1] = workspace,
        [2] = Value,
        [3] = Speed
    }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gu1nSound1s"):FireServer(unpack(args))
end

-- TextBox para inserir o ID do som
Tab:AddTextbox({
    Name = "ID do Áudio",
    Default = "",
    TextDisappear = true,
    Callback = function(value)
        Value = value  -- Atualizando o ID do som
    end
})

-- TextBox para inserir a velocidade do som
Tab:AddTextbox({
    Name = "Velocidade do Áudio",
    Default = "1",
    TextDisappear = true,
    Callback = function(value)
        Speed = tonumber(value) or 1  -- Garantindo que a velocidade seja um número, se não for, usa 1
    end
})

-- Botão para tocar o som uma vez
Tab:AddButton({
    Name = "Tocar Áudio",
    Callback = function()
        if Value == "" then
            print("Você não colocou nemhum ID de Áudio")
        else
            playSoundLocally(Value, Speed)  -- Toca o som localmente
            playSoundServer(Value, Speed)  -- Envia o evento ao servidor
        end
    end
})

-- Toggle para tocar o som repetidamente
Tab:AddToggle({
    Name = "Loop Áudio All",
    Default = false,
    Callback = function(state)
        isPlaying = state  -- Atualizando o estado do toggle
        if isPlaying then
            -- Loop para tocar o som enquanto o toggle estiver ativado
            coroutine.wrap(function()
                while isPlaying do
                    if Value ~= "" then
                        playSoundLocally(Value, Speed)  -- Toca o som localmente
                        playSoundServer(Value, Speed)  -- Envia o evento ao servidor
                    else
                        print("Você não colocou nemhum ID de Áudio")
                        break
                    end
                    wait(interval)  -- Usa o intervalo definido pelo usuário
                end
            end)()
        end
    end
})

-- TextBox para ajustar o intervalo do toggle
Tab:AddTextbox({
    Name = "Intervalo para o Loop Áudio All",
    Default = "0.5",
    TextDisappear = true,
    Callback = function(value)
        interval = tonumber(value) or 0.5  -- Atualiza o intervalo, valor padrão é 0.1
        if interval <= 0 then
            interval = 0.5  -- Garante que o intervalo não seja zero ou negativo
            print("Intervalo do Loop Áudio All Definido")
        end
    end
})

Tab:AddParagraph("Atenção","No áudio all, você não precisa segurar a sniper na mão para funcionar mas deve ter ela no seu inventário. Também suporta 3 segundos.")


local Section = Tab:AddSection({
	Name = "Grip Itens"
})


Tab:AddButton({
	Name = "Wall Box",
	Callback = function()
      		local function fragiotakis() local Player = game.Players.LocalPlayer local Character = Player.Character or Player.CharacterAdded:Wait() local RootPart = Character:WaitForChild("HumanoidRootPart") local Clone = game:GetService("Workspace"):FindFirstChild("WorkspaceCom") and game:GetService("Workspace").WorkspaceCom:FindFirstChild("001_GiveTools") and game:GetService("Workspace").WorkspaceCom["001_GiveTools"]:FindFirstChild("Box")

if Clone and Clone:FindFirstChild("ClickDetector") then
    local OldPos = RootPart.CFrame

    for i = 1, 12 do
        RootPart.CFrame = Clone.CFrame
        fireclickdetector(Clone.ClickDetector)
        task.wait(0)
    end

    RootPart.CFrame = OldPos
else
    warn("tu deve ter bugado ou o mapa deu algum bo!")
end

end

for i = 1, 50 do fragiotakis() task.wait(0.0) end

local function BundaGorda() 
local args
 = { [1] = "PickingTools",
 [2] = "Box" }

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
wait(0.1)
local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")

local tools = {}
for _, tool in pairs(backpack:GetChildren()) do
    if tool.Name == "Box" then
        table.insert(tools, tool)
    end
end

local startPosition = Vector3.new(0, 4, 0)
local spacingX, spacingY = 1, 2
local columns = 5

for i, tool in ipairs(tools) do
    local row = math.floor((i - 1) / columns)
    local column = (i - 1) % columns
    tool.Parent = player.Character
    tool.GripPos = startPosition + Vector3.new(column * spacingX, -row * spacingY, 0)
    tool.Grip = CFrame.new(startPosition + Vector3.new(column * spacingX, -row * spacingY, 0)) * CFrame.Angles(math.rad(90), 0, 0)
end

end

BundaGorda()
print("button pressed")
  	end    
})


Tab:AddButton({
	Name = "Wall Extinto",
	Callback = function()
      		local function fragiotakis()
    local Player = game.Players.LocalPlayer
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local RootPart = Character:WaitForChild("HumanoidRootPart")
    local Clone = game:GetService("Workspace"):FindFirstChild("WorkspaceCom") 
        and game:GetService("Workspace").WorkspaceCom:FindFirstChild("001_GiveTools") 
        and game:GetService("Workspace").WorkspaceCom["001_GiveTools"]:FindFirstChild("FireX")

    if Clone and Clone:FindFirstChild("ClickDetector") then
        local OldPos = RootPart.CFrame

        for i = 1, 21 do
            RootPart.CFrame = Clone.CFrame
            fireclickdetector(Clone.ClickDetector)
            task.wait(0)
        end

        RootPart.CFrame = OldPos
    else
        warn("tu deve ter bugado ou o ClickDetector deu algum erro!")
    end
end

for i = 1, 20 do
    fragiotakis()
    task.wait(0.0)
end

local function Cugostoso()
    local args = {
        [1] = "PickingTools",
        [2] = "FireX"
    }

    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
    wait(0.1)
    local player = game.Players.LocalPlayer
    local backpack = player:WaitForChild("Backpack")
    
    local tools = {}
    for _, tool in pairs(backpack:GetChildren()) do
        if tool.Name == "FireX" then
            table.insert(tools, tool)
        end
    end

    local startPosition = Vector3.new(0, 3, 0)
    local spacing = 1

    for i, tool in ipairs(tools) do
        tool.Parent = player.Character
        tool.GripPos = startPosition + Vector3.new(i * spacing, 0, 0)
        tool.Grip = CFrame.new(startPosition + Vector3.new(i * spacing, 0, 0)) * CFrame.Angles(math.rad(90), 0, 0)
    end
end

Cugostoso()
print("button pressed")
  	end    
})


Tab:AddButton({
	Name = "Wall Couch",
	Callback = function()
      		cleartoolremote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s")
picktoolremote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l")

local function safeskripz()
    if duping == true then
        print("Script Warning: Dupe function still working or enabled. If you want to use this function, please disable it.")
        return
    end

    if toolgrip == true then
        print("Script Warning: Tool grip function still working or enabled. If you want to use this function, please disable it.")
        return
    end
end
wait(1)
safeskripz()
		nametools = "couch wall lel"
		oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		toolthatiwanttodupe = "Couch"
		tools = "Couch"
		if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
			task.wait()
			game.Players.LocalPlayer.Character.Humanoid.Sit = false
		end
		wait(0.1)
		local args = {
			[1] = "ClearAllTools"
		}
		
		cleartoolremote:FireServer(unpack(args))
		if game:GetService("Workspace"):FindFirstChild("Camera") then
			game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() end
		for m=1,2 do task.wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999.414, -490, 999999999.414, 0.974360406, -0.175734088, 0.14049761, -0.133441404, 0.0514053069, 0.989722729, -0.181150302, -0.983094692, 0.0266370922)
			end
			task.wait(0.2)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
		wait(0.3)
		duping = true
		for m=1, 276 do
			if duping == false then game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false return end
			if game:GetService("Workspace"):FindFirstChild("Camera") then
				game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() end
			local args = {
				[1] = "PickingTools",
				[2] = toolthatiwanttodupe
			}
			
			picktoolremote:InvokeServer(unpack(args))
			game:GetService("Players").LocalPlayer.Backpack:WaitForChild(toolthatiwanttodupe).Parent = game.Players.LocalPlayer.Character
			if duping == false then game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false return end
			wait()
			game:GetService("Players").LocalPlayer.Character[toolthatiwanttodupe]:FindFirstChild("Handle").Name = "H⁥a⁥n⁥d⁥l⁥e"
			game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolthatiwanttodupe).Parent = game.Players.LocalPlayer.Backpack
			game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(toolthatiwanttodupe).Parent = game.Players.LocalPlayer.Character
			repeat 		if game:GetService("Workspace"):FindFirstChild("Camera") then
				game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() end wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolthatiwanttodupe) == nil
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil
		repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		toolgrip = true
		duping = false
		wait()
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(1, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(1, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(1, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(1, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(1, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(1, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(1, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(1, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(1, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(1, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(1, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(2, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(2, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(2, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(2, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(2, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(2, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(2, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(2, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(2, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(2, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(2, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(3, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(3, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(3, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(3, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(3, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(3, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(3, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(3, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(3, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(3, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(3, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(4, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(4, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(4, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(4, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(4, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(4, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(4, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(4, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(4, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(4, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(4, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(5, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(5, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(5, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(5, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(5, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(5, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(5, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(5, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(5, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(5, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(5, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(6, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(6, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(6, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(6, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(6, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(6, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(6, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(6, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(6, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(6, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(6, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(7, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(7, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(7, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(7, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(7, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(7, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(7, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(7, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(7, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(7, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(7, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(8, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(8, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(8, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(8, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(8, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(8, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(8, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(8, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(8, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(8, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(8, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(9, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(9, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(9, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(9, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(9, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(9, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(9, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(9, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(9, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(9, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(9, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(10, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(10, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(10, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(10, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(10, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(10, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(10, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(10, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(10, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(10, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(10, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(0, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-1, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-1, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-1, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-1, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-1, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-1, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-1, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-1, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-1, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-1, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-1, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-2, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-2, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-2, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-2, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-2, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-2, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-2, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-2, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-2, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-2, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-2, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-3, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-3, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-3, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-3, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-3, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-3, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-3, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-3, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-3, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-3, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-3, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-4, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-4, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-4, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-4, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-4, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-4, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-4, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-4, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-4, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-4, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-4, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-5, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-5, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-5, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-5, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-5, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-5, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-5, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-5, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-5, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-5, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-5, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-6, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-6, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-6, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-6, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-6, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-6, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-6, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-6, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-6, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-6, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-6, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-7, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-7, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-7, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-7, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-7, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-7, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-7, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-7, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-7, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-7, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-7, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-8, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-8, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-8, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-8, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-8, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-8, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-8, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-8, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-8, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-8, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-8, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-9, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-9, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-9, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-9, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-9, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-9, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-9, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-9, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-9, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-9, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-9, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-10, 0, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-10, -2, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-10, -4, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-10, -6, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-10, -8, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-10, -10, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-10, -12, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-10, -14, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-10, -16, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-10, -18, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Backpack[tools].Grip = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629) + Vector3.new(-10, -20, 0)
		game.Players.LocalPlayer.Backpack[tools].Name = nametools
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
		wait(0.5)
		for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
			if tool:IsA("Tool") then
				if tool.Name == nametools then
				 tool.Parent = game:GetService("Players").LocalPlayer.Character
				end
			end
		end
print("button pressed")
  	end    
})


local Section = Tab:AddSection({
	Name = "Lag Botões"
})


Tab:AddButton({
	Name = "Lag Shopping Cart",
	Callback = function()
      		local function duplicarShoppingCart()
    local Player = game.Players.LocalPlayer
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local RootPart = Character:WaitForChild("HumanoidRootPart")
    local ShoppingCartPath = game:GetService("Workspace"):FindFirstChild("WorkspaceCom") 
        and game:GetService("Workspace").WorkspaceCom["001_GiveTools"].ShoppingCart

    if ShoppingCartPath and ShoppingCartPath:FindFirstChild("ClickDetector") then
        local ClickDetector = ShoppingCartPath:FindFirstChild("ClickDetector")
        local OldPos = RootPart.CFrame

        for i = 1, 12 do
            RootPart.CFrame = ShoppingCartPath.CFrame
            fireclickdetector(ClickDetector)
            task.wait(0)
        end

        RootPart.CFrame = OldPos
    else
        warn("Erro ao encontrar o ShoppingCart! Tente novamente.")
    end
end

for i = 1, 9999999999999999 do
    duplicarShoppingCart()
    task.wait(0.001)
end
print("button pressed")
  	end    
})


Tab:AddButton({
	Name = "Lag Taser",
	Callback = function()
      		local function duplicarTaser()
    local Player = game.Players.LocalPlayer
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local RootPart = Character:WaitForChild("HumanoidRootPart")
    local TaserPath = game:GetService("Workspace"):FindFirstChild("WorkspaceCom") 
        and game:GetService("Workspace").WorkspaceCom["001_GiveTools"]:FindFirstChild("Taser")

    if TaserPath and TaserPath:FindFirstChild("ClickDetector") then
        local OldPos = RootPart.CFrame

        for i = 1, 12 do
            RootPart.CFrame = TaserPath.CFrame
            fireclickdetector(TaserPath:FindFirstChild("ClickDetector"))
            task.wait(0)
        end

        RootPart.CFrame = OldPos
    else
        warn("Erro ao encontrar o Taser! Tente novamente.")
    end
end

-- Loop infinito para duplicação
while true do
    duplicarTaser()
    task.wait(0.001)
end
print("button pressed")
  	end    
})



local Section = Tab:AddSection({
	Name = "Lag Toggles"
})


local toggles = {
    DupeBasketball = false
}

local function clickNormally(object)
    local clickDetector = object:FindFirstChildWhichIsA("ClickDetector")
    if clickDetector then
        fireclickdetector(clickDetector) -- Clica normalmente
    end
end

local function dupeItem(itemPath, maxTeleports)
    if itemPath then
        local teleportCount = 0
        while teleportCount < maxTeleports and toggles.DupeBasketball do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = itemPath.CFrame
            clickNormally(itemPath)
            teleportCount = teleportCount + 1
            wait(0.01) -- Tempo de espera para evitar travamento
        end
    else
        warn("Item não encontrado.")
    end
end

Tab:AddToggle({
	Name = "Lag basketball",
	Default = false,
	Callback = function(state)
		toggles.DupeBasketball = state
        if state then
            local basketballPath = workspace:FindFirstChild("WorkspaceCom"):FindFirstChild("001_GiveTools"):FindFirstChild("Basketball")
            spawn(function()
                dupeItem(basketballPath, 9999999999999999999999999999999999999)
            end)
        else
            print("Dupe Basketball desligado.")
        end
	end    
})

local toggles = {
    DupeExtintor = false
}

local function clickNormally(object)
    local clickDetector = object:FindFirstChildWhichIsA("ClickDetector")
    if clickDetector then
        fireclickdetector(clickDetector) -- Clica normalmente
    end
end

local function dupeItem(itemPath, maxTeleports)
    if itemPath then
        local teleportCount = 0
        while teleportCount < maxTeleports and toggles.DupeExtintor do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = itemPath.CFrame
            clickNormally(itemPath)
            teleportCount = teleportCount + 1
            wait(0.01) -- Tempo de espera para evitar travamento
        end
    else
        warn("Item não encontrado.")
    end
end


Tab:AddToggle({
	Name = "Lag extinto",
	Default = false,
	Callback = function(state)
		toggles.DupeExtintor = state
        if state then
            local fireXPath = workspace:FindFirstChild("WorkspaceCom"):FindFirstChild("001_GiveTools"):FindFirstChild("FireX")
            spawn(function()
                dupeItem(fireXPath, 999999999999999999999999999999999999999)
            end)
        else
            print("Dupe Extintor desligado.")
        end
	end    
})


local toggles = {
    DupeBook = false
}

local function clickNormally(object)
    local clickDetector = object:FindFirstChildWhichIsA("ClickDetector")
    if clickDetector then
        fireclickdetector(clickDetector) -- Clica normalmente
    end
end

local function dupeItem(itemPath, maxTeleports)
    if itemPath then
        local teleportCount = 0
        while teleportCount < maxTeleports and toggles.DupeBook do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = itemPath.CFrame
            clickNormally(itemPath)
            teleportCount = teleportCount + 1
            wait(0.01) -- Tempo de espera para evitar travamento
        end
    else
        warn("Item não encontrado.")
    end
end

Tab:AddToggle({
	Name = "Lag Book",
	Default = false,
	Callback = function(state)
		toggles.DupeBook = state
        if state then
            local bookPath = workspace:FindFirstChild("WorkspaceCom"):FindFirstChild("001_DayCare"):FindFirstChild("Tools"):FindFirstChild("Book")
            spawn(function()
                dupeItem(bookPath, 99999999999999999999999999999999999)
            end)
        else
            print("Dupe Book desligado.")
        end
	end    
})


local toggles = {
    DupeStretcher = false
}

local function clickNormally(object)
    local clickDetector = object:FindFirstChildWhichIsA("ClickDetector")
    if clickDetector then
        fireclickdetector(clickDetector) -- Clica normalmente
    end
end

local function dupeItem(itemPath, maxTeleports)
    if itemPath then
        local teleportCount = 0
        while teleportCount < maxTeleports and toggles.DupeStretcher do
            if game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = itemPath.CFrame
                clickNormally(itemPath)
                teleportCount = teleportCount + 1
                wait(0.01) -- Tempo de espera para evitar travamento
            else
                warn("Personagem do jogador não encontrado.")
                break
            end
        end
    else
        warn("ItemPath inválido.")
    end
end

local function dupeStretcher()
    local stretcherPath = workspace:FindFirstChild("WorkspaceCom")
        and workspace.WorkspaceCom:FindFirstChild("001_GiveTools")
        and workspace.WorkspaceCom["001_GiveTools"]:FindFirstChild("Stretcher")
    
    if stretcherPath then
        dupeItem(stretcherPath, 9999999999999999999999999999999999999999999999999999999999) -- Duplicar 300 vezes
    else
        warn("Item Stretcher não encontrado.")
    end
end


Tab:AddToggle({
	Name = "Lag Stretcher",
	Default = false,
	Callback = function(state)
		toggles.DupeStretcher = state
        if state then
            spawn(function()
                while toggles.DupeStretcher do
                    dupeStretcher()
                    wait(0.1) -- Espera entre duplicações
                end
            end)
        else
            print("Dupe Stretcher desligado.")
        end
	end    
})


local Section = Tab:AddSection({
	Name = "contador De itens do Inventário"
})


Tab:AddButton({
	Name = "Executar Contador De itens",
	Callback = function()

-- Criar a interface gráfica (GUI)
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.1, 0)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.BorderSizePixel = 2
frame.Parent = screenGui

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0.3, 0)
titleLabel.Text = "Inventário"
titleLabel.TextScaled = true
titleLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Parent = frame

local inventoryLabel = Instance.new("TextLabel")
inventoryLabel.Size = UDim2.new(1, 0, 0.7, 0)
inventoryLabel.Position = UDim2.new(0, 0, 0.3, 0)
inventoryLabel.Text = "Carregando..."
inventoryLabel.TextScaled = true
inventoryLabel.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
inventoryLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
inventoryLabel.Parent = frame

-- Função para contar os itens no inventário do jogador
local function UpdateInventory()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    local itemCount = 0

    -- Contar os itens no Backpack
    if backpack then
        itemCount = itemCount + #backpack:GetChildren()
    end

    -- Contar os itens equipados no Character
    for _, item in pairs(character:GetChildren()) do
        if item:IsA("Tool") then
            itemCount = itemCount + 1
        end
    end

    -- Atualizar a GUI
    inventoryLabel.Text = "Itens no inventário: " .. itemCount
end

-- Atualizar sempre que o inventário mudar
LocalPlayer.Backpack.ChildAdded:Connect(UpdateInventory)
LocalPlayer.Backpack.ChildRemoved:Connect(UpdateInventory)
LocalPlayer.CharacterAdded:Connect(function()
    wait(1) -- Tempo para carregar o personagem
    UpdateInventory()
end)

-- Loop para verificar o inventário a cada segundo (corrige o problema de atualização lenta)
task.spawn(function()
    while true do
        UpdateInventory()
        wait(1)
    end
end)

-- Torna a GUI móvel (Draggable)
local dragging
local dragInput
local dragStart
local startPos

local function UpdateDrag(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        UpdateDrag(input)
    end
end)
print("button pressed")
  	end    
})


local Tab = Window:MakeTab({
	Name = "Pull Player",
	Icon = "rbxassetid://10734920149",
	PremiumOnly = false
})


-- Variáveis para armazenar dados
local fakeIP = ""
local playerName = ""

-- Gerador de Fake IP
local function generateFakeIP()
    fakeIP = playerName .. "'s IP: " .. math.random(0, 255) .. "." .. math.random(0, 255) .. "." .. math.random(0, 255) .. "." .. math.random(0, 255)
    OrionLib:MakeNotification({
        Name = "IP Capturado",
        Content = fakeIP,
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

-- Caixa de Texto para Inserir o Nome do Jogador
Tab:AddTextbox({
    Name = "Nome do Jogador",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        if #Value <= 20 then
            playerName = Value
        else
            OrionLib:MakeNotification({
                Name = "Erro",
                Content = "O nome não pode ter mais de 20 caracteres!",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

-- Botão para Gerar IP
Tab:AddButton({
    Name = "Gerar Ip",
    Callback = function()
        if playerName ~= "" then
            generateFakeIP()
        else
            OrionLib:MakeNotification({
                Name = "Erro",
                Content = "Por favor, insira um nome de jogador.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

-- Botão para Copiar o IP
Tab:AddButton({
    Name = "Copiar IP",
    Callback = function()
        if fakeIP ~= "" then
            setclipboard(fakeIP) -- Copia para a área de transferência
            OrionLib:MakeNotification({
                Name = "Copiado",
                Content = "O IP foi copiado para a área de transferência.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        else
            OrionLib:MakeNotification({
                Name = "Erro",
                Content = "Nenhum IP foi gerado ainda.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})


local selectedPlayer = nil

local function getPlayerId(player)
    return player.UserId
end

local function getJoinDate(player)
    return player.AccountAge
end

local function copyName(player)
    setclipboard(player.Name)
end

local function createESP(player)
    local esp = Instance.new("Highlight")
    esp.Parent = player.Character
    esp.Adornee = player.Character
    esp.FillColor = Color3.new(1, 0, 0)
    esp.FillTransparency = 0.5
    esp.OutlineColor = Color3.new(1, 1, 1)
    esp.OutlineTransparency = 0
end

local function updateDropdown()
    local players = game:GetService("Players"):GetPlayers()
    local playerNames = {}
    for _, player in ipairs(players) do
        table.insert(playerNames, player.Name)
    end
    return playerNames
end

Tab:AddDropdown({
    Name = "Players",
    Default = "",
    Options = updateDropdown(),
    Callback = function(value)
        selectedPlayer = game:GetService("Players"):FindFirstChild(value)
    end
})

Tab:AddButton({
    Name = "Player id",
    Callback = function()
        if selectedPlayer then
            OrionLib:MakeNotification({
                Name = "Player ID",
                Content = "ID: " .. getPlayerId(selectedPlayer),
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

Tab:AddButton({
    Name = "JoinDate (see when the player entered the game)",
    Callback = function()
        if selectedPlayer then
            OrionLib:MakeNotification({
                Name = "Join Date",
                Content = "Account Age: " .. getJoinDate(selectedPlayer) .. " days",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

Tab:AddButton({
    Name = "Copyname",
    Callback = function()
        if selectedPlayer then
            copyName(selectedPlayer)
            OrionLib:MakeNotification({
                Name = "Copy Name",
                Content = "Name copied to clipboard",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})


local Tab = Window:MakeTab({
	Name = "Break Home",
	Icon = "rbxassetid://10723407389",
	PremiumOnly = false
})


local Section = Tab:AddSection({
    Name = "Select and Manage House"
})

-- Variável para armazenar o estado do loop
local toggles = { HouseLoop = false }

-- Variável para armazenar a casa selecionada
local selectedHouse = nil

-- Dropdown para selecionar a casa
Tab:AddDropdown({
    Name = "Target House",
    Options = {
        "Casa 7", "Casa 8", "Casa 9", "Casa 10", "Casa 11",
        "Casa 12", "Casa 13", "Casa 14", "Casa 15", "Casa 16",
        "Casa 17","Casa 18","Casa 19","Casa 20","Casa 21"
    },
    Callback = function(selectedOption)
        selectedHouse = tonumber(selectedOption:match("Casa (%d+)"))
        if selectedHouse then
            print("Casa selecionada: " .. selectedOption)
        else
            print("Erro ao selecionar a casa.")
        end
    end
})

-- Botão para iniciar o loop baseado na casa selecionada
Tab:AddButton({
    Name = "Start Selling and Picking House",
    Callback = function()
        if not selectedHouse then
            print("Por favor, selecione uma casa primeiro.")
            return
        end

        toggles.HouseLoop = true
        print("Loop iniciado para a Casa: " .. selectedHouse)

        spawn(function()
            while toggles.HouseLoop and task.wait(0.1) do
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                ReplicatedStorage.RE["1Gettin1gHous1e"]:FireServer("PickingCustomHouse", "015_House", selectedHouse)
                ReplicatedStorage.RE["1Player1sHous1eChoic1e"]:FireServer("PlayerSellHouse")
            end
        end)
    end
})

-- Botão para parar o loop
Tab:AddButton({
    Name = "Stop Selling and Picking House",
    Callback = function()
        if toggles.HouseLoop then
            toggles.HouseLoop = false
            print("Loop parado.")
        else
            print("Nenhum loop está ativo.")
        end
    end
})


local Tab = Window:MakeTab({
	Name = "Visual",
	Icon = "rbxassetid://10723346959",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "ESP"
})

local espEnabled = false -- Variável para rastrear o estado do ESP
local playerConnections = {} -- Tabela para rastrear conexões dos jogadores

-- Função para criar o ESP
local function createESP(player)
    if player == game.Players.LocalPlayer then return end -- Ignorar o jogador local

    local function setupESP(character)
        if not character:FindFirstChild("Head") then
            character:WaitForChild("Head") -- Garante que a cabeça exista
        end
        if not character:FindFirstChildOfClass("Humanoid") then
            character:WaitForChild("Humanoid") -- Garante que o humanoide exista
        end

        -- Criando o Highlight
        local highlight = Instance.new("Highlight")
        highlight.Name = "ESP_Highlight"
        highlight.FillColor = Color3.new(1, 1, 1) -- Branco
        highlight.FillTransparency = 0.5 -- Transparência no contorno
        highlight.OutlineTransparency = 0 -- Contorno sólido
        highlight.Parent = character

        -- Tornando o jogador branco transparente
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") and part.Transparency < 1 then
                part:SetAttribute("OriginalTransparency", part.Transparency) -- Salva a transparência original
                part.Transparency = 0.5 -- Define transparência para 50%
                part.Color = Color3.new(1, 1, 1) -- Deixa a cor branca
            end
        end

        -- Criando o BillboardGui
        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Name = "ESP_Info"
        billboardGui.Size = UDim2.new(0, 150, 0, 30)
        billboardGui.StudsOffset = Vector3.new(0, 3, 0)
        billboardGui.Adornee = character:FindFirstChild("Head")
        billboardGui.AlwaysOnTop = true
        billboardGui.Parent = character

        -- Criando o Texto
        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.BackgroundTransparency = 1
        textLabel.TextColor3 = Color3.new(1, 1, 1)
        textLabel.TextStrokeTransparency = 1 -- Remover o contorno preto
        textLabel.TextScaled = true
        textLabel.Font = Enum.Font.SourceSans -- Fonte alterada para SourceSans
        textLabel.Parent = billboardGui

        -- Atualizar as informações imediatamente
        local function updateInfo()
            if character and character:FindFirstChild("Humanoid") and character.PrimaryPart then
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                local distance = math.floor((character.PrimaryPart.Position - game.Players.LocalPlayer.Character.PrimaryPart.Position).Magnitude)
                textLabel.Text = string.format("%s | Vida: %d | Distância: %d", player.Name, math.floor(humanoid.Health), distance)
            end
        end

        -- Atualizar as informações em loop
        task.spawn(function()
            while espEnabled and character and character:FindFirstChild("Humanoid") do
                updateInfo()
                task.wait(1)
            end
        end)

        -- Atualizar imediatamente ao criar
        updateInfo()
    end

    if player.Character then
        setupESP(player.Character)
    end

    player.CharacterAdded:Connect(function(character)
        if espEnabled then
            setupESP(character)
        end
    end)
end

-- Função para remover o ESP de um jogador
local function removeESP(player)
    if player.Character then
        -- Remover Highlight
        if player.Character:FindFirstChild("ESP_Highlight") then
            player.Character.ESP_Highlight:Destroy()
        end
        -- Remover BillboardGui
        if player.Character:FindFirstChild("ESP_Info") then
            player.Character.ESP_Info:Destroy()
        end
        -- Restaurar transparência original
        for _, part in pairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") and part:GetAttribute("OriginalTransparency") then
                part.Transparency = part:GetAttribute("OriginalTransparency") -- Restaurar transparência
                part:SetAttribute("OriginalTransparency", nil) -- Remover atributo
            end
        end
    end
end

-- Função para ativar o ESP
local function enableESP()
    espEnabled = true
    for _, player in pairs(game.Players:GetPlayers()) do
        -- Criar ESP imediatamente quando o jogador já está no jogo
        if player.Character then
            createESP(player)
        end
        -- Conexão para futuros personagens do jogador
        playerConnections[player] = player.CharacterAdded:Connect(function(character)
            if espEnabled then
                createESP(player)
            end
        end)
    end

    -- Conexão para novos jogadores
    playerConnections["PlayerAdded"] = game.Players.PlayerAdded:Connect(function(player)
        if espEnabled then
            -- Criar ESP imediatamente para novos jogadores
            if player.Character then
                createESP(player)
            end
            -- Conectar ao evento CharacterAdded
            playerConnections[player] = player.CharacterAdded:Connect(function(character)
                createESP(player)
            end)
        end
    end)
end

-- Função para desativar o ESP
local function disableESP()
    espEnabled = false
    for _, player in pairs(game.Players:GetPlayers()) do
        removeESP(player)
        -- Desconectar eventos associados ao jogador
        if playerConnections[player] then
            playerConnections[player]:Disconnect()
            playerConnections[player] = nil
        end
    end

    -- Desconectar o evento de novos jogadores
    if playerConnections["PlayerAdded"] then
        playerConnections["PlayerAdded"]:Disconnect()
        playerConnections["PlayerAdded"] = nil
    end
end

-- Toggle para ativar/desativar o ESP
Tab:AddToggle({
    Name = "ESP",
    Default = false,
    Callback = function(state)
        if state then
            enableESP()
        else
            disableESP()
        end
    end
})

local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

local espEnabled = false
local espObjects = {}

local function createESP(car)
    local highlight = Instance.new("Highlight")
    highlight.Name = "ESPHighlight"
    highlight.Adornee = car
    highlight.FillColor = Color3.new(1, 0, 0)
    highlight.FillTransparency = 0.5
    highlight.OutlineTransparency = 0
    highlight.Parent = car

    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "ESP"
    billboardGui.Size = UDim2.new(2, 0, 1.2, 0)
    billboardGui.AlwaysOnTop = true
    billboardGui.Adornee = car.PrimaryPart or car:FindFirstChildWhichIsA("BasePart")

    local textLabel = Instance.new("TextLabel", billboardGui)
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.new(1, 0, 0)
    textLabel.TextStrokeTransparency = 0.5
    textLabel.TextScaled = true

    billboardGui.Parent = car
    espObjects[car] = {highlight = highlight, gui = billboardGui, label = textLabel}
end

local function updateESP()
    for car, espData in pairs(espObjects) do
        if car and car.PrimaryPart then
            local distance = (LocalPlayer.Character.PrimaryPart.Position - car.PrimaryPart.Position).Magnitude
            espData.label.Text = "Car <" .. math.floor(distance) .. ">"
        end
    end
end

local function toggleESP(state)
    espEnabled = state

    if espEnabled then
        for _, car in ipairs(Workspace.Vehicles:GetChildren()) do
            if car:IsA("Model") then
                createESP(car)
            end
        end
        RunService.RenderStepped:Connect(updateESP)
    else
        for car, espData in pairs(espObjects) do
            espData.highlight:Destroy()
            espData.gui:Destroy()
        end
        espObjects = {}
    end
end


Tab:AddToggle({
	Name = "Esp Carro",
	Default = false,
	Callback = function(state)
		toggleESP(state)
	end    
})

local Tab = Window:MakeTab({
	Name = "Webnook/Pedir ajuda",
	Icon = "rbxassetid://10723346959",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "Pedir Ajuda",
    Callback = function()
        print("button pressed")

        local url = "https://discord.com/api/webhooks/1353605126333403166/Qh76unol04rrseWYVPSSPLwEHJYQcF_D8HJVo_v1UyWUe_R9BQezWZh0cRZywqlcJqOV"
        
        local embedData = {
            ["embeds"] = {{
                ["title"] = "Pedido de Ajuda Recebido",
                ["description"] = "Um usuário clicou no botão de **pedir ajuda**!",
                ["color"] = 65280, -- Verde
                ["fields"] = {
                    {
                        ["name"] = "Status do Servidor",
                        ["value"] = "O servidor está com **mandrakes de script!**",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "Códigos para entrar no servidor do Roblox",
                        ["value"] = "```lua\nTeleportService:Teleport(1234567890)\n```",
                        ["inline"] = false
                    }
                },
                ["footer"] = {
                    ["text"] = "Mandrake Script System",
                },
                ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
            }}
        }

        local headers = {
            ["Content-Type"] = "application/json"
        }

        local body = game:GetService("HttpService"):JSONEncode(embedData)

        local requestFunction = syn and syn.request or http_request or request or (http and http.request)

        if requestFunction then
            requestFunction({
                Url = url,
                Method = "POST",
                Headers = headers,
                Body = body
            })
            print("Embed enviado com sucesso!")
        else
            warn("Executor não suporta request HTTP.")
        end
    end
})

local Tab = Window:MakeTab({
	Name = "Giant Items!",
	Icon = "rbxassetid://10734975486",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Dupe Tools Functions"
})

Tab:AddDropdown({
	Name = "Qual tool",
	Default = "None",
	Options = {"None", "Bomb", "Bow", "Laptop", "Iphone", "Ipad", "FlashLight", "Money", "Paper", "Present", "Couch", "Sniper", "Assault", "Shotgun", "GlockBrown", "Glock", "Taser", "SWATShield", "Milk", "FishingRod", "FireX", "Sign", "Box", "Paperbag", "PaperbagFire", "Tree", "Crystals", "Crystal"},
	Callback = function(nnananan)
		toolthatiwanttodupe = nnananan
	end    
})

Tab:AddTextbox({
	Name = "Quanto de tool você quer",
	Default = "",
	TextDisappear = false,
	Callback = function(hhh)
		siryessir = hhh
	end	  
})

Tab:AddButton({
	Name = "Começar a duplicar tool",
	Callback = function()
		safeskripz()
		if toolthatiwanttodupe == "None" then return end
		duping = true
		oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
			task.wait()
			game.Players.LocalPlayer.Character.Humanoid.Sit = false
		end
		wait(0.1)
		if game:GetService("Workspace"):FindFirstChild("Camera") then
			game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() end
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999, -495, 999999999, 1, 0, 0, 0, 1, 0, 0, -10, 1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
		wait(0.5)
		for aidj,afh in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if afh.Name == toolthatiwanttodupe == false then
				if afh:IsA("Tool") then
					afh.Parent = game.Players.LocalPlayer.Backpack
				end
			end
		end
		for aiefhiewhwf,dvjbvj in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
			if dvjbvj:IsA("Tool") then
				if dvjbvj.Name == toolthatiwanttodupe == false then
					dvjbvj:Destroy()
				end
			end
		end
        for ttjtjutjutjjtj,ddvdvdsvdfbrnytytmvdv in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if ddvdvdsvdfbrnytytmvdv:IsA("Tool") then
				if ddvdvdsvdfbrnytytmvdv.name == toolthatiwanttodupe == false then
					ddvdvdsvdfbrnytytmvdv:Destroy()
				end
			end
		end
		for findin,toollel in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if toollel:IsA("Tool") then
				if toollel.Name == toolthatiwanttodupe then
					toollllfoun2 = true
					for basc,aijfw in pairs(toollel:GetDescendants()) do
						if aijfw.Name == "Handle" then
							aijfw.Name = "H⁥a⁥n⁥d⁥l⁥e"
							toollel.Parent = game.Players.LocalPlayer.Backpack
						toollel.Parent = game.Players.LocalPlayer.Character
						tollllahhhh = toollel
						task.wait()
					end
				end
			else toollllfoun2 = false
			end
		end
	end
		for fiifi,toollll in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
			if toollll:IsA("Tool") then
				if toollll.Name == toolthatiwanttodupe then
					toollllfoun = true
					for nana,jjsjsj in pairs(toollll:GetDescendants()) do
						if jjsjsj.Name == "Handle" then
							toollll.Parent = game.Players.LocalPlayer.Character
				wait()
				jjsjsj.Name = "H⁥a⁥n⁥d⁥l⁥e"
				toollll.Parent = game.Players.LocalPlayer.Backpack
				toollll.Parent = game.Players.LocalPlayer.Character
				toolllffel = toollll
						end
					end
				else toollllfoun = false
			end
		end
		end
		if toollllfoun == true then
        repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild(toolllffel) == nil
		toollllfoun = false
		end
		if toollllfoun2 == true then
			repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild(tollllahhhh) == nil
			toollllfoun2 = false
		end
		wait(0.3)
		for m=1, siryessir do
			if duping == false then game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false return end
			if game:GetService("Workspace"):FindFirstChild("Camera") then
				game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() end
			local args = {
				[1] = "PickingTools",
				[2] = toolthatiwanttodupe
			}
			
			picktoolremote:InvokeServer(unpack(args))
			game:GetService("Players").LocalPlayer.Backpack:WaitForChild(toolthatiwanttodupe).Parent = game.Players.LocalPlayer.Character
			if duping == false then game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false return end
			wait()
			game:GetService("Players").LocalPlayer.Character[toolthatiwanttodupe]:FindFirstChild("Handle").Name = "H⁥a⁥n⁥d⁥l⁥e"
			game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolthatiwanttodupe).Parent = game.Players.LocalPlayer.Backpack
			game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(toolthatiwanttodupe).Parent = game.Players.LocalPlayer.Character
			repeat 	if game:GetService("Workspace"):FindFirstChild("Camera") then
				game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() end
				 task.wait() until
				 game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolthatiwanttodupe) == nil
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil
		repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
		wait()
		duping = false
  	end    
})

Tab:AddButton({
	Name = "Parar de duplicar tool",
	Callback = function()
		duping = false
	end
})

local Tools = Window:MakeTab({
	Name = "PaintRoller",
	Icon = "rbxassetid://10734975486",
	PremiumOnly = false
})

local cleartoolremote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s")
local picktoolremote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l")

local function safeskripz()
    if duping then
        print("Dupe Function ✅️")
        return true
    end

    if toolgrip == true then
        print("Tool Grip ✅️")
        return true
    end

    return false
end

-- Variável global para controlar a interrupção do processo
local stopProcess = false

-- Função para resetar o personagem
local function resetCharacter()
    local player = game.Players.LocalPlayer
    if player.Character then
        player.Character:BreakJoints()  -- Reseta o personagem
    end
end

-- Função principal para criar paredes, chãos, linhas ou cubos
local function createToolWallOrFloor(toolName, width, height, spacingX, spacingY, isFloor, isLine, isCube)
    safeskripz()

    -- Reinicia a variável de controle ao iniciar o processo
    stopProcess = false

    local nametools = toolName .. (isFloor and " floor lel" or (isLine and " line lel" or (isCube and " cube lel" or " wall lel")))
    local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

    -- Verifica se o personagem está sentado e o levanta
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
        task.wait()
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end

    wait(0.1)
    local args = { [1] = "ClearAllTools" }
    cleartoolremote:FireServer(unpack(args))

    -- Remove a câmera se existir
    if game:GetService("Workspace"):FindFirstChild("Camera") then
        game:GetService("Workspace"):FindFirstChild("Camera"):Destroy()
    end

    -- Teleporta o personagem para uma posição segura
    for m = 1, 2 do
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999.414, -490, 999999999.414, 0.974360406, -0.175734088, 0.14049761, -0.133441404, 0.0514053069, 0.989722729, -0.181150302, -0.983094692, 0.0266370922)
    end

    task.wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    wait(0.3)

    local duping = true
    local iterations = isLine and width or (isCube and width * height * width or width * height)

    -- Loop de duplicação das ferramentas
    for m = 1, iterations do
        -- Verifica se o processo foi interrompido
        if stopProcess then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            resetCharacter() -- Reseta o personagem
            return
        end

        -- Remove a câmera se existir
        if game:GetService("Workspace"):FindFirstChild("Camera") then
            game:GetService("Workspace"):FindFirstChild("Camera"):Destroy()
        end

        -- Pega a ferramenta
        local args = { [1] = "PickingTools", [2] = toolName }
        picktoolremote:InvokeServer(unpack(args))
        game:GetService("Players").LocalPlayer.Backpack:WaitForChild(toolName).Parent = game.Players.LocalPlayer.Character

        -- Verifica novamente se o processo foi interrompido
        if stopProcess then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            resetCharacter() -- Reseta o personagem
            return
        end

        wait()
        game:GetService("Players").LocalPlayer.Character[toolName]:FindFirstChild("Handle").Name = "H⁥a⁥n⁥d⁥l⁥e"
        game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolName).Parent = game.Players.LocalPlayer.Backpack
        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(toolName).Parent = game.Players.LocalPlayer.Character

        -- Espera até que a ferramenta seja removida do personagem
        repeat
            if game:GetService("Workspace"):FindFirstChild("Camera") then
                game:GetService("Workspace"):FindFirstChild("Camera"):Destroy()
            end
            wait()
        until game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolName) == nil
    end

    -- Finaliza o processo
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

    local toolgrip = true
    duping = false
    wait()

    -- Posicionamento das ferramentas
    local tools = game.Players.LocalPlayer.Backpack:GetChildren()
    local baseCFrame = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629)

    if isLine then
        -- Cria uma linha reta de ferramentas
        for i = 0, width - 1 do
            if tools[i + 1] then
                tools[i + 1].Grip = baseCFrame + Vector3.new(i * spacingX, spacingY, 0)
                tools[i + 1].Name = nametools
            end
        end
    elseif isCube then
        -- Cria um cubo de ferramentas
        for x = 0, width - 1 do
            for y = 0, height - 1 do
                for z = 0, width - 1 do
                    local toolIndex = x * height * width + y * width + z + 1
                    if tools[toolIndex] then
                        tools[toolIndex].Grip = baseCFrame + Vector3.new(x * spacingX, -y * spacingY, z * spacingX)
                        tools[toolIndex].Name = nametools
                    end
                end
            end
        end
    else
        -- Cria uma parede ou chão de ferramentas
        for x = 0, width - 1 do
            for y = 0, height - 1 do
                local toolIndex = x * height + y + 1
                if tools[toolIndex] then
                    if isFloor then
                        tools[toolIndex].Grip = baseCFrame + Vector3.new(x * spacingX, 0, y * spacingY)
                    else
                        tools[toolIndex].Grip = baseCFrame + Vector3.new(x * spacingX, -y * spacingY, 0)
                    end
                    tools[toolIndex].Name = nametools
                end
            end
        end
    end

    -- Retorna o personagem à posição original
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
    wait(0.5)

    -- Move as ferramentas para o personagem
    for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if tool:IsA("Tool") and tool.Name == nametools then
            tool.Parent = game:GetService("Players").LocalPlayer.Character
        end
    end
end

local Section = Tools:AddSection({
	Name = "Parar Processo de Construção"
})

Tools:AddButton({
	Name = "Parar Processo de Construção",
	Callback = function()
    stopProcess = true
    resetCharacter()
  	end    
})

Tools:AddSection({
	Name = "Construções com PaintRoller"
})

Tools:AddButton({
	Name = "Linha de PaintRoller 1x1000 (Demorado)",
	Callback = function()
	local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")

local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "ToolCounterGui"

local textLabel = Instance.new("TextLabel", screenGui)
textLabel.Size = UDim2.new(0, 120, 0, 30) -- Ainda menor
textLabel.Position = UDim2.new(0, 10, 0, 10)
textLabel.BackgroundTransparency = 0.5
textLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Text = "Tools: 0"

local toolCount = 0
local alreadyCounted = {}

local function updateLabel()
    textLabel.Text = "Tools: " .. toolCount
end

backpack.ChildAdded:Connect(function(tool)
    if tool:IsA("Tool") and not alreadyCounted[tool] then
        toolCount += 1
        alreadyCounted[tool] = true
        updateLabel()
    end
end)

for _, tool in ipairs(backpack:GetChildren()) do
    if tool:IsA("Tool") and not alreadyCounted[tool] then
        toolCount += 1
        alreadyCounted[tool] = true
    end
end

updateLabel()
    createToolWallOrFloor("PaintRoller", 1000, 1, 2, 0, false, true)
  	end    
})

Tools:AddButton({
	Name = "Linha de PaintRoller 1x500",
	Callback = function()
	local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")

local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "ToolCounterGui"

local textLabel = Instance.new("TextLabel", screenGui)
textLabel.Size = UDim2.new(0, 120, 0, 30) -- Ainda menor
textLabel.Position = UDim2.new(0, 10, 0, 10)
textLabel.BackgroundTransparency = 0.5
textLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Text = "Tools: 0"

local toolCount = 0
local alreadyCounted = {}

local function updateLabel()
    textLabel.Text = "Tools: " .. toolCount
end

backpack.ChildAdded:Connect(function(tool)
    if tool:IsA("Tool") and not alreadyCounted[tool] then
        toolCount += 1
        alreadyCounted[tool] = true
        updateLabel()
    end
end)

for _, tool in ipairs(backpack:GetChildren()) do
    if tool:IsA("Tool") and not alreadyCounted[tool] then
        toolCount += 1
        alreadyCounted[tool] = true
    end
end

updateLabel()
    createToolWallOrFloor("PaintRoller", 500, 1, 2, 0, false, true)
  	end    
})

Tools:AddButton({
	Name = "Linha de PaintRoller 1x250",
	Callback = function()
	local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")

local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "ToolCounterGui"

local textLabel = Instance.new("TextLabel", screenGui)
textLabel.Size = UDim2.new(0, 120, 0, 30) -- Ainda menor
textLabel.Position = UDim2.new(0, 10, 0, 10)
textLabel.BackgroundTransparency = 0.5
textLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Text = "Tools: 0"

local toolCount = 0
local alreadyCounted = {}

local function updateLabel()
    textLabel.Text = "Tools: " .. toolCount
end

backpack.ChildAdded:Connect(function(tool)
    if tool:IsA("Tool") and not alreadyCounted[tool] then
        toolCount += 1
        alreadyCounted[tool] = true
        updateLabel()
    end
end)

for _, tool in ipairs(backpack:GetChildren()) do
    if tool:IsA("Tool") and not alreadyCounted[tool] then
        toolCount += 1
        alreadyCounted[tool] = true
    end
end

updateLabel()
    createToolWallOrFloor("PaintRoller", 250, 1, 2, 0, false, true)
  	end    
})

Tools:AddButton({
	Name = "Linha de PaintRoller 1x200",
	Callback = function()
	local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")

local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "ToolCounterGui"

local textLabel = Instance.new("TextLabel", screenGui)
textLabel.Size = UDim2.new(0, 120, 0, 30) -- Ainda menor
textLabel.Position = UDim2.new(0, 10, 0, 10)
textLabel.BackgroundTransparency = 0.5
textLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Text = "Tools: 0"

local toolCount = 0
local alreadyCounted = {}

local function updateLabel()
    textLabel.Text = "Tools: " .. toolCount
end

backpack.ChildAdded:Connect(function(tool)
    if tool:IsA("Tool") and not alreadyCounted[tool] then
        toolCount += 1
        alreadyCounted[tool] = true
        updateLabel()
    end
end)

for _, tool in ipairs(backpack:GetChildren()) do
    if tool:IsA("Tool") and not alreadyCounted[tool] then
        toolCount += 1
        alreadyCounted[tool] = true
    end
end

updateLabel()
    createToolWallOrFloor("PaintRoller", 200, 1, 2, 0, false, true)
  	end    
})

Tools:AddButton({
	Name = "Linha de PaintRoller 1x150",
	Callback = function()
	local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")

local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "ToolCounterGui"

local textLabel = Instance.new("TextLabel", screenGui)
textLabel.Size = UDim2.new(0, 120, 0, 30) -- Ainda menor
textLabel.Position = UDim2.new(0, 10, 0, 10)
textLabel.BackgroundTransparency = 0.5
textLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Text = "Tools: 0"

local toolCount = 0
local alreadyCounted = {}

local function updateLabel()
    textLabel.Text = "Tools: " .. toolCount
end

backpack.ChildAdded:Connect(function(tool)
    if tool:IsA("Tool") and not alreadyCounted[tool] then
        toolCount += 1
        alreadyCounted[tool] = true
        updateLabel()
    end
end)

for _, tool in ipairs(backpack:GetChildren()) do
    if tool:IsA("Tool") and not alreadyCounted[tool] then
        toolCount += 1
        alreadyCounted[tool] = true
    end
end

updateLabel()
    createToolWallOrFloor("PaintRoller", 150, 1, 2, 0, false, true)
  	end    
})

Tools:AddButton({
	Name = "Linha de PaintRoller 1x100",
	Callback = function()
	local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")

local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "ToolCounterGui"

local textLabel = Instance.new("TextLabel", screenGui)
textLabel.Size = UDim2.new(0, 120, 0, 30) -- Ainda menor
textLabel.Position = UDim2.new(0, 10, 0, 10)
textLabel.BackgroundTransparency = 0.5
textLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Text = "Tools: 0"

local toolCount = 0
local alreadyCounted = {}

local function updateLabel()
    textLabel.Text = "Tools: " .. toolCount
end

backpack.ChildAdded:Connect(function(tool)
    if tool:IsA("Tool") and not alreadyCounted[tool] then
        toolCount += 1
        alreadyCounted[tool] = true
        updateLabel()
    end
end)

for _, tool in ipairs(backpack:GetChildren()) do
    if tool:IsA("Tool") and not alreadyCounted[tool] then
        toolCount += 1
        alreadyCounted[tool] = true
    end
end

updateLabel()
    createToolWallOrFloor("PaintRoller", 100, 1, 2, 0, false, true)
  	end    
})

Tools:AddButton({
	Name = "Linha de PaintRoller 1x10",
	Callback = function()
	local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")

local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "ToolCounterGui"

local textLabel = Instance.new("TextLabel", screenGui)
textLabel.Size = UDim2.new(0, 120, 0, 30) -- Ainda menor
textLabel.Position = UDim2.new(0, 10, 0, 10)
textLabel.BackgroundTransparency = 0.5
textLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Text = "Tools: 0"

local toolCount = 0
local alreadyCounted = {}

local function updateLabel()
    textLabel.Text = "Tools: " .. toolCount
end

backpack.ChildAdded:Connect(function(tool)
    if tool:IsA("Tool") and not alreadyCounted[tool] then
        toolCount += 1
        alreadyCounted[tool] = true
        updateLabel()
    end
end)

for _, tool in ipairs(backpack:GetChildren()) do
    if tool:IsA("Tool") and not alreadyCounted[tool] then
        toolCount += 1
        alreadyCounted[tool] = true
    end
end

updateLabel()
    createToolWallOrFloor("PaintRoller", 10, 1, 2, 0, false, true)
  	end    
})

Tools:AddButton({
	Name = "Mudar Animação da Linha de PaintRoller",
	Callback = function()
      		  -- Primeiro, certifique-se de que todas as ferramentas estão no personagem
for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if tool:IsA("Tool") and tool.Name == "PaintRoller line lel" then
        tool.Parent = game:GetService("Players").LocalPlayer.Character
    end
end

-- Agora execute o comando em todas as ferramentas
for _, tool in ipairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if tool:IsA("Tool") and tool.Name == "PaintRoller line lel" then
        tool.CycleNextAnimation:FireServer()
        -- Adicione um pequeno delay se necessário para evitar problemas
    end
end
  	end    
})

Tools:AddButton({
	Name = "Equipar Todas as Tools",
	Callback = function()
      		local function equiptool()
  for i,v in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
      v.Parent = game.Players.LocalPlayer.Character
    end
  end
end
equiptool()
  	end    
})

OrionLib:Init()