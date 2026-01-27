// Create Event
spin_speed = 0.1 + (1 / sprite_width) * 5; // tweak numbers
image_angle = random(360); // start at a random rotation
direction = random(360);

// Random subtle tint
var r = irandom_range(-10, 10);
var g = irandom_range(-20, 20);
var b = irandom_range(-10, 10);

image_blend = make_color_rgb(200+r, 240+g, 220+b);
