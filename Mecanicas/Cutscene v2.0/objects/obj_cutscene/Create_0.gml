cutscene = -1
action = 0
timer = 0
x_dest = -1
y_dest = -1

cutscene = [
		[cutsene_wait, 3],
		[cutscene_move_character, obj_personagem, 1000, 600, false, 4],
		[cutscene_instance_create, 200, 100, "Instances", obj_personagem_1],
		[cutsene_play_sound,Sound1, false],
		[cutscene_move_character, obj_personagem_1, 100, 500, false, 6],
		[cutsene_wait, 1],
		[cutscene_xscale, obj_personagem_1],
		[cutsene_stop_sound,Sound1],
		[cutscene_change_variavel, obj_personagem_1, "vida", 2],
		[cutsene_wait, 3],
		[cutscene_xscale, obj_personagem_1, 5],
		[cutsene_play_sound,Sound1, false],
		[cutscene_change_sprite, obj_personagem_1, Sprite1_2],
		[cutscene_move_character, obj_personagem, -500, -200, true, 6]
]