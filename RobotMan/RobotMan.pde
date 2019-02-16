
Robot player;
ArrayList<Door> doors;
int prevRoomNum = -1;
int roomNum = 0;
int maxRoom = 2;
color bgco = 125;
boolean up, down, left, right;
Table table;
Scientist scientist;



void setupRoom0() {
  doors.clear();
  bgco = color(192);
  doors.add(new Door (width - 10, height/2 - 20, 10, 40)); //adds the door everytime--inefficient
  
  
}

void setupRoom1() {
  doors.clear();
  bgco = color(150, 75, 0);
  doors.add(new Door (0, height/2 - 20, 10, 40));
  doors.add(new Door (width - 10, height/2 - 20, 10, 40));
}

void setupRoom2() {
  doors.clear();
  bgco = color(150, 200, 0);
  doors.add(new Door (0, height/2 - 20, 10, 40));
  doors.add(new Door (width - 10, height/2 - 20, 10, 40));
}

void drawRoom() {
  if (roomNum != prevRoomNum) {
    if (roomNum == 0) setupRoom0();
    if (roomNum == 1) setupRoom1();
    if (roomNum == 2) setupRoom2();
    prevRoomNum = roomNum;
  }
  background(bgco);
  for (int i = 0; i < doors.size(); i++) {
    doors.get(i).display(); //display every door in the room (room0 only has the rightdoor)
  }
  table.display();
  scientist.display();
  println(roomNum);
  }



void setup() {
  size(500, 400);
  background(125);
  noCursor();
  scientist = new Scientist(200, 200, loadImage("SteveNewHead.png"));
  scientist.changeColor(color(182, 137,108), color(0,0,255));
  table = new Table(50, 50, color(182,155,76), 40, 40, 4);
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
