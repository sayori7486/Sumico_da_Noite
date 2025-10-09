// Movimentação
if global.dialogo = false{
direita = keyboard_check(ord("D"));
cima = keyboard_check(ord("W"));
esquerda = keyboard_check(ord("A"));
baixo = keyboard_check(ord("S"));
hv = (direita-esquerda);
vv = (baixo - cima);
x +=hv
y+=vv
}
//Diálogo
if distance_to_object(Obj_par_npcs) <= 15{
if global.tecla and global.dialogo = false
{
	var _npc = instance_nearest(x,y,Obj_par_npcs);
	var _dialogo = instance_create_layer(x,y, "Dialogos", Obj_dialogo);
	_dialogo.npc_nome = _npc.nome;
}
}