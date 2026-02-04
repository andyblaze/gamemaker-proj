move_wrap(true, true, 0);

// Thrust
if (keyboard_check(vk_up))
{
    motion_add(image_angle, 0.05);
}

// Rotation
if (keyboard_check(vk_left))
{
    image_angle += 2;
}
if (keyboard_check(vk_right))
{
    image_angle -= 2;
}

// Fire
if (mouse_check_button_pressed(mb_left))
{
    motion_add(image_angle, -0.01); // recoil (nice touch)
    instance_create_layer(x, y, "Instances", obj_bullet);
    audio_play_sound(Sound3, 1, false);
}

// ---- SPEED CLAMP ----
var max_speed = 8;

var spd = point_distance(0, 0, hspeed, vspeed);

if (spd > max_speed)
{
    var dir = point_direction(0, 0, hspeed, vspeed);
    hspeed = lengthdir_x(max_speed, dir);
    vspeed = lengthdir_y(max_speed, dir);
}

// Step Event
var back_dist = 0;  // distance behind ship
var px = x - lengthdir_x(back_dist, image_angle);
var py = y - lengthdir_y(back_dist, image_angle);

// Spawn tickover particle
effect_create_depth(
    ps_ship_idle,
    px,
    py,
    1,
    c_white,
    depth - 1
);
