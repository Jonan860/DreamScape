duration_left = owner.duration
depth -= 1

save = function() {
	var s = {duration_left : duration_left}
}

load = function(s) {
	duration_left = s.duration_left
}