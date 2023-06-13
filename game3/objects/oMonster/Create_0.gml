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




///phục hồi hẹn giờ
cooldowmTime = 4*60;

/// ban dan
shootTimer=  irandom(cooldowmTime);
//hẹn giờ 
windupTimer=60;
recoverTimer=45;
 bulletInst= noone;
 
 bulletXoff=5;
 bulletYoff=-8;

