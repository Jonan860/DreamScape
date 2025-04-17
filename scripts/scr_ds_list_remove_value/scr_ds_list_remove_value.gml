function array_remove_value(list, _value){
	array_foreach(list,
		function(value, index) {
			if(value == _value) {
				array_delete(list, index, 1)
				exit
			}
		}
	)
} 


