var _guil = display_get_gui_width() 
var _guia = display_get_gui_height() 
var _mx = device_mouse_x_to_gui(0); 
var _my = device_mouse_x_to_gui(0); 
var _invx = _guil/2 - inventario_l/2
var _invy = _guia - inventario_a 
draw_sprite_ext(Sprite1, 0, _invx, _invy, escala, escala, 0, c_white, 1)
var ix = 0
var iy =0 
for (var i = 0; i<total_slots; i++){ 
	var _slotsx = _invx + comeco_x + ((tamanho_slot + buffer) * ix)
	var _slotsy = _invy + comeco_y + ((tamanho_slot + buffer) * iy) 
	 if (i == slot_selecionado) {
        for (var j = 0; j < espessura; j++){
		draw_rectangle(_slotsx-j, _slotsy-j, _slotsx + tamanho_slot+j, _slotsy + tamanho_slot+j, true);
        // false = sem preenchimento (apenas a borda)
		draw_sprite_ext(Sprite2, 0, _slotsx, _slotsy, escala, escala, 0,c_white, 0.2)
    }}
	ix++ 
	if(ix >= slots_h){
		ix =0 iy++ 
		}
		}