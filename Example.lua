local GetData = require(script.Parent.GetData)
local Replicated = game:GetService('ReplicatedStorage')
local StringLibrary = require(Replicated:FindFirstChild('StLibrary'))
local ClickSend = Replicated:FindFirstChild('ClickSend')
print(StringLibrary.Percent(1, 100))

ClickSend.OnServerInvoke = function(player, message)
	local data = GetData.GetData(player)
	if message == 'Click Add' then
		local Stat_s = player:FindFirstChild('Stats')
		local Clicks = Stat_s:FindFirstChild('Clicks')
		local add = StringLibrary.add(data['Clicks'], data['ClickPlus'])
		data['Clicks'] = add
		Clicks.Value = data['Clicks']
	else
		data['Ban'] = player.Name
	end
end
-- to keep it secure well not the Event the Value Changing part
