//đuổi theo người chơi

if instance_exists(oPlayer)
{
dir = point_direction(x,y,oPlayer.x,oPlayer.y);
}
///nhận được tốc độ
xspd = lengthdir_x(spd  ,dir);
yspd = lengthdir_y(spd ,dir);

/// chuyen doi mat theo huong nhin
if xspd >0{face=1;};
if xspd <0{face=-1;};




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

// nhận sát thương và chết
event_inherited();

