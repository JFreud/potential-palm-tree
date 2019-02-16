class Robot {
  int size;
  int moralityLevel, activityLevel, chaosLevel; 
  PVector pos;

  Robot() {
    pos = new PVector (width/2, height/2);
    size = 20;
  }
  
  void display() {
    fill(255);
    ellipse(pos.x, pos.y, size, size);
    update();
    checkBoundaries();
  }
  
  void update() {
    if (up) { pos.y -= 5; };
    if (left) { pos.x -= 5; };
    if (down) { pos.y += 5; };
    if (right) { pos.x += 5; };
  }
  
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
