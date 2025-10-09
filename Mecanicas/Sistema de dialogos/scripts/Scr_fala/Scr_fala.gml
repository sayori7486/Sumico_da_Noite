function scr_texto()
{
	switch npc_nome{
	case "Kaintõ":
	ds_grid_add_text("Olá, vc é o Ronaldo né", Sprite1, 0, "Kaintõ");
	ds_grid_add_text("Eu sou o Cthulu, o deus Abisal", Sprite2, 1, "Cthulu");
	ds_grid_add_text("Uma pergunta...", Sprite2, 1, "Cthulu");
	ds_grid_add_text("você prefere el pepe or ronaldo", Sprite2, 1, "Cthulu");
		add_op("El pepe", "Resposta 1");
		add_op("Ronaldo, Ronaldo, Ronaldo, Ronaldo, Ronaldo, Ronaldo", "Resposta 2");
	break;
	case "Resposta 1":
		ds_grid_add_text("La ele", Sprite2, 1, "Cthulu");
		break;
	case "Resposta 2":
		ds_grid_add_text("Bucha", Sprite2, 1, "Cthulu");
		break;
	}
}
function ds_grid_add_row(){
	///@arg ds_grid
 
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);	
}
 
function ds_grid_add_text(){
	///@arg texto
	///@arg retrato
	///@arg lado
	///@arg nome
 
	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
 
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}
	
function add_op(_texto, _resposta){
	op[op_num] = _texto;
	op_resposta[op_num] = _resposta;
	
	op_num++;
}