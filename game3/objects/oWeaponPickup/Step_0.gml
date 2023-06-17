
///chuyen dong len xuong cua sung
floatDir+=floatSpd;
y=ystart+dsin(floatDir)*2;

///người chơi đã có một trong những vu khi này chưa
var _size = array_length(global.PlayerWeapons);
for(var i = 0; i < _size ;i++)
{
	///kiểm tra xem vũ khí đã có trong danh sách vũ khí
	if weapon == global.PlayerWeapons[i]
{
	///xoa
	instance_destroy();
	exit;
}
}

///thêm vũ khí vào danh sách người chơi
if place_meeting(x,y,oPlayer)
{
/// them vao danh sach vu khi	
array_push(global.PlayerWeapons, weapon);
///đặt làm vũ khí của người chơi
oPlayer.selectedWeapon = array_length(global.PlayerWeapons)-1;



///xoa khi nhat vu khi
instance_destroy();
}