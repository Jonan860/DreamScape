idd = noone
money = 100 //100
footman_has_defend_upgrade = 0
elven_archers_has_improved_bows = 0
sorceress_has_invisibility = 0
priest_has_dispel = 0

//armor_upgrade// hp probably better?
//attack_upgrade
//hp_upgared

save = function() {
	var s = {}
	s.money = money
	s.footman_has_defend_upgrade = footman_has_defend_upgrade
	s.elven_archers_has_improved_bows = elven_archers_has_improved_bows
	s.sorceress_has_invisibility = sorceress_has_invisibility
	s.priest_has_dispel = priest_has_dispel
	switch(id) {
		case global.enemy : s.identity = "enemy"; break;
		case global.player : s.identity = "player"; break;
		case global.creep_lord : s.identity = "creep lord"; break;
	}
	s.idd = id
	return s
}

load = function(s) {
	idd = s.idd
	money = s.money
	footman_has_defend_upgrade = s.footman_has_defend_upgrade
	elven_archers_has_improved_bows = s.elven_archers_has_improved_bows
	sorceress_has_invisibility = s.sorceress_has_invisibility
	priest_has_dispel = s.priest_has_dispel
	switch(s.identity) {
		case "enemy" : global.enemy = id; break;
		case "player" : global.player = id; break;
		case "creep lord" : global.creep_lord = id; break
	}
}