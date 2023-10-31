game.ReplicatedStorage.blackholeevent.OnServerEvent:Connect(function()
	local core = workspace.thecorereactor.shield.core
	local player = game.Players.LocalPlayer
game.SoundService["blackhole-event-music"]:Play()
	wait(18)
	
	
	repeat
		wait(0.010)
		core.Size = core.Size - Vector3.new(0.1, 0.1, 0.1)
	until core.Size.X < 0.1 or core.Size.Y < 0.1 or core.Size.Z < 0.1
	
	
	 
	core.Touched:Connect(function(hit)
		if hit.Anchored == false then
			hit:Destroy()
		end
	end)

	core.BrickColor = BrickColor.Black()

	repeat
		wait()
		core.Size = core.Size + Vector3.new(1, 1, 1)
		until core.Size.X > 50 or core.Size.Y > 50 or core.Size.Z > 50
	repeat
	wait(0.1)	
	workspace.thecorereactor.BCoreLaser1.LaserError.Enabled = true 
	workspace.thecorereactor.BCoreLaser2.LaserError.Enabled = true
	workspace.thecorereactor.BCoreLaser3.LaserError.enabled = true
	workspace.thecorereactor.BCoreLaser4.LaserError.enabled = true
	until workspace.thecorereactor.BCoreLaser1.LaserError.Enabled == true or workspace.thecorereactor.BCoreLaser2.LaserError.Enabled == true or workspace.thecorereactor.BCoreLaser3.LaserError.Enabled == true or workspace.thecorereactor.BCoreLaser4.LaserError.Enabled == true
	wait(21)
	repeat
		wait()
		core.Size = core.Size + Vector3.new(10, 10, 10)
	until core.Size.X > 400 or core.Size.Y > 400 or core.Size.Z > 400	
end)
