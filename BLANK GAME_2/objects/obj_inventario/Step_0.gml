// alterar qual esta selecionado pela bolinha do mouse
// Scroll para frente (próximo slot)
if (mouse_wheel_up()) {
    slot_selecionado -= 1;
}

// Scroll para trás (slot anterior)
if (mouse_wheel_down()) {
    slot_selecionado += 1;
}

// Limitar entre 0 e slots_h - 1 (slots horizontais)
if (slot_selecionado < 0) slot_selecionado = slots_h - 1;
if (slot_selecionado >= slots_h) slot_selecionado = 0;
// Teclas 1 a 8 da linha de cima do teclado (não numpad)
if (keyboard_check_pressed(ord("1"))) slot_selecionado = 0;
if (keyboard_check_pressed(ord("2"))) slot_selecionado = 1;
if (keyboard_check_pressed(ord("3"))) slot_selecionado = 2;
if (keyboard_check_pressed(ord("4"))) slot_selecionado = 3;
if (keyboard_check_pressed(ord("5"))) slot_selecionado = 4;
if (keyboard_check_pressed(ord("6"))) slot_selecionado = 5;
if (keyboard_check_pressed(ord("7"))) slot_selecionado = 6;
if (keyboard_check_pressed(ord("8"))) slot_selecionado = 7;

