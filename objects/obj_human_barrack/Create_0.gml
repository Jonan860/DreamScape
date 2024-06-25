event_inherited()

rally_tile = noone
unfinished = 0

queue_list = []
build_progress = 0 // of 1002

tile = noone
HP = 400
max_HP = 400
damage_reduction = 0 

footman = createSpell(SPELLS.buildFootman, "q")
footman.lvl = 1
archer = createSpell(SPELLS.buildArcher, "w")
archer.lvl = 1
defend = createSpell(SPELLS.buildDefend, "a")
defend.lvl = 1
improvedBows = createSpell(SPELLS.buildImprovedBows, "s")
improvedBows.lvl = 1
