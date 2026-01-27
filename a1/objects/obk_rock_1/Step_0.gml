move_wrap(true, true, 100);

image_angle += spin_speed;
// Move asteroid along curve
x += hspeed;
y += vspeed + sin(x / 5) * 2;



