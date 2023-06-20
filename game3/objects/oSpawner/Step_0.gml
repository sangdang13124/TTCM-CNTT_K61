
///dung man hinh
if screen_pause() {exit;};
///sinh quai
timer++;

///đặt lại thời gian khi đạt đến giới hạn quai vat
if instance_number(oEnemyParent) >= global.activeEnemyMax || global.totaEnemiesSpawned>= global.enemyRoomMax
{
	timer = 0;
}
if timer >= spawnTime && !place_meeting(x ,y , oMonster)
{
	///tạo kẻ thù
var _inst = instance_create_depth(x,y,depth-1,oMonster);
with(_inst)
{
	///lam cho quai vat vo hinh
	image_alpha=0;
	
state=-1;	
	
}
///thoi gian hoi
timer=0;
	
}