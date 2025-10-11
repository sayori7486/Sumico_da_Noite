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

if (keyboard_check_pressed(ord("1")) || 
    keyboard_check_pressed(ord("2")) || 
    keyboard_check_pressed(ord("3")) || 
    keyboard_check_pressed(ord("4")) || 
    keyboard_check_pressed(ord("5")) ||
	mouse_wheel_down() ||
	mouse_wheel_up())
	{
    
    if (inventario_estado == "oculto") {
        inventario_estado = "aparecendo";
    }
    else if (inventario_estado == "sumindo") {
        // Inverte o fade-out e inicia o fade-in a partir do ponto atual
        inventario_estado = "aparecendo";
    }
}

// Controle do estado do inventário
switch (inventario_estado) {
    case "aparecendo":
        inventario_alpha += fade_velocidade;
        if (inventario_alpha >= 1) {
            inventario_alpha = 1;
            inventario_estado = "visivel";
            inventario_timer = tempo_visivel;
        }
        break;

    case "visivel":
        inventario_timer -= 1;
        if (inventario_timer <= 0) {
            inventario_estado = "sumindo";
        }
        break;

    case "sumindo":
        inventario_alpha -= fade_velocidade;
        if (inventario_alpha <= 0) {
            inventario_alpha = 0;
            inventario_estado = "oculto";
        }
        break;

    case "oculto":
        // Não faz nada, fica invisível até uma tecla ser pressionada
        break;
}

