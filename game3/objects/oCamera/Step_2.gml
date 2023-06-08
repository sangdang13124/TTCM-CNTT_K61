// lay chieu rong va chieu cao
var _camW = camera_get_view_width(view_camera[0]);
var _camH = camera_get_view_height(view_camera[0]);

///tập trung vào người chơi
if instance_exists(oPlayer)
{
	x= oPlayer.x -_camW/2;
	y= oPlayer.centerY  -_camH/2;
}


///kẹp vị trí camera vào viền phòng
x= clamp(x,0,room_width-_camW);
y= clamp(y,0,room_height-_camH);
///đặt vị trí máy ảnh
camera_set_view_pos(view_camera[0],x,y);