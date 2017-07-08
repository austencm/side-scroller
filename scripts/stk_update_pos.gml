// stk_update_pos( )
// Match the position/angle/xscale of currently stuck object

event_inherited()

if (stuck_to) {
    var xscale = stuck_to.image_xscale
    stick_to(stuck_to, offset_x * xscale, offset_y, offset_angle * xscale)
    image_xscale = xscale
}
