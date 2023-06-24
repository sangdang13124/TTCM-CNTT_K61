////nhận thiệt hại
get_damaged(oDamageEnemy);


//quai chet
if hp <= 0
{
	///thêm vào tổng số kẻ thù da giet
	global.enemyKillCount++;
	///roi mau va vat pham khi chet
	
	if global.enemyKillCount mod 20 == 0
	{
	instance_create_depth(x,y,depth,oHeart);
	}
	
	
	//if global.enemyKillCount mod 1 == 0
//	{
	//var _inst =  instance_create_depth(x,y,depth,oWeaponPickup);
 //   _inst.image_index=irandom_range(1,image_number-1);
	//}
	///fvx boom
	instance_create_depth(x,y,depth,oAnimatedVFX);
	///quai chet
	instance_destroy();	
}