
function scr_get_element_attack_bonus(attack_element, defence_element) {
	switch (attack_element) {
		case "normal" : 
			switch(defence_element) {
				case "normal" : return 1; break;
			}
		default: return 1;
	}
}
