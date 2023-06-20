// Tínhán vị trí mới của hình vuông dựa trên kích thước, tốc độ và hướng di chuyển
x += lengthdir_x(speed, dir);
y -= lengthdir_y(speed, dir);

// Kiểm tra xem hình vuông có tràn ra khỏi giới hạn của game không
if x < size/2 {
    x = size/2;
    dir = 180 - dir;
}
if x > room_width - size/2 {
    x = room_width - size/2;
    dir = 180 - dir;
}
if y < size/2 {
    y = size/2;
    dir = -dir;
}
if y > room_height - size/2 {
    y = room_height - size/2;
    dir = -dir;
}