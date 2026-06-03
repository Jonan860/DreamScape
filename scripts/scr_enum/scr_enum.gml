enum ALTITUDES {
	ground,
	air,
	invisible
}
function altitudeToStr(_enum) {
	switch(_enum) {
		case ALTITUDES.ground : return "ground"
		case ALTITUDES.air : return "air"
		case ALTITUDES.invisible : return "invisible"
	}
}

enum UNIT_PHASES {
	idle,
	hunt,
	healing,
	sleep,
	movement,
	earthshatter,
	frostNova,
	feeding,
	returning,
	searching,
	reviving,
	dead,
	earthshatterJump,
	sacrificed,
	channeling
}

enum GAME_PHASES {
	battle,
	dialogue
}

enum ELEMENTS {
	normal,
	nature,
	fire,
	fortified
}