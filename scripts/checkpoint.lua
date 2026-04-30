local checkpointsFolder = game.Workspace:WaitForChild("Checkpoints")
local COR_PADRAO = BrickColor.new("Medium stone grey")
local COR_ATIVO = BrickColor.new("Bright green")

local function setCheckpoint(player, checkpoint)
	local savedCheckpoint = player:FindFirstChild("LastCheckpoint")

	if not savedCheckpoint then
		savedCheckpoint = Instance.new("ObjectValue")
		savedCheckpoint.Name = "LastCheckpoint"
		savedCheckpoint.Parent = player
	end

	-- Se o jogador já tinha um checkpoint salvo, volta a cor dele ao normal
	if savedCheckpoint.Value and savedCheckpoint.Value ~= checkpoint then
		savedCheckpoint.Value.BrickColor = COR_PADRAO
	end

	-- Salva o novo checkpoint e pinta de verde
	savedCheckpoint.Value = checkpoint
	checkpoint.BrickColor = COR_ATIVO
end

game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		-- O Roblox vai spawnar o player naturalmente no "Spawn POINT Location"
		-- porque ele é o único SpawnLocation Neutral do jogo.

		-- Agora verificamos se o player já passou por algum checkpoint antes de morrer
		local savedCheckpoint = player:WaitForChild("LastCheckpoint", 2)

		if savedCheckpoint and savedCheckpoint.Value then
			-- Se ele já tem um checkpoint salvo, forçamos o teletransporte para lá
			task.wait(0.1) -- Pequeno delay para o personagem carregar 100%
			local hrp = character:WaitForChild("HumanoidRootPart")
			hrp.CFrame = savedCheckpoint.Value.CFrame + Vector3.new(0, 3, 0)
		end
	end)
end)

-- Configura os sensores de toque
for _, checkpoint in pairs(checkpointsFolder:GetChildren()) do
	-- Agora o script procura por Parts normais (BasePart)
	if checkpoint:IsA("BasePart") then
		checkpoint.Touched:Connect(function(hit)
			local player = game.Players:GetPlayerFromCharacter(hit.Parent)
			if player then
				setCheckpoint(player, checkpoint)
			end
		end)
	end
end