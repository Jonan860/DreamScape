function array_left_rotate(list) {
	var size = array_length(list)
	var list2 = []
	for(var i = 1; i <= size; i++) {
		array_push(list2, list[i mod size])
	}
	list = list2
}