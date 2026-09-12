event_inherited()

// 1. Skapa själva partikelsystemet
global.part_system = part_system_create();
part_system_depth(global.part_system, -100); // Lägg dem ovanför de flesta andra objekt

// 2. Skapa partikeltypen för hjärtat
global.part_heart = part_type_create();

// Koppla din sprite till partikeln (false = animera inte spriten, false = slumpa inte bildrutor, true = jämna ut pixlar)
part_type_sprite(global.part_heart, spr_heart, false, false, true);

// Storlek: startar mellan 0.5x och 1x storlek, krymper lite mot slutet
part_type_size(global.part_heart, sprite_get_height(spr_hexagon_pink) / sprite_get_height(spr_heart) / 8, sprite_get_height(spr_hexagon_pink) / sprite_get_height(spr_heart) / 6, -0.0002, 0);

// Livslängd: Hur många frames (steps) hjärtat lever (t.ex. 2-3 sekunder om spelet körs i 60 FPS)
part_type_life(global.part_heart, 60, 80);

// Rörelse uppåt: Hastighet mellan 1 och 3 pixlar per frame. Riktning 90 grader är spikrak uppåt.
part_type_direction(global.part_heart, 85, 95, 0, 0); // Tillåter 5 graders variation åt sidorna
part_type_speed(global.part_heart, 1, 3, 0, 0);

// Det magiska "löveffekten": Får hjärtat att svaja i sidled (wiggle/shake)
// Parametrar: (partikel, min_grad, max_grad, hastighet, dämpning, skak)


// Opacitet: Startar synlig, tonar ut (fade out) helt i slutet av sin livslängd
part_type_alpha3(global.part_heart, 1.0, 1.0, 0.0);

