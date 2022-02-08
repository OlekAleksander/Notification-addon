
--  /\ \/\ \/\  __`\/\__  _\/\__  _\ /\  _`\ /\__  _\ /\  _`\  /\  _  \/\__  _\/\__  _\ /\  __`\/\ \/\ \    /\  _  \/\  _`\ /\  _`\ /\  __`\/\ \/\ \    
--  \ \ `\\ \ \ \/\ \/_/\ \/\/_/\ \/ \ \ \L\_\/_/\ \/ \ \ \/\_\\ \ \L\ \/_/\ \/\/_/\ \/ \ \ \/\ \ \ `\\ \   \ \ \L\ \ \ \/\ \ \ \/\ \ \ \/\ \ \ `\\ \   
--  \ \ , ` \ \ \ \ \ \ \ \   \ \ \  \ \  _\/  \ \ \  \ \ \/_/_\ \  __ \ \ \ \   \ \ \  \ \ \ \ \ \ , ` \   \ \  __ \ \ \ \ \ \ \ \ \ \ \ \ \ \ , ` \  
--   \ \ \`\ \ \ \_\ \ \ \ \   \_\ \__\ \ \/    \_\ \__\ \ \L\ \\ \ \/\ \ \ \ \   \_\ \__\ \ \_\ \ \ \`\ \   \ \ \/\ \ \ \_\ \ \ \_\ \ \ \_\ \ \ \`\ \ 
--   \ \_\ \_\ \_____\ \ \_\  /\_____\\ \_\    /\_____\\ \____/ \ \_\ \_\ \ \_\  /\_____\\ \_____\ \_\ \_\   \ \_\ \_\ \____/\ \____/\ \_____\ \_\ \_\
--    \/_/\/_/\/_____/  \/_/  \/_____/ \/_/    \/_____/ \/___/   \/_/\/_/  \/_/  \/_____/ \/_____/\/_/\/_/    \/_/\/_/\/___/  \/___/  \/_____/\/_/\/_/=

-- Made by OlekAleksander for Kavo UI Library

print("Loading Notification Addon")


function showNotification(NotificationText,NotificationTime)
    print("Creating Notification")
    local NotificationGui = Instance.new("ScreenGui")
    local Notification = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local TextLabel = Instance.new("TextLabel")
    local Closenotification = Instance.new("TextButton")
    
    NotificationGui.Name = "Not"
    NotificationGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    NotificationGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    Notification.Name = "Notification"
    Notification.Parent = NotificationGui
    Notification.BackgroundColor3 = backgroundColor
    Notification.Position = UDim2.new(1,0,1,-60)
    Notification.Size = UDim2.new(0, 400, 0, 50)
    
    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = Notification
    
    TextLabel.Parent = Notification
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0.025, 0, 0, 0)
    TextLabel.Size = UDim2.new(0, 375, 0, 50)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = "Test notification"
    TextLabel.TextColor3 = textColor
    TextLabel.TextSize = 18.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    print("Showing Notification")
    TextLabel.Text = NotificationText
    Notification:TweenPosition(UDim2.new(1,-410,1,-60),"Out","Linear",0.25)
    print("Showed Notification")
	wait(NotificationTime)
	Notification:TweenPosition(UDim2.new(1,0,1,-60),"Out","Linear",0.25)
	print("Closed Notification")
end
