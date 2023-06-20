

//lấy đầu vào phím bắn
shootKey=global.shootKey;





//thoi gian mo dan
alpha += alphaSpd;
alpha = clamp(alpha,0,1);

// restar
if  shootKey&&alpha >= 1
{
	
	room_restart();
	
}

