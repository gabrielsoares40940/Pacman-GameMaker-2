#region PONTUAÇÃO

// Cada bola geram 10 pontos e é destruída automaticamente
if place_meeting(x, y, obj_pacman) {
	global.pscore += 10
	instance_destroy()
}

#endregion