get_damaged(oDamageParent);
///xem sat thuong
 var _healthPercent = 1-(hp/maxHp);
 image_index = _healthPercent*(image_number -1);


if hp<=0{
	// tao ra vu no
	var _boomInst = instance_create_depth(x+8,y+8,-3000,oBigBoom);
	with(_boomInst)
	{
		image_xscale=1.5;
        image_yscale=1.5;
	}
	//dung man hinh

	
	//bien mat

instance_destroy()
}