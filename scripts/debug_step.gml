if (!DEBUG)
    return false
  
if keyboard_check_pressed( ord('R') )
    room_restart()
    
if keyboard_check_pressed(219) && room_previous(room) != -1 // Left bracket
    room_goto_previous()

if keyboard_check_pressed(221) && room_next(room) != -1 // Right bracket
    room_goto_next()
