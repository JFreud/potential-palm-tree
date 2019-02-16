
Robot player;
int roomNum = 0;
boolean up, down, left, right;
Table table;


void drawRoom0() {
  background(192);
  
  
  
}


void drawRoom(int roomNum) {
  if (roomNum == 0) {
    drawRoom0();
  }
  table.display();
}


void setup() {
  size(500, 400);
  background(125);
  noCursor();
  table = new Table(50, 50, color(182,155,76), 40, 40, 4);
  player = new Robot();
  drawRoom(roomNum);
  
}

void draw() {
  gameState();
}

void gameState() {
  drawRoom(roomNum);
  player.display();  
  
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
