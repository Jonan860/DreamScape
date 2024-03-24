event_inherited()

rally_tile = noone
unfinished = 0
owner = noone

queue_list = ds_list_create()

build_progress = 0 // of 100
q_build_icon_x = x - sprite_get_width(spr_hexagon_pink)/2
q_build_icon_y = y - sprite_get_height(spr_hexagon_pink)/2

w_build_icon_x = q_build_icon_x + sprite_get_width(spr_footman_icon)/2 + sprite_get_width(spr_elven_archer_icon)/2
w_build_icon_y = y - sprite_get_height(spr_hexagon_pink)/2

tile = noone
HP = 400
max_HP = 400
damage_reduction = 0 

footman = createSpell(SPELLS.buildFootman, "q")
archer = createSpell(SPELLS.buildArcher, "w")
defend = createSpell(SPELLS.buildDefend, "a")
improvedBows = createSpell(SPELLS.buildImprovedBows, "s")
