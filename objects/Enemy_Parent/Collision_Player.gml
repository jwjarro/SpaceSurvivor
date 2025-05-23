with(Enemy_Parent)
{
    direction = point_direction(Player.x, Player.y, x, y);
    speed = playerCollisionRebound;
}