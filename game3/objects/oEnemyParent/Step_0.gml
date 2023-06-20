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
	///fvx boom
	instance_create_depth(x,y,depth,oAnimatedVFX);
	///quai chet
	instance_destroy();	
}