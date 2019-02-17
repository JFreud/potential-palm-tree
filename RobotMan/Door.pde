class Door extends RegEntity {


  Door(int x, int y, int dWidth, int dHeight, int col) { 
    super(x, y, dWidth, dHeight, col);
  }

  void display() {
    fill(col);
    rect(x, y, wth, ht);
    update();
  }

  void update() {
    if (checkInteractable(player)) {
      if (x > width/2) { //right door
        roomNum++;
        if (roomNum >= maxRoom) {
          roomNum = maxRoom;
        }
        player.pos.x = 20;
        player.pos.y = height/2;
      }
      if (x < width/2) { //left door
        roomNum--;
        if (roomNum <= 0) {
          roomNum = 0;
        }
        player.pos.x = width - 40;
        player.pos.y = height/2;
      }
    }
  }
}
