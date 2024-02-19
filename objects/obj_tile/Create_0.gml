
tile_x = noone; tile_y = noone
layer = layer_get_id("tiles")
south_east_tile = noone
south_west_tile = noone
north_east_tile = noone
north_west_tile = noone
north_tile = noone
south_tile = noone
west_tile = noone /// "needed" for bugfix
east_tile = noone
list_of_neighbours = ds_list_create()
ds_list_add(list_of_neighbours, south_east_tile, south_west_tile, north_east_tile, north_west_tile, north_tile, south_tile)
occupants = ds_map_create()
invisibles_list = ds_list_create()
grounds_list = ds_list_create()
airs_list = ds_list_create()
ds_map_add(occupants, "ground", grounds_list)
ds_map_add(occupants, "invisible", invisibles_list)
ds_map_add(occupants, "air" ,airs_list)
path_find_checked = 0
distance = 100
selected_units = ds_list_create()
habitable = 1
is_back_tile = noone
ds_map_distances = ds_map_create()
draw_earthshatter = 0
time_until_earthshatter_gone = 0

time_until_frost_nova_after_effect_end_sec = 0
