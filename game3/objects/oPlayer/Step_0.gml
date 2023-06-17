///nhận đầu vào
rightKey = global.rightKey;
leftKey = global.leftKey;
upKey = global.upKey;
downKey = global.downKey;
shootKey= global.shootKey;
swapKeyPressed=global.swapKeyPressed;



///chuyển động của người chơi


///nhận thiệt hại
get_damaged(oDamagePlayer,true);

///chet / thua game




#region

var _horizkey = rightKey - leftKey;
var _vertKey = downKey - upKey;
moveDir = point_direction(0,0, _horizkey,_vertKey);

// get the x and y speeds
var _spd = 0;
var _inputLevel = point_distance(0,0, _horizkey, _vertKey);
_inputLevel = clamp(_inputLevel,0,1);
_spd = moveSpd * _inputLevel;
xspd = lengthdir_x(_spd, moveDir);
yspd = lengthdir_y(_spd, moveDir);
///va cham
if place_meeting(x+xspd,y,oWall){
	xspd=0;
}
if place_meeting(x,y+yspd,oWall){
	yspd=0;
}

///di chuyển người chơi
x += xspd;
y += yspd;
//depth
depth=-bbox_bottom;
#endregion

///trao đổi vũ khí



//sprite control
#region
///player aiming
centerY = y + centerYOffset;
aimDir=point_direction(x, centerY,mouse_x,mouse_y);
///đảm bảo người chơi đang đi đúng hướng
face=round(aimDir/90);
if face == 4 { face = 0; };
///animate
if xspd == 0 && yspd == 0
{
	image_index = 0;
}

///set the player sprite
mask_index=sprite[3]
sprite_index = sprite[face];
#endregion
#region
var _playerWeapons = global.PlayerWeapons;
if swapKeyPressed
{
	///thay đổi lựa chọn và trao đổi vòng
	selectedWeapon++;
	if selectedWeapon >= array_length( _playerWeapons ) { selectedWeapon=0; };

}
	///đặt vũ khí mới
	weapon = _playerWeapons[selectedWeapon];

#endregion
///shoot the weapon
if shootTimer>0{shootTimer--;};
if shootKey && shootTimer<=0
{
	shootTimer=weapon.cooldowm;
	//them dan va thay doi huong
	var _xOffset = lengthdir_x(weapon.length+weaponOffsetDist , aimDir );
	var _yOffset = lengthdir_y(weapon.length+weaponOffsetDist , aimDir );
	
	var _spread = weapon.spread;
	var _spreadDiv = _spread /(max(weapon.bulletNum-1,1));
	
		 ///tạo đúng số lượng đạn
	 for(var i=0;  i < weapon.bulletNum;i++){

	
	var _bulletInst = instance_create_depth(x + _xOffset + i*3, centerY + _yOffset ,depth-100,weapon.bulletObj);
	var _s =id;
	with (_bulletInst)
	{
		dir=_s.aimDir - _spread / 2 + _spreadDiv*i;
	}
	 }
}

if hp<=0
{
	instance_create_depth(0,0,-10000,oGamerOverScreen);
	//ban than tieu diet
	instance_destroy();
	
}