var life = obj_player.life;

var xx = 10;
var yy = 10;

var ww = xx + 150;
var ww2 = xx + (life / 100) * 150;
var hh = yy + 20;

draw_set_color(c_red);
draw_rectangle(xx, yy, ww, hh, 0);

draw_set_color(c_green);
draw_rectangle(xx, yy, ww2, hh, 0);

draw_set_color(c_black);
draw_rectangle(xx, yy, ww, hh, 1);

draw_set_color(c_white);
draw_text(xx + 45, yy, string(obj_player.life) + "/" + string(obj_player.max_life));