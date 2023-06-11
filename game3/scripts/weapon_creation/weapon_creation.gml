/// cac mau vu khi
function create_waepon(_sprite = sBlack,_weaponLength = 0,_bulletObj = oBlackbuller,_cooldowm = 1,_bulletNum = 1,_spread = 0)  constructor
{
	sprite = _sprite;
	length = _weaponLength;
	bulletObj = _bulletObj;
	cooldowm = _cooldowm;
	bulletNum=_bulletNum;
	spread = _spread;

}
///người chơi là nhà phát minh vũ khí


global.PlayerWeapons = array_create(0);


global.WeaponList =
{


black : new create_waepon(
	
	 sBlack,
	 sprite_get_bbox_right(sBlack) - sprite_get_xoffset(sBlack),
	 oBlackbuller,
	 40,
	 1,
	 0,
	),
	
	yellow : new create_waepon(
	
	 sBlackYellow,
     sprite_get_bbox_right(sBlackYellow) + sprite_get_xoffset(sBlack) ,
	 oYellowbullet,
	 10,
	 1,
	 1,
	 	),
		
	 red : new create_waepon(
	 sRed,
     sprite_get_bbox_right(sRed) + sprite_get_xoffset(sRed) ,
	 oRedbullet,
	 15,
	 6,
	 90,

	),
}