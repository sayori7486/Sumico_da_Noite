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
	
}
