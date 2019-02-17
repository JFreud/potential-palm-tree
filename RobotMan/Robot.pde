class Robot {
  int size, speed;
  int moralityLevel, activityLevel, chaosLevel; 
  PVector pos;
  float dir;

  Robot(int size, int speed) {
    pos = new PVector (width/2, height/2);
    this.size = size;
    this.speed = speed;
    dir = 90;
  }
  
  void display() {
    fill(255);
    rect(pos.x, pos.y, size, size);
    update();
    checkBoundaries();
    //checkDoors();
  }
  
  void update() {
    if (up) { 
      pos.y -= speed;
      dir = 0;
    }
    if (left) { 
      pos.x -= speed; 
      dir = 270;
    }
    if (down) { 
      pos.y += speed; 
      dir = 180;
    }
    if (right) {
      pos.x += speed; 
      dir = 90;
    }
  }
  
  //void checkDoors() {
  // for (int i = 0; i < currRoom.entities.size(); i++) {
  //  if (currRoom.
  //  Door currDoor = doors.get(i);
  //  if (pos.x >= currDoor.x && 
  //      pos.x - 5 <= currDoor.dWidth &&
  //      pos.y >= currDoor.y && 
  //      pos.y <= currDoor.y + currDoor.dHeight) {
  //       roomNum--; 
  //       if (roomNum <= 0) {
  //         roomNum = 0;
  //       }
  //       pos.x = width - 20;
  //       pos.y = height/2;
  //      }
  //  if (pos.x >= width - currDoor.dWidth && 
  //      pos.y >= currDoor.y && 
  //      pos.y <= currDoor.y + currDoor.dHeight) {
  //       roomNum++;
  //       if (roomNum >= maxRoom) {
  //          roomNum = maxRoom; 
  //       }
  //       pos.x = 20;
  //       pos.y = height/2;
  //      }
  // }
  //}
  
   void checkBoundaries() {
    if (pos.x <= 0) {
      pos.x = 0;
    }
    if (pos.x >= width) {
      pos.x = width;
    }
    if (pos.y <= 0) {
      pos.y = 0;
    }
    if (pos.y >= height) {
      pos.y = height;
    }
  }
  void keyPressed() {
  if (key == 'w') { up = true; }
  if (key == 'a') { left = true; }
  if (key == 's') { down = true; }
  if (key == 'd') { right = true; }
}

void keyReleased() {
  if (key == 'w') { up = false; }
  if (key == 'a') { left = false; }
  if (key == 's') { down = false; }
  if (key == 'd') { right = false; }
}
}
