
Robot player;
ArrayList<Door> doors;
int roomNum = 0;
int maxRoom = 2;
boolean up, down, left, right;



void drawRoom0() {
  doors.clear();
  background(192); //silver
  println("gere\n");
  doors.add(new Door (width - 10, height/2 - 20, 10, 40)); //adds the door everytime--inefficient
  
  for (int i = 0; i < doors.size(); i++) {
    doors.get(i).display(); //display every door in the room (room0 only has the rightdoor)
  }
}

void drawRoom1() {
  doors.clear();
  background(150, 75, 0); //brown
  doors.add(new Door (0, height/2 - 20, 10, 40));
  doors.add(new Door (width - 10, height/2 - 20, 10, 40));
  for (int i = 0; i < doors.size(); i++) {
    doors.get(i).display();
  }
  
}

void drawRoom2() {
  doors.clear();
  background(150, 200, 0); //brown
  doors.add(new Door (0, height/2 - 20, 10, 40));
  doors.add(new Door (width - 10, height/2 - 20, 10, 40));
  for (int i = 0; i < doors.size(); i++) {
    doors.get(i).display();
  }
}

void drawRoom() {
  if (roomNum == 0) drawRoom0();
  if (roomNum == 1) drawRoom1();
  if (roomNum == 2) drawRoom2();
  println(roomNum);
  }



void setup() {
  size(500, 400);
  background(125);
  noCursor();
  player = new Robot(20, 5);
  doors = new ArrayList<Door>();
  drawRoom();
}

void draw() {
  gameState();
}

void gameState() {
  drawRoom();
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
