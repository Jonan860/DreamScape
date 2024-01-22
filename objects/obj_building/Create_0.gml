
var var_tile_scale = sprite_get_height(spr_hexagon_pink)/max(sprite_height,sprite_width)
image_yscale = var_tile_scale
image_xscale = var_tile_scale
rally_tile = noone //is a tile
tile = noone
altitude = "ground"
element = "Fortified"
build_progress = 0 // of hundred
building_progress_bar_x1 = x - sprite_width * 3/8
building_progress_bar_x2 = x + sprite_width * 3/8
building_progress_bar_y1 = y - sprite_height * 3/8
building_progress_bar_y2 = y - sprite_height * 2/8
evasiveness = 0
q_info = ""
w_info = ""
e_info = ""
r_info = ""
a_info = ""
s_info = ""
d_info = ""
f_info = ""

draw_hud_buttons_with_info = method(scr_dra_hud_button_with_hover_inf_building , undefined)