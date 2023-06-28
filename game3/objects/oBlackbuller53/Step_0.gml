///dung hinh anh

if screen_pause() {exit;};
image_angle=dir;

time_since_update += delta_time;

// Kiểm tra xem có đến thời điểm cập nhật mới chưa
if (time_since_update > time_to_update)
{
    // Tạo hướng ngẫu nhiên và tính vận tốc mới
    
   spd = irandom_range(0, 5); // Có thể tùy chỉnh giới hạn tốc độ

    // Tính toán vận tốc theo hướng mới
    xspd = lengthdir_x(spd, dir);
    yspd = lengthdir_y(spd, dir);

    // Thiết lập lại thời gian cập nhật và thời gian trôi qua
    time_since_update = 0;
}

// Cập nhật tọa độ của đối tượng theo vận tốc mới tính toán được
x += xspd;
y += yspd;
 
 if hitConfirm == true && enemyDistroy == true { destroy=true ;};
 



 if destroy == true {
	 instance_create_depth(x,y,depth-50,oBoomBulet);
	 instance_destroy();};
 
    ///collision
if place_meeting(x,y,oSolidwall){destroy = true;};
 


    if point_distance(xstart,ystart,x,y)>maxDist{	
		
		
	nearestObj = instance_nearest(x, y, oEnemyParent);
if instance_exists(nearestObj)
{
   dir = point_direction(x,y,nearestObj.x,nearestObj.y);
   // tiếp tục xử lý như bình thường dựa trên đối tượng gần nhất tìm thấy
}
if place_meeting(x,y,oEnemyParent){destroy = true;};
  
  };

//2  if point_distance(xstart,ystart,x,y)>maxDist{
//xspd = lengthdir_x(spd,dir);
//yspd =lengthdir_y(spd,dir);

 //x+=xspd;
 //y+=yspd;	};
 
 	
 //if point_distance(xstart,ystart,x,y)>maxDist{
	 
	//  if instance_exists(oPlayer)
	// {
	//	 dir = point_direction(x,y,oPlayer.x,oPlayer.y);
	
//xspd = lengthdir_x(spd,dir);
//yspd = lengthdir_y(spd,dir);

// x+=xspd;
// y+=yspd;

 
 // }
  // destroy=true;
 //};
//destroy
