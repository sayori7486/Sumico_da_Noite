if (action >= array_length(cutscene)) {
    instance_destroy();
    exit;
}
var _current_action = cutscene[action]
var _len =  array_length(_current_action)-1
switch _len{
	case 0:
	script_execute(_current_action[0])
	break
	case 1:
	script_execute(_current_action[0], _current_action[1])
	break
	case 2:
	script_execute(_current_action[0], _current_action[1], _current_action[2])
	break
	case 3:
	script_execute(_current_action[0], _current_action[1], _current_action[2], _current_action[3])
	break
	case 4:
	script_execute(_current_action[0], _current_action[1], _current_action[2],_current_action[3],_current_action[4])
	break
	case 5:
	script_execute(_current_action[0], _current_action[1], _current_action[2],_current_action[3],_current_action[4], _current_action[5])
	break
	
}
