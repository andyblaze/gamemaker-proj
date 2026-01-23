// Create particle system
part_sys = part_system_create();
part_sys_depth = 100; // make sure it draws above bg

// Create particle type
part_star = part_type_create();
part_type_shape(part_star, pt_shape_pixel);    // pixel-sized star
part_type_size(part_star, 1, 2, 0, 0);        // tiny variation
part_type_color1(part_star, c_white);         // white stars
part_type_speed(part_star, 0, 0, 0, 0);      // static stars
part_type_life(part_star, 100000, 100000);   // effectively immortal

for (var i = 0; i < 200; i++) {
    var sx = irandom(room_width);
    var sy = irandom(room_height);
    part_particles_create(part_sys, sx, sy, part_star, 1);
}
