event_inherited()

rally_tile = noone
unfinished = 0

queue_list = []

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

sorc = createSpell(SPELLS.buildSorceress, "q")
sorc.lvl = 1
priest = createSpell(SPELLS.buildPriest, "w")
priest.lvl = 1
invis = createSpell(SPELLS.buildInvisibility, "a")
invis.lvl = 1
dispel = createSpell(SPELLS.buildDispel, "s")
dispel.lvl = 1


