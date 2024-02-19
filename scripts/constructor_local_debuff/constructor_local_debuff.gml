
function constructor_local_debuff(global_structu, perputrator_spell_lvl) constructor {
	total_duration = is_undefined(global_structu.duration) ? global_structu.duration : global_structu.duration_list[|perputrator_spell_lvl - 1]
	spell_health = global_structu.spell_health
	duration = total_duration
	icon_sprite = global_structu.icon_sprite
	name = global_structu.name
	global_struct = global_structu
}