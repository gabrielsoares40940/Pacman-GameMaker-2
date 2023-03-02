#region PONTUAÇÃO

// Cada bolinha gera 1 ponto e é destruída automaticamente
if place_meeting(x, y, obj_pacman) {
	global.pscore += 1;
	instance_destroy()
}

// Ir para a próxima fase
if global.pscore = 62 {
	room_goto(Room2)	
}

#endregion