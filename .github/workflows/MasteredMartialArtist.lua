--Move & Ultimate Names

--[[Adding Quote or Message when Executed]]

local player = game.Players.LocalPlayer
repeat wait() until player.Character
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Messages to send
local messages = { "Woah hoah! Where am I?", "Actually I don't really care where I am right now.",
    "Time to put my Martial Arts to the test!" }

local function sendMessage(text)
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text, "All")
end

spawn(function()
    for _, message in ipairs(messages) do
        sendMessage(message)
        wait(2.5) -- Wait time for each message
    end
end)

local Aura = character.HumanoidRootPart.EsperShield:FindFirstChild("ParticleEmitter")
Aura.Color = ColorSequence.new(Color3.fromRGB(100,255,255)) -- NOT TESTED YET!!! MAY BE UNSTABLE
Aura.Rate = NumberRange.new(15)
Aura.Enabled = true


--[[END OF QUOTES]]


local Debris = game:GetService("Debris")


local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("1").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Tornado Kick"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("2").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Move2"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("3").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Earthquake"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("4").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Aerial Stomp"


local Players = game:GetService("Players")

local player = Players.LocalPlayer

local playerGui = player:WaitForChild("PlayerGui")


local function findGuiAndSetText()
    local screenGui = playerGui:FindFirstChild("ScreenGui")

    if screenGui then
        local magicHealthFrame = screenGui:FindFirstChild("MagicHealth")

        if magicHealthFrame then
            local textLabel = magicHealthFrame:FindFirstChild("TextLabel")

            if textLabel then
                textLabel.Text = "Your Inner Dragon..."
            end
        end
    end
end


playerGui.DescendantAdded:Connect(findGuiAndSetText)

findGuiAndSetText()

--[[Animations]]

--[[Move 1]]

local animationId = 17799224866


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
        local p = game.Players.LocalPlayer

        local Humanoid = p.Character:WaitForChild("Humanoid")


        for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end


        local AnimAnim = Instance.new("Animation")
        AnimAnim.AnimationId = "rbxassetid://15090032390"
        local Anim = Humanoid:LoadAnimation(AnimAnim)

        local Kickdown = Instance.new("Animation")
        Kickdown.AnimationId = "rbxassetid://13294790250"
        local KickdownAnim = Humanoid:LoadAnimation(Kickdown)


        local startTime = 1

        sendMessage("Tornado Kick!!")

        Anim:Play()

        Anim:AdjustSpeed(0.5)

        Anim.TimePosition = startTime

        Anim:AdjustSpeed(2)
        delay(1.3, function()
            Anim:Stop()
            KickdownAnim:Play()
        end)
    end
end

--[[END OF MOVE 1 ANIM]]

--[[Move 2]]


humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 10466974800


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
        local p = game.Players.LocalPlayer

        local Humanoid = p.Character:WaitForChild("Humanoid")


        for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end


        local AnimAnim = Instance.new("Animation")

        AnimAnim.AnimationId = "rbxassetid://18181589384"

        local Anim = Humanoid:LoadAnimation(AnimAnim)


        local startTime = 0


        Anim:Play()

        Anim:AdjustSpeed(1)

        Anim.TimePosition = startTime

        Anim:AdjustSpeed(1)
    end
end

--[[END OF MOVE 2 ANIM]]

--[[Move 3]]


humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 17857788598


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")

local StompDB = false

local function onAnimationPlayed(animationTrack)
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId and StompDB == false then
        StompDB = true
        local p = game.Players.LocalPlayer

        local Humanoid = p.Character:WaitForChild("Humanoid")


        for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end


        local AnimAnim = Instance.new("Animation")

        AnimAnim.AnimationId = "rbxassetid://129651400898906"

        local Anim = Humanoid:LoadAnimation(AnimAnim)

        sendMessage("*Jumps Forward*")

        spawn(function()
            humanoid.AutoRotate = true
            for i = 1, 75 do
                local BodyVelocitySuspect = humanoid.RootPart:FindFirstChildOfClass("BodyVelocity")
                if BodyVelocitySuspect then
                    -- BodyVelocitySuspect.Parent = character.Torso
                    BodyVelocitySuspect.MaxForce = Vector3.new(40000, 0, 40000)
                    BodyVelocitySuspect.Velocity = character.Torso.CFrame.LookVector * 50
                end
                task.wait()
            end
            humanoid.AutoRotate = false
            Anim:AdjustSpeed(1.5)
            sendMessage("EARTHQUAKE!")
        end)



        Anim:Play()
        Anim:AdjustSpeed(1)
        wait(2)
        StompDB = false
    end
end

--[[END OF MOVE 3 ANIM]]

--[[Move 4]]


humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 18182425133


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
        local p = game.Players.LocalPlayer

        local Humanoid = p.Character:WaitForChild("Humanoid")


        for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end

        spawn(function()
            local AnimAnim = Instance.new("Animation")

            AnimAnim.AnimationId = "rbxassetid://12510170988"

            local Anim = Humanoid:LoadAnimation(AnimAnim)
            Anim:Play()
            Anim:AdjustSpeed(1)

            sendMessage("Yah!")

            spawn(function()
                for i = 1, 40 do
                    local BodyVelocitySuspect = humanoid.RootPart:FindFirstChildOfClass("BodyVelocity")
                    if BodyVelocitySuspect then
                        BodyVelocitySuspect:Destroy()
                    end
                    wait()
                end
                --sendMessage("Now it's time to STOMP!!!!")
            end)


            wait(1.6)
            Anim:Stop()

            local SlamdownAnim = Instance.new("Animation")

            SlamdownAnim.AnimationId = "rbxassetid://13927612951"

            local SlamdownAnimAnim = Humanoid:LoadAnimation(SlamdownAnim)
            SlamdownAnimAnim:Play()
            SlamdownAnimAnim:AdjustSpeed(1)
            wait(1.75)
            SlamdownAnimAnim:Stop()
        end)
    end
end

--[[END OF MOVE 4 ANIM]]

--[[Move 4 ULTIMATE]]


humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 75502010126640


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
        local p = game.Players.LocalPlayer

        local Humanoid = p.Character:WaitForChild("Humanoid")


        --[[for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end]]


       local AnimAnim = Instance.new("Animation")
        AnimAnim.AnimationId = "rbxassetid://17420452843"

        local Anim = Humanoid:LoadAnimation(AnimAnim)
       -- local startTime = .5
   

        sendMessage("Alright, let's get this dude over with!")
       
        wait(7.5)
        sendMessage("SPONTATNEOUS COMBUSTION!")
        Anim:Play()
        Anim.TimePosition = 0
        Anim:AdjustSpeed(30)
        Anim.Ended:Connect(function ()
            Anim:AdjustSpeed(Anim.Speed/1.25)
            if Anim.Speed > 1 then
                 Anim:Stop()
            end
        end)
        
      --  local character = workspace.Living:FindFirstChild("Lovelydovely1483")
       --[[spawn(function()
            local BodyPosition = instance.new("BodyPosition")
            BodyPosition.Parent = character.Torso
            BodyPosition.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            BodyPosition.P = 50000
            local OGPosition = character.HumanoidRootPart.Position
            for i=1,15 do
                BodyPosition.Position = (OGPosition + Vector3.new(math.random(-50,50),math.random(10,50),math.random(-50,50)))
                wait(.1)
            end
            BodyPosition.Position = (OGPosition + Vector3.new(0,60,0))
			wait(.5)
            BodyPosition:Destroy()
        end)]]
        wait(2)
        sendMessage("> > DRACONIC NUCLEAR KICK!!!!!! < <")
    end
end

--[[END OF MOVE 4 ULTIMATE ANIM]]


--[[Wall combo]]

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local animationId = 15955393872


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
        local p = game.Players.LocalPlayer

        local Humanoid = p.Character:WaitForChild("Humanoid")


        for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end


        local AnimAnim = Instance.new("Animation")

        AnimAnim.AnimationId = "rbxassetid://15943915877"

        local Anim = Humanoid:LoadAnimation(AnimAnim)


        local startTime = 0.05


        Anim:Play()

        Anim:AdjustSpeed(0)

        Anim.TimePosition = startTime

        Anim:AdjustSpeed(1)
    end
end

--[[END OF WALL COMBO ANIM]]

--[[Ult Activation]]

humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 12447707844


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
        local p = game.Players.LocalPlayer

        local Humanoid = p.Character:WaitForChild("Humanoid")


        for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end


        local AnimAnim = Instance.new("Animation")

        AnimAnim.AnimationId = "rbxassetid://17106858586 "

        local Anim = Humanoid:LoadAnimation(AnimAnim)


        local startTime = 0


        Anim:Play()

        Anim:AdjustSpeed(0)

        Anim.TimePosition = startTime

        Anim:AdjustSpeed(1)
    end
end
--[[END OF ULT ACTIVATION ANIM]]

--[[Dash]]

humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 10479335397


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
        local p = game.Players.LocalPlayer

        local Humanoid = p.Character:WaitForChild("Humanoid")


        for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end


        local AnimAnim = Instance.new("Animation")

        AnimAnim.AnimationId = "rbxassetid://13294790250"

        local Anim = Humanoid:LoadAnimation(AnimAnim)


        local startTime = 0


        Anim:Play()

        Anim:AdjustSpeed(0)

        Anim.TimePosition = startTime

        Anim:AdjustSpeed(1.3)


        delay(1.8, function()
            Anim:Stop()
        end)
    end
end

--[[END OF DASH ANIM]]

--[[Uppercut]]
humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 10503381238


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
        local p = game.Players.LocalPlayer

        local Humanoid = p.Character:WaitForChild("Humanoid")


        for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end


        local AnimAnim = Instance.new("Animation")

        AnimAnim.AnimationId = "rbxassetid://14900168720"

        local Anim = Humanoid:LoadAnimation(AnimAnim)


        local startTime = 1.3


        Anim:Play()

        Anim:AdjustSpeed(0)

        Anim.TimePosition = startTime

        Anim:AdjustSpeed(0.7)
    end
end

--[[END OF UPPERCUT ANIM]]

--[[Downslam]]

humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 10470104242


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
        local p = game.Players.LocalPlayer

        local Humanoid = p.Character:WaitForChild("Humanoid")


        for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end


        local AnimAnim = Instance.new("Animation")

        AnimAnim.AnimationId = "rbxassetid://12447247483"

        local Anim = Humanoid:LoadAnimation(AnimAnim)


        local startTime = 0


        wait(0.2)

        Anim:Play()

        Anim:AdjustSpeed(0)

        Anim.TimePosition = startTime

        Anim:AdjustSpeed(4)
    end
end

--[[END OF DOWNSLAM ANIM]]

--[[Punch anims]]

humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local Players = game:GetService("Players")

local player = Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local animationIdsToStop = {

    [17859015788] = true, --downslam finisher

    [10469493270] = true, --punch1

    [10469630950] = true, --punch2

    [10469639222] = true, --punch3

    [10469643643] = true, --punch4

}


local replacementAnimations = {

    ["10469493270"] = "rbxassetid://17889458563", --punch1

    ["10469630950"] = "rbxassetid://17889461810", --punch2

    ["10469639222"] = "rbxassetid://17889471098", --punch3

    ["10469643643"] = "rbxassetid://17889290569", --punch4

    ["17859015788"] = "rbxassetid://12684185971", --downslam finisher

    ["11365563255"] = "rbxassetid://14516273501"  --punch idk

}


local queue = {}

local isAnimating = false


local function playReplacementAnimation(animationId)
    if isAnimating then
        table.insert(queue, animationId)

        return
    end



    isAnimating = true

    local replacementAnimationId = replacementAnimations[tostring(animationId)]

    if replacementAnimationId then
        local AnimAnim = Instance.new("Animation")

        AnimAnim.AnimationId = replacementAnimationId

        local Anim = humanoid:LoadAnimation(AnimAnim)

        Anim:Play()



        Anim.Stopped:Connect(function()
            isAnimating = false

            if #queue > 0 then
                local nextAnimationId = table.remove(queue, 1)

                playReplacementAnimation(nextAnimationId)
            end
        end)
    else
        isAnimating = false
    end
end


local function stopSpecificAnimations()
    for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
        local animationId = tonumber(track.Animation.AnimationId:match("%d+"))

        if animationIdsToStop[animationId] then
            track:Stop()
        end
    end
end


local function onAnimationPlayed(animationTrack)
    local animationId = tonumber(animationTrack.Animation.AnimationId:match("%d+"))

    if animationIdsToStop[animationId] then
        stopSpecificAnimations()

        animationTrack:Stop()



        local replacementAnimationId = replacementAnimations[tostring(animationId)]

        if replacementAnimationId then
            playReplacementAnimation(animationId)
        end
    end
end


--[[humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoidRootPart = character:WaitForChild("HumanoidRootPart")


local function onBodyVelocityAdded(bodyVelocity)

    if bodyVelocity:IsA("BodyVelocity") then

        bodyVelocity.Velocity = Vector3.new(bodyVelocity.Velocity.X, 0, bodyVelocity.Velocity.Z)

    end

end


character.DescendantAdded:Connect(onBodyVelocityAdded)


for _, descendant in pairs(character:GetDescendants()) do

    onBodyVelocityAdded(descendant)

end


player.CharacterAdded:Connect(function(newCharacter)

    character = newCharacter

    humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    character.DescendantAdded:Connect(onBodyVelocityAdded)



    for _, descendant in pairs(character:GetDescendants()) do

        onBodyVelocityAdded(descendant)

    end

end) ]]


--[[Idle Animation

local animationId = "rbxassetid://15099756132" -- Replace with your animation ID
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator")

local animation = Instance.new("Animation")
animation.AnimationId = animationId
local animationTrack = animator:LoadAnimation(animation)

local function isMoving()
    local velocity = humanoid.MoveDirection.Magnitude
    return velocity > 0
end

while true do
    if not isMoving() then
        if not animationTrack.IsPlaying then
            animationTrack:Play()
        end
    else
        if animationTrack.IsPlaying then
            animationTrack:Stop()
        end
    end
    wait(0.1)
end
]]

--[[Run Anim

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

local animationId = "rbxassetid://15962326593" -- Replace with your animation ID
local animation = Instance.new("Animation")
animation.AnimationId = animationId

local animationTrack
local isMoving = false

local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end

    if not isMoving then
        isMoving = true
        animationTrack:Play()
    end
end

local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end

local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end

humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)

onHumanoidChanged()

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

local animationId = "rbxassetid://15962326593" -- Replace with your animation ID
local animation = Instance.new("Animation")
animation.AnimationId = animationId

local animationTrack
local isMoving = false

local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end

    if not isMoving then
        isMoving = true
        animationTrack:Play()
    end
end

local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end

local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end

humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)

onHumanoidChanged()
humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

local animationId = "rbxassetid://15962326593" -- Replace with your animation ID
local animation = Instance.new("Animation")
animation.AnimationId = animationId

local animationTrack
local isMoving = false

local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end

    if not isMoving then
        isMoving = true
        animationTrack:Play()
    end
end

local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end

local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end

humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)

onHumanoidChanged()

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

local animationId = "rbxassetid://15962326593" -- Replace with your animation ID
local animation = Instance.new("Animation")
animation.AnimationId = animationId

local animationTrack
local isMoving = false

local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end

    if not isMoving then
        isMoving = true
        animationTrack:Play()
    end
end

local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end

local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end

humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)

onHumanoidChanged()

humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

local animationId = "rbxassetid://15962326593" -- Replace with your animation ID
local animation = Instance.new("Animation")
animation.AnimationId = animationId

local animationTrack
local isMoving = false

local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end

    if not isMoving then
        isMoving = true
        animationTrack:Play()
    end
end

local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end

local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end

humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)

onHumanoidChanged()

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:WaitForChild("Animator")

local animationId = "rbxassetid://15962326593" -- Replace with your animation ID
local animation = Instance.new("Animation")
animation.AnimationId = animationId

local animationTrack
local isMoving = false

local function playAnimation()
    if not animationTrack then
        animationTrack = animator:LoadAnimation(animation)
    end

    if not isMoving then
        isMoving = true
        animationTrack:Play()
    end
end

local function stopAnimation()
    if isMoving and animationTrack then
        isMoving = false
        animationTrack:Stop()
    end
end

local function onHumanoidChanged()
    if humanoid.MoveDirection.Magnitude > 0 then
        playAnimation()
    else
        stopAnimation()
    end
end

humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(onHumanoidChanged)

onHumanoidChanged()

--[[RUN ANIM END]]

--[[Execute Anims (Animations when you execute script]]

local p = game.Players.LocalPlayer
local Humanoid = p.Character:WaitForChild("Humanoid")

for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
    animTrack:Stop()
end

local AnimAnim = Instance.new("Animation")
AnimAnim.AnimationId = "rbxassetid://14611879113" -- Replace with your animation ID

local Anim = Humanoid:LoadAnimation(AnimAnim)

local startTime = 0.05

Anim:Play()
Anim:AdjustSpeed(0)
Anim.TimePosition = startTime
Anim:AdjustSpeed(1)

--[[END OF EXECUTE ANIMS]]

--[[Garou Color Changer !DELETE IF NOT NEEDED!]]

--[[LEFT ARM COLORS]]

local char = game.Players.LocalPlayer.Character
getgenv().LArmCol = char['Left Arm'].ChildAdded:Connect(function(pp)
    if pp.Name == 'WaterPalm' then
        for i, v in pairs(pp:WaitForChild('ConstantEmit'):GetChildren()) do
            v.Color =
                ColorSequence.new { ColorSequenceKeypoint.new(0.00,
                    Color3.fromRGB(255, 0, 0)),      -- Change Color (Red, Green, Blue)
                    ColorSequenceKeypoint.new(1.00,
                        Color3.fromRGB(0, 0, 255)) } -- Change Color (Red, Green, Blue)
        end

        pp:WaitForChild('WaterTrail').Color =
            ColorSequence.new { ColorSequenceKeypoint.new(0.00,
                Color3.fromRGB(255, 0, 0)),      -- Change Color (Red, Green, Blue)
                ColorSequenceKeypoint.new(1.00,
                    Color3.fromRGB(0, 0, 255)) } -- Change Color (Red, Green, Blue)
    end
end)
--[[RIGHT ARM colors]]

getgenv().RArmCol = char['Right Arm'].ChildAdded:Connect(function(pp)
    if pp.Name == 'WaterPalm' then
        for i, v in pairs(pp:WaitForChild('ConstantEmit'):GetChildren()) do
            v.Color =
                ColorSequence.new { ColorSequenceKeypoint.new(0.00,
                    Color3.fromRGB(255, 0, 0)),      -- Change Color (Red, Green, Blue)
                    ColorSequenceKeypoint.new(1.00,
                        Color3.fromRGB(0, 0, 255)) } -- Change Color (Red, Green, Blue)
        end
        pp:WaitForChild('WaterTrail').Color =
            ColorSequence.new { ColorSequenceKeypoint.new(0.00,
                Color3.fromRGB(255, 0, 0)),      -- Change Color (Red, Green, Blue)
                ColorSequenceKeypoint.new(1.00,
                    Color3.fromRGB(0, 0, 255)) } -- Change Color (Red, Green, Blue)
    end
end)

--[[END OF GAROU COLORS]]
