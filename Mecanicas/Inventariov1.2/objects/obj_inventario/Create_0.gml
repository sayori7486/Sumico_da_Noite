inventario_alpha = 0;         // Transparência inicial (0 = invisível)
inventario_estado = "oculto"; // Estados: "oculto", "aparecendo", "visivel", "sumindo"
inventario_timer = 0;         // Timer para manter visível
fade_velocidade = 0.02;       // Velocidade de fade (ajuste para mais rápido ou mais lento)
tempo_visivel = 120;          // Tempo em frames (2 segundos = 120 frames a 60fps)
escala =1
espessura = 3
comeco_x = 5*escala // quando começa os slots
comeco_y = 5*escala
slots_h = 5 // quantas colunas
slots_v = 1// quantas linhas
total_slots = slots_h * slots_v
tamanho_slot = 30*escala//tamanho de cada slot
buffer = 11 * escala // a barra entre um slot e outro
inventario_l = sprite_get_width(Sprite1)*escala//largura do inventario
inventario_a = sprite_get_height(Sprite1)*escala//altura do inventario
slot_selecionado = 0

enum Armas{
	Espada,
	Pau,
	Sapo
}
enum Infos{
	Item,
	Quantidade,
	Altura
}
grid_itens = ds_grid_create(Infos.Altura, total_slots)
ds_grid_set_region(grid_itens,0, 0, 1, total_slots-1,-1)

//Primeiro slot
grid_itens[# Infos.Item,0]  = Armas.Espada
grid_itens[# Infos.Quantidade,0]  = 3

//Segundo slot
grid_itens[# Infos.Item,1]  = Armas.Pau
grid_itens[# Infos.Quantidade,1]  = 3

//Quato slot
grid_itens[# Infos.Item,3]  = Armas.Sapo
grid_itens[# Infos.Quantidade,3]  = 3
