if (cooldown == 0 && obj_player.character == "P")
{
    cooldown = 50
    obj_player.character = "N"
    instance_create(obj_player.x, obj_player.y, obj_bombexplosionharmless)
    keyboard_key_release(vk_left)
    keyboard_key_release(vk_right)
    keyboard_key_release(vk_up)
    keyboard_key_release(vk_down)
    keyboard_key_release(ord("Z"))
    keyboard_key_release(ord("X"))
    keyboard_key_release(ord("C"))
    keyboard_key_release(vk_shift)
}
if (cooldown == 0 && obj_player.character == "N")
{
    cooldown = 50
    obj_player.character = "C"
    instance_create(obj_player.x, obj_player.y, obj_bombexplosionharmless)
    keyboard_key_release(vk_left)
    keyboard_key_release(vk_right)
    keyboard_key_release(vk_up)
    keyboard_key_release(vk_down)
    keyboard_key_release(ord("Z"))
    keyboard_key_release(ord("X"))
    keyboard_key_release(ord("C"))
    keyboard_key_release(vk_shift)
}
if (cooldown == 0 && obj_player.character == "C")
{
    cooldown = 50
    obj_player.character = "G"
    instance_create(obj_player.x, obj_player.y, obj_bombexplosionharmless)
    keyboard_key_release(vk_left)
    keyboard_key_release(vk_right)
    keyboard_key_release(vk_up)
    keyboard_key_release(vk_down)
    keyboard_key_release(ord("Z"))
    keyboard_key_release(ord("X"))
    keyboard_key_release(ord("C"))
    keyboard_key_release(vk_shift)
}
if (cooldown == 0 && obj_player.character == "G")
{
    cooldown = 50
    obj_player.character = "P"
    instance_create(obj_player.x, obj_player.y, obj_bombexplosionharmless)
    keyboard_key_release(vk_left)
    keyboard_key_release(vk_right)
    keyboard_key_release(vk_up)
    keyboard_key_release(vk_down)
    keyboard_key_release(ord("Z"))
    keyboard_key_release(ord("X"))
    keyboard_key_release(ord("C"))
    keyboard_key_release(vk_shift)
}






















