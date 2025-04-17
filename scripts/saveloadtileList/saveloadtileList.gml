function saveTileList(list) {
	var savedList = []
	for(var i = 0; i < array_length(list); i++) {
		array_push(savedList, [list[i].tile_x, list[i].tile_y]) 
	}
	return savedList
}
function loadTileList(list, savedList) {
	list = []
	for(var i = 0; i < array_length(savedList); i++) {
		array_push(list, getTile(savedList[i][0], savedList[i][1]))
	}
	return list
}