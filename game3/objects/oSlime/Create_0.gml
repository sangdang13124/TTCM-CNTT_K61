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


alert =false;
/// vapo pham vi 160 quai vat se duoi theo ban
alert_dis=250;
////vao pham vi quai vat ngung cham vao ban
attack_dis=50;

move_spd =0.5;


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
 
 
