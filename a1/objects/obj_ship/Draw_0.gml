// Draw the ship
draw_self();

// Only draw thrust when accelerating 

if (keyboard_check(vk_up))
{
    var thrust_dist = 70;

    var tx = x - lengthdir_x(thrust_dist, image_angle);
    var ty = y - lengthdir_y(thrust_dist, image_angle);

    draw_sprite_ext(
        spr_thrust,
        0,
        tx,
        ty,
        1,
        1,
        image_angle,
        c_white,
        1
    );
}

