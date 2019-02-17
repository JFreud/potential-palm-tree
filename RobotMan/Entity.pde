class Entity {
  int x, y, wth, ht;
  boolean isCollide;
  int iBoxX, iBoxY, iBoxW, iBoxH;

  Entity(int x, int y, int wth, int ht) {
    this.x = x;
    this.y = y;
    this.wth = wth;
    this.ht = ht;
  }

  void display() {
  };

  void checkColliding(Robot player) {

    if ((isWithin((int)player.pos.x, (int)player.pos.y)
      || (isWithin((int)player.pos.x, (int)(player.pos.y+player.size))))
      && (player.dir == 270)) {
      player.pos.x = x + wth;
    }
    if ((isWithin((int)player.pos.x, (int)player.pos.y)
      || (isWithin((int)(player.pos.x + player.size), (int)player.pos.y)))
      && (player.dir == 0)) {
      player.pos.y = y + ht;
    }
    if ((isWithin((int)(player.pos.x + player.size), (int)player.pos.y)
      || (isWithin((int)(player.pos.x + player.size), (int)(player.pos.y + player.size))))
      && (player.dir == 90)) {
      player.pos.x = x - player.size;
    }
    if ((isWithin((int)(player.pos.x + player.size), (int)(player.pos.y + player.size))
      || (isWithin((int)player.pos.x, (int)(player.pos.y + player.size))))
      && (player.dir == 180)) {
      player.pos.y = y - player.size;
    }
  }
  boolean isWithin(int px, int py) {
    return (px > x && px < x + wth) && (py > y && py < y + ht);
  }

  boolean checkInteractable(Robot player) {

    return false;
  }
}
