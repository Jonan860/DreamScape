if(owner.owner == undefined) {
	instance_destroy()
	exit;
}
if(owner.owner.phase == UNIT_PHASES.reviving) {
	owner.perform()
} else {
	instance_destroy()
}
