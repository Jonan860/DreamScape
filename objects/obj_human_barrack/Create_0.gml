event_inherited()

rally_tile = noone
unfinished = 0

queue_list = ds_list_create()

build_progress = 0 // of 1002

tile = noone
HP = 400
max_HP = 400
damage_reduction = 0 

footman = createSpell(SPELLS.buildFootman, "q")
archer = createSpell(SPELLS.buildArcher, "w")
defend = createSpell(SPELLS.buildDefend, "a")
improvedBows = createSpell(SPELLS.buildImprovedBows, "s")
