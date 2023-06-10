

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

///chuyển sang trạng thái chụp
shootTimer++;
if shootTimer > cooldowmTime
{
	////đi đến trạng thái bắn
	state=1;
	///đặt lại bộ đếm thời gian để chụp cũng có thể sử dụng nó
	shootTimer=0;
}
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

// ban 1 vien dan 
shootTimer++;
//tao vien dan
if shootTimer==1
{
	bulletInst = instance_create_depth(x,y,depth,oEnemybullet);
}

///bắn viên đạn sau khi thời gian hen gio kết thúc
if shootTimer == windupTimer && instance_exists(bulletInst)
{
	bulletInst.state=1;
}

///phục hồi và quay lại đuổi theo người chơi
if shootTimer > windupTimer + recoverTimer
{
	// duoi theo nguoi choi
	state = 0;
	///đặt lại bộ đếm thời gian để chúng tôi có thể sử dụng lại
	shootTimer=0;
}

break;
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

