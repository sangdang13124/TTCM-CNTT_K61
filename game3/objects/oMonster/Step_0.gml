

///trang thai
switch(state)

{
	/// trang thai ruot duoi
	case 0:
	
	if instance_exists(oPlayer)
{
dir = point_direction(x,y,oPlayer.x,oPlayer.y);
}
////đặt đúng tốc độ

spd = chaseSpd;
    break;
	
////trạng thái tạm dừng và bắn
case 1:
	if instance_exists(oPlayer)
{
dir = point_direction(x,y,oPlayer.x,oPlayer.y);
}
///đặt đúng tốc độ
spd=0;
///dừng hoạt hình
///đặt chỉ mục hình ảnh theo cách thủ công
image_index=0;


}



//đuổi theo người chơi


///nhận được tốc độ
xspd = lengthdir_x(spd  ,dir);
yspd = lengthdir_y(spd ,dir);

/// chuyen doi mat theo huong nhin

if dir>90 && dir<270
{
	face=-1;
}else { 
	face =1;
}



///va cham
if place_meeting(x + xspd , y, oWall) ||  place_meeting(x + xspd ,y,oEnemyParent)
{
	xspd = 0;
}
if place_meeting(x , y+yspd, oWall) ||  place_meeting(x  ,y+yspd,oEnemyParent)
{
	yspd = 0;
}


/// di chuyen
 x += xspd;
 y += yspd;
 ///đặt độ sâu
 depth=-y;

// nhận sát thương và chết
event_inherited();

