///thiết lập thiệt hại

get_damaged_create(20,true);



///các biến chuyển động
moveDir = 0;
moveSpd = 2;
xspd = 0;
yspd =0;



#region
centerYOffset=-5;
///set in step event
centerY = y + centerYOffset;
weaponOffsetDist = 4;
aimDir= 0 ;


face = 3 ;
sprite[0] = sPlayerRight;
sprite[1] = sPlayerUp;
sprite[2] = sPlayerLeft;
sprite[3] = sPlayerDown;
#endregion

////thông tin vũ khí
shootTimer=0;

///thêm vũ khí vào kho vũ khí của người chơi
array_push(global.PlayerWeapons, global.WeaponList.black, global.WeaponList.yellow,global.WeaponList.red);

 
selectedWeapon = 0 ;
weapon= global.PlayerWeapons[selectedWeapon];