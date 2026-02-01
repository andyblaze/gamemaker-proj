audio_play_sound(sexp, 1, false);
instance_destroy(other);
//effect_create_layer("Effects", ef_explosion, x, y, 1, c_white);
// Random size
var ex_size = random_range(0.6, 1.2);

// Slight position jitter
var ex_x = x + random_range(-6, 6);
var ex_y = y + random_range(-6, 6);

// Slight orange/red variation
var ex_col = make_color_rgb(
    irandom_range(220, 255), // Red
    irandom_range(100, 160), // Green
    irandom_range(0, 40)     // Blue
);

// Create main explosion
effect_create_layer("Effects", ef_explosion, ex_x, ex_y, ex_size, ex_col);

// Optional: extra small burst (adds violence)
if (irandom(1) == 0) {
    effect_create_layer(
        "Effects",
        ef_explosion,
        ex_x + random_range(-8, 8),
        ex_y + random_range(-8, 8),
        ex_size * 0.6,
        c_white
    );
}



direction = random(360);

if sprite_index == frame90
{
        sprite_index = Sprite4;
        instance_copy(true);
}
else if instance_number(Object3) < 12
{
        sprite_index = Sprite4;
        x = -100;
}
else
{
        instance_destroy();
}