
depth=-y
//weapon style




floatDir=0;
floatSpd=6;
ammoAdd=10;


///đặt vũ khí dựa trên chỉ số hình ảnh trong trình chỉnh sửa phòng

if image_index == 0
{
weapon= global.WeaponList.black;
}
if image_index == 1
{
	weapon= global.WeaponList.yellow;
	ammoAdd=100;
}
if image_index == 2
{
	weapon= global.WeaponList.red;
	ammoAdd=20;
}

// dat dung trang thai

sprite_index=weapon.pickupSpirite;
image_index = 0;







/*var _size = array_length(global.PlayerWeapons);
for(var i=0 ; i< _size;i++)
if weapon == global.PlayerWeapons[i]
{
	instance_destroy();
}



