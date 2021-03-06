class Robot {
  int size, speed;
  int moralityLevel, activityLevel, chaosLevel; 
  PVector pos;
  float dir;
  int sprite = 0;

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
    if (right) {
      if (sprite < 5) {
        rect(pos.x + size, pos.y + size/10, size/8, size/3);
        rect(pos.x + size, pos.y + size/2 + size/10, size/4, size/3);
      } else if (sprite >= 5) {
        rect(pos.x + size, pos.y + size/10, size/4, size/3);
        rect(pos.x + size, pos.y + size/2 + size/10, size/8, size/3);
      }
    }
    if (up) {
      if (sprite < 5) {
        rect(pos.x + size/10, pos.y, size/3, size/8);
        rect(pos.x + size/2 + size/10, pos.y, size/3, size/4);
      } else if (sprite >= 5) {
        rect(pos.x + size/10, pos.y, size/3, size/4);
        rect(pos.x + size/2 + size/10, pos.y, size/3, size/8);
      }
    }
    if (down) {
      if (sprite < 5) {
        rect(pos.x + size/10, pos.y + size, size/3, size/8);
        rect(pos.x + size/2 + size/10, pos.y + size, size/3, size/4);
      } else if (sprite >= 5) {
        rect(pos.x + size/10, pos.y + size, size/3, size/4);
        rect(pos.x + size/2 + size/10, pos.y + size, size/3, size/8);
      }
    }
    if (left) {
      if (sprite < 5) {
        rect(pos.x - size/8, pos.y + size/10, size/8, size/3);
        rect(pos.x - size/4, pos.y + size/2 + size/10, size/4, size/3);
      } else if (sprite >= 5) {
        rect(pos.x - size/4, pos.y + size/10, size/4, size/3);
        rect(pos.x - size/8, pos.y + size/2 + size/10, size/8, size/3);
      }
    }
    
    
    checkBoundaries();
    //checkDoors();
  }

  void update() {
    if (lastPressed.size() != 0) {
      if (lastPressed.get(0).equals("up")) { 
        pos.y -= speed;
        dir = 0;
      }
      if (lastPressed.get(0).equals("left")) { 
        pos.x -= speed; 
        dir = 270;
      }
      if (lastPressed.get(0).equals("down")) { 
        pos.y += speed; 
        dir = 180;
      }
      if (lastPressed.get(0).equals("right")) {
        pos.x += speed; 
        dir = 90;
      }
    }

    if (sprite > 10) {
      sprite = 0;
    } else if (sprite <= 10) {
      sprite++;
    }
  }

  void checkBoundaries() {
    if (pos.x <= 0) {
      pos.x = 0;
    }
    if (pos.x >= width - size) {
      pos.x = width - size;
    }
    if (pos.y <= 0) {
      pos.y = 0;
    }
    if (pos.y >= height - size) {
      pos.y = height - size;
    }
  }
  void keyPressed() {
    if (key == 'w') { 
      up = true;
    }
    if (key == 'a') { 
      left = true;
    }
    if (key == 's') { 
      down = true;
    }
    if (key == 'd') { 
      right = true;
    }
  }

  void keyReleased() {
    if (key == 'w') { 
      up = false;
    }
    if (key == 'a') { 
      left = false;
    }
    if (key == 's') { 
      down = false;
    }
    if (key == 'd') { 
      right = false;
    }
  }
}
