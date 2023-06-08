///move
xspd = lengthdir_x(spd,dir);
yspd =lengthdir_y(spd,dir);

 x+=xspd;
 y+=yspd;
 ///cleanup
 ///nhấn xác nhận phá hủy
 
 if hitConfirm == true && enemyDistroy == true { destroy=true ;};
 



 if destroy == true {instance_destroy();};
 
    ///collision
if place_meeting(x,y,oSolidwall){destroy = true;};
 


if point_distance(xstart,ystart,x,y)>maxDist{	destroy=true;};
//destroy
