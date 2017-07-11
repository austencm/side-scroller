/// Draw debug info
if (!DEBUG)
    return false;   
    
// Draw GUI
if ( instance_exists(player) ) {
    draw_set_colour(c_white);
    draw_set_font(font_debug);
    
    gui_text = array(
        "FPS: " + string(fps),
        "X: " + string(player.x) + "  Y: " + string(player.y),
        "hsp: " + string(player.hsp) + "  vsp: " + string(player.vsp),
        "Zoom: " + string(Camera.zoomed),
        "Fly: " + string(player.can_fly),
        "Jump: " + string(player.jumps_max - player.jumps) + " / " + string(player.jumps_max),
        "",
        "WASD or ARROWS to Move",
        "SPACE to Jump",
        "LEFT CLICK to Attack",
        "RIGHT CLICK to Interact",
        "",
        "O for Fullscreen",
        "C to Enable Cheats (Fly)",
        "MIDDLE CLICK to Teleport",
        "",
        "R to Restart",
        "[ to go to prev room",
        "] to go to next room",
        "Z to Zoom",
        "P for Particles",
        ""
    );
    
    for (var i = 0; i < array_length_1d(gui_text); i++) {
        draw_text(10, i * 20 + 10, gui_text[i]);
    }
}
