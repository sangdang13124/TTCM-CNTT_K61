/// @description Insert description here
// You can write your code in this editor
///dung hinh anh

if screen_pause() {exit;};

///chuyen dong
xspd = lengthdir_x(spd,dir);
yspd =lengthdir_y(spd,dir);

 x+=xspd;
 y+=yspd;
 
/// do sau
depth =-y;
 ///cleanup
 ///nhấn xác nhận phá hủy
 image_angle=dir;
 
 if hitConfirm == true && enemyDistroy == true { destroy=true ;};
 



 if destroy == true {
	 instance_create_depth(x,y,depth-50,oBigBoom);
	 instance_destroy();};
 
    ///collision
if place_meeting(x,y,oSolidwall){destroy = true;};
 


  //  if point_distance(xstart,ystart,x,y)>maxDist{	destroy=true;};

  if point_distance(xstart,ystart,x,y)>maxDist{
xspd = lengthdir_x(spd,dir);
yspd =lengthdir_y(spd,dir);

 x-=xspd;
 y-=yspd;
};
 
 	
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
