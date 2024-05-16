event_inherited()

rally_tile = noone
unfinished = 0

queue_list = ds_list_create()

progress_bar_x1 = global.hud.hud_width / 4
progress_bar_x2 = global.hud.hud_width * 3/4
progress_bar_y1 = global.camera_height - global.hud.hud_height/2
progress_bar_y2 = global.camera_height - global.hud.hud_height * (1/2 - 1/20)
build_progress = 0

tile = noone

max_HP = 400
HP = max_HP
damage_reduction = 0
element = ELEMENTS.fortified //fortified later maybe

footman = createSpell(SPELLS.buildSorceress, "q")
archer = createSpell(SPELLS.buildPriest, "w")
defend = createSpell(SPELLS.buildInvisibility, "a")
improvedBows = createSpell(SPELLS.buildDispel, "s")

