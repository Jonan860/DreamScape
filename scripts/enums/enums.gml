enum ALTITUDES {
	ground,
	air,
	invisible
}

function altitudesToString(_enum) {
	switch(_enum) {
		case ALTITUDES.ground : return "ground"
		case ALTITUDES.air : return "air"
		case ALTITUDES.invisible : return "invisible"
	}
}