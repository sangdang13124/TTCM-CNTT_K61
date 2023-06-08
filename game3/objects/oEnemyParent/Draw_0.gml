draw_self();

draw_text(x,y,string( hp ) );
///kiểm tra kích thước của danh sách thiệt hại
draw_text(x , y - 32, string( ds_list_size(damageList) ) );