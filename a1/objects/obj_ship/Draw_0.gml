// Draw the ship
draw_self();

var idle_dist = 35;
    var ix = x - lengthdir_x(idle_dist, image_angle);
    var iy = y - lengthdir_y(idle_dist, image_angle);
    draw_sprite_ext(
        spr_idle,
       floor(idle_frame),
        ix,
        iy,
        1,
        1,
        image_angle,
        c_white,
        1
    );

// Only draw thrust when accelerating 

if (keyboard_check(vk_up))
{
    var thrust_dist = 70;

    var tx = x - lengthdir_x(thrust_dist, image_angle);
    var ty = y - lengthdir_y(thrust_dist, image_angle);

    draw_sprite_ext(
        spr_thrust,
       floor(thruster_frame),
        tx,
        ty,
        1,
        1,
        image_angle,
        c_white,
        1
    );
}

