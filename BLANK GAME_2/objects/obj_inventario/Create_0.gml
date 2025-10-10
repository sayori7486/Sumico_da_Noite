escala =2
espessura = 3
comeco_x = 5*escala // quando começa os slots
comeco_y = 5*escala
slots_h = 8 // quantas colunas
slots_v = 1// quantas linhas
total_slots = slots_h * slots_v
tamanho_slot = 30*escala//tamanho de cada slot
buffer = 11 * escala // a barra entre um slot e outro
inventario_l = sprite_get_width(Sprite1)*escala//largura do inventario
inventario_a = sprite_get_height(Sprite1)*escala//altura do inventario
slot_selecionado = 0

