get_damaged(oDamageParent);
///xem sat thuong
var _healthPerrcentage =1-(hp/maxHp)
image_index = _healthPerrcentage*(image_number -1);
if hp<=0{
	///boom
	instance_create_depth(x,y,depth,oSmailBoom2);
	
	
	//xoa
instance_destroy()

}