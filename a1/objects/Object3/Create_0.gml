speed = 1;
direction = random(360);
image_angle = random(360);

// Random subtle tint
var r = irandom_range(-10, 10);
var g = irandom_range(-20, 20);
var b = irandom_range(-10, 10);

image_blend = make_color_rgb(50+r, 50+g, 50+b);