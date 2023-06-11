/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

spd = 0;
chaseSpd=.5;
dir = 0;
xspd = 0;
yspd = 0;

face=1;
///tình trạng
state = 1 ;
/// ban dan
shootTimer=0;

//hẹn giờ 
windupTimer=10;

///phục hồi hẹn giờ
cooldowmTime = 2*60;
recoverTimer=20;
 bulletInst= noone;

