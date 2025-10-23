
function action_end(){
	obj_cutscene.action++

}
	
function cutsene_wait(_segundos){
	
	timer++
	
	if timer >= room_speed * _segundos{
		timer = 0
		action_end()
	}
	
}
function cutscene_move_character(_id, _x, _y, _relative, _spd){
    if !variable_instance_exists(_id, "x_dest") {
        _id.x_dest = -1;
        _id.y_dest = -1;
    }

    if _id.x_dest == -1 {
        if !_relative {
            _id.x_dest = _x;
            _id.y_dest = _y;
        } else {
            _id.x_dest = _id.x + _x;
            _id.y_dest = _id.y + _y;
        }
    }

    var _xx = _id.x_dest;
    var _yy = _id.y_dest;

    with (_id) {
        if point_distance(x, y, _xx, _yy) >= _spd {
            var _dir = point_direction(x, y, _xx, _yy);
            var _hspd = lengthdir_x(_spd, _dir);
            var _vspd = lengthdir_y(_spd, _dir);

            x += _hspd;
            y += _vspd;
        } else {
            x = _xx;
            y = _yy;
            x_dest = -1;
            y_dest = -1;
            action_end();

        }
    }
}

function cutsene_play_sound(_snd, _loop){
	audio_play_sound(_snd, 1,_loop)
	action_end()
}
function cutsene_stop_sound(_snd){
	audio_stop_sound(_snd)
	action_end()
}
function cutscene_instance_create(_x, _y,_layer,_obj){
	instance_create_layer(_x, _y,_layer,_obj)	
	action_end()
}
function cutscene_instance_destroy(_obj){
	instance_destroy(_obj)	
	action_end()
}
function cutscene_xscale(_id, _xscale){
	if _xscale != undefined{
		_id.image_xscale = _xscale
	}else{
		_id.image_xscale *= -1
		}
		action_end()
}
function cutscene_change_sprite(_id, _spr){
_id.image_index =0
_id.sprite_index = _spr
action_end()
}
function cutscene_change_variavel(_id, _varstring,_value){
variable_instance_set(_id, _varstring, _value)
action_end()
}