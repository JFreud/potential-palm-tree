
Robot player;
Room room0, room1, room2;
Room currRoom;
int prevRoomNum = -1;
int roomNum = 0;
int maxRoom = 2;
boolean up, down, left, right;



void setupRoom0() {
  ArrayList<Entity> r0Entities = new ArrayList<Entity>();
  r0Entities.add(new Door (width - 10, height/2 - 20, 10, 40, 0));
  r0Entities.add(new Scientist(200, 200, loadImage("SteveNewHead.png")));
  r0Entities.add(new Table(50, 50, color(182,155,76), 40, 40, 4, 0));
  room0 = new Room(r0Entities, color(192));
}

void setupRoom1() {
  ArrayList<Entity> r1Entities = new ArrayList<Entity>();
  r1Entities.add(new Door (0, height/2 - 20, 10, 40, 0));
  r1Entities.add(new Door (width - 10, height/2 - 20, 10, 40, 0));
  room1 = new Room(r1Entities, color(150, 75, 0));
}

void setupRoom2() {
  ArrayList<Entity> r2Entities = new ArrayList<Entity>();
  r2Entities.add(new Door (0, height/2 - 20, 10, 40, 0));
  r2Entities.add(new Door (width - 10, height/2 - 20, 10, 40, 0));
  room2 = new Room(r2Entities, color(150, 200, 0));
}

void drawRoom() {
  if (roomNum != prevRoomNum) {
    if (roomNum == 0) currRoom = room0;
    if (roomNum == 1) currRoom = room1;
    if (roomNum == 2) currRoom = room2;
    prevRoomNum = roomNum;
  }
  background(currRoom.bgco);
  for (int i = 0; i < currRoom.entities.size(); i++) {
    currRoom.entities.get(i).display(); //display every entity in the room (room0 only has the rightdoor)
  }
  println(roomNum);
  }



void setup() {
  size(500, 400);
  background(125);
  noCursor();
  setupRoom0();
  setupRoom1();
  setupRoom2();
  player = new Robot(20, 5);
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
