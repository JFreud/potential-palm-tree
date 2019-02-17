class Entity {
  int x, y, wth, ht;
  boolean isCollide;
  int iBoxX, iBoxY, iBoxW, iBoxH;

  Entity(int x, int y, int wth, int ht){
    this.x = x;
    this.y = y;
    this.wth = wth;
    this.ht = ht;
  }
  
  void display() {};
  
  boolean checkColliding(Robot player) {
    if (player.pos.x >= x - player.size/2 && //approaching from left
        player.pos.x < x + wth &&
        player.pos.y >= y &&
        player.pos.y < y + ht) {
      player.pos.x = x - player.size/2;
    }
    
    if (player.pos.x > x &&
        player.pos.x <= x + wth + player.size/2 &&
        player.pos.y >= y &&
        player.pos.y < y + ht) {
          println("poop");
        }
        
    return false;
  }
  
  boolean checkInteractable(Robot player){
    
    return false;
  }
  
  
  

}
