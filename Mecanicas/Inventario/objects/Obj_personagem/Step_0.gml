var mx = 0;
var my = 0;

// Input movimento
if (keyboard_check(vk_right)) mx += 1;
if (keyboard_check(vk_left))  mx -= 1;
if (keyboard_check(vk_down))  my += 1;
if (keyboard_check(vk_up))    my -= 1;

// Verifica se está correndo
var velocidade_atual = vel;
if (keyboard_check(vk_shift)) {
    velocidade_atual = vel_corrida;
}

// Normaliza pra não andar mais rápido na diagonal
if (mx != 0 || my != 0) {
    var dir = point_direction(0,0,mx,my);
    x += lengthdir_x(velocidade_atual, dir);
    y += lengthdir_y(velocidade_atual, dir);
}
if keyboard_check_pressed(ord("Z")){
	var quem = instance_place(x,y, obj_npc)
	if(quem != noone){
		texto_atual = quem.text
		fala_atual = true
	}
}