if hitConfirm ==true {
	
	instance_destroy();

var _boomInst = instance_create_depth(x+8,y+8,-3000,oBoomenemi);
	with(_boomInst)
	{
		image_xscale=5
        image_yscale=5;
	}
	//dung man hinh 1 khoang thoi gian nho
create_screen_pause();
///rung man hinh
screen_shake(8);
	

};
