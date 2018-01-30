if(instance_exists(other))
{
other.hp -= obj_enemy.damage
instance_destroy(self)
}