
depth=-y

floatDir=0;
floatSpd=6;

////đặt vũ khí dựa trên chỉ số hình ảnh trong trình chỉnh sửa phòng
if image_index == 0
{
weapon= global.WeaponList.black;
}
if image_index ==1
{
	weapon= global.WeaponList.yellow;
}
if image_index ==2
{
	weapon= global.WeaponList.red;
}
// dat dung trang thai 
sprite_index=weapon.pickupSpirite;
image_index = 0;

