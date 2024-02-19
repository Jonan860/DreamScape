if(habitable = 0) {
	image_blend = c_black
}
if(is_back_tile) {
	image_blend = c_yellow
}
draw_self()

if(global.tile_selected == id) {
	draw_set_color(c_green)
	draw_sprite(spr_selection_circle, 0, x, y)
}