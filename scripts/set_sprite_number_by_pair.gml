// set_sprite_by_pair( spr_pair ) 
// Sets the sprite of the entity to be the one in the sprite list 
//  corresponding to the input value
// If spr_pair does not match sprites in sprite list, keeps last sprite used

var spr_pair = argument0;

for (var i = 0; i < array_length_1d(sprites); i++) {
    if spr_pair == sprites[i] {
        sprite_current = i
        
        return true
    }
}
return false
