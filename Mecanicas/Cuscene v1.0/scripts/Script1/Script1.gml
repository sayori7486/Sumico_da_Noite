
function action_end(){
	action++
	
	if action >= array_length(cutscene){
		instance_destroy()	
	}
}
	
function cutsene_wait(_segundos){
	
	timer++
	
	if timer >= room_speed * _segundos{
		timer = 0
		action_end()
	}
	
}
function cutsene_walk_right(_segundos, _spd){
	obj_personagem.x += _spd
	timer++
	
	if timer >= room_speed * _segundos{
		timer = 0
		action_end()
	}

}
function cutsene_walk_left(_segundos, _spd){
	obj_personagem.x -= _spd
	timer++
	
	if timer >= room_speed * _segundos{
		timer = 0
		action_end()
	}

}
