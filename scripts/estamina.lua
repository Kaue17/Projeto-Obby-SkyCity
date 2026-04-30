local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

-- Pega o jogador local e o personagem dele
local player = game.Players.LocalPlayer
local character = script.Parent
local humanoid = character:WaitForChild("Humanoid")

-- Mapeia a interface (UI) que você acabou de criar
local playerGui = player:WaitForChild("PlayerGui")
local tela = playerGui:WaitForChild("ScreenGui(Barra de Estamina)") -- Se você mudou o nome do ScreenGui, altere aqui!
local fundoBarra = tela:WaitForChild("FundoBarra")
local barraEstamina = fundoBarra:WaitForChild("BarraEstamina")

-- Configurações da sua corrida
local estaminaMaxima = 100
local estaminaAtual = estaminaMaxima
local correndo = false

-- Velocidades (pode ajustar como achar melhor pro parkour)
local velocidadeNormal = 16
local velocidadeCorrida = 26 

-- 1. Quando o jogador APERTA o Shift
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end -- Ignora se ele estiver digitando no chat
	if input.KeyCode == Enum.KeyCode.LeftShift then
		correndo = true
	end
end)

-- 2. Quando o jogador SOLTA o Shift
UserInputService.InputEnded:Connect(function(input, gameProcessed)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		correndo = false
		humanoid.WalkSpeed = velocidadeNormal
	end
end)

-- 3. O Loop que roda a cada frame da tela
RunService.RenderStepped:Connect(function(deltaTime)
	-- Verifica se tá segurando shift, se tem energia e se o boneco tá andando
	if correndo and estaminaAtual > 0 and humanoid.MoveDirection.Magnitude > 0 then
		humanoid.WalkSpeed = velocidadeCorrida
		-- Diminui a estamina (o '25' é a velocidade que gasta)
		estaminaAtual = math.max(0, estaminaAtual - (25 * deltaTime)) 
	else
		-- Se soltou o shift ou a energia zerou, volta a andar normal
		humanoid.WalkSpeed = velocidadeNormal
		-- Se a estamina não estiver cheia, recarrega (o '15' é a velocidade que enche)
		if not correndo and estaminaAtual < estaminaMaxima then
			estaminaAtual = math.min(estaminaMaxima, estaminaAtual + (15 * deltaTime))
		end
	end

	-- A mágica da UI: transforma a energia em porcentagem e encolhe a barra
	local porcentagem = estaminaAtual / estaminaMaxima
	barraEstamina.Size = UDim2.new(porcentagem, 0, 1, 0)
end)
