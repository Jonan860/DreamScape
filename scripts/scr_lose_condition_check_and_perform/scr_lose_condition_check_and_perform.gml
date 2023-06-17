function scr_lose_condition_check_and_perform() {
	if(global.lille_skutt.phase="dead" and global.nils.phase="dead" and global.ida.phase="dead" or global.nils.HP<=0 and global.nils.eaten)
	{
if(global.nils.HP<=0 and global.nils.eaten)
	{
	lose_text="Nils got eaten''!"
	}
	else
{
	lose_text="All heroes ''fainted''!"
}
	room_goto(room_lose)
	}

}
