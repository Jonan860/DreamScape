function array_remove_value(list, _value){
	var idx = -1;

for (var i = 0; i < array_length(list); i++)
{
    if (list[i] == _value)
    {
        idx = i;
        break;
    }
}

if (idx != -1)
{
    array_delete(list, idx, 1);
}
} 


