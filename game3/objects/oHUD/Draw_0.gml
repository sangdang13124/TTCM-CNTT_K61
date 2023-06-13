///lấy tọa độ cam
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

////ve ra thanh mau
if instance_exists(oPlayer)
{
var _border =8;
draw_sprite( sHealthbar , 0, _camX +_border, _camY+_border);

for(var i=0 ; i< playerMaxHp ; i++)
{
///hiển thị hp hiện tại
var _img =1;
if i+1 <= playerHP {_img=2;};

var _sep=3;
draw_sprite(sHealthbar,_img,_camX+_border+_sep*i,_camY+_border);
  }
}