/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

spd = 0;
chaseSpd=.5;
dir = 0;
xspd = 0;
yspd = 0;

face= 1 ;
///tình trạng
state = 0 ;
/// sinh ra tu trong mo
fadeSpd=1/15;
emergeSpd=.25;





/// sinh ra tu trong mo
fadeSpd=1/15;
emergeSpd=.25;
///phục hồi hẹn giờ
cooldowmTime = 10;

/// ban dan
shootTimer=  irandom(cooldowmTime);
//hẹn giờ 
windupTimer=10;
recoverTimer=30;
 bulletInst= noone;
 
 

 
 
 
 bulletXoff=5;
 bulletYoff=-8;
