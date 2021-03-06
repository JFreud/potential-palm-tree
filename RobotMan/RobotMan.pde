
Robot player;
int sizeX = 500; 
int sizeY = 400;
Room room0, room1, room2;
Room currRoom;
int prevRoomNum = -1;
int roomNum = 0;
int maxRoom = 2;
boolean up, down, left, right, interact;
ArrayList<String> lastPressed;
boolean inMenu = true;
ArrayList<String> opts = new ArrayList<String>();
OptionBox currentBox;



void setupRoom0() {
  PImage bg = loadImage("floor.png");
  println(bg.width);
  println(bg.height);
  ArrayList<Entity> r0Entities = new ArrayList<Entity>();
  r0Entities.add(new Door (width - 10, height/2 - 20, 10, 40, 0));
  r0Entities.add(new Scientist(200, 200, 100, 100, loadImage("SteveNewHead.png")));
  r0Entities.add(new Table(10, 35, color(200), 200, 40, 4, 0));
  r0Entities.add(new Table(260, 35, color(200), 200, 40, 4, 0));
  r0Entities.add(new Table(10, 100, color(200), 50, 200, 4, 0));
  r0Entities.add(new Computer(70, 18, 60, 40));
  room0 = new Room(r0Entities, bg);
}

void setupRoom1() {
  PImage bg = loadImage("floor.png");
  ArrayList<Entity> r1Entities = new ArrayList<Entity>();
  r1Entities.add(new Door (0, height/2 - 20, 10, 40, 0));
  r1Entities.add(new Door (width - 10, height/2 - 20, 10, 40, 0));
  r1Entities.add(new Computer (width/2, 50, 60, 40));
  room1 = new Room(r1Entities, bg);
}

void setupRoom2() {
  PImage bg = loadImage("floor.png");
  ArrayList<Entity> r2Entities = new ArrayList<Entity>();
  r2Entities.add(new Door (0, height/2 - 20, 10, 40, 0));
  r2Entities.add(new Door (width - 10, height/2 - 20, 10, 40, 0));
  r2Entities.add(new Scientist(200, 200, 100, 100, loadImage("airpod.png")));
  
  room2 = new Room(r2Entities, bg);
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
    currRoom.entities.get(i).checkColliding(player);
    currRoom.entities.get(i).neutralize();
  }
  //println(roomNum);
  currentBox.display();
}



void setup() {
  size(500, 400);
  background(125);
  noCursor();
  setupRoom0();
  setupRoom1();
  setupRoom2();
  player = new Robot(20, 3);

  lastPressed = new ArrayList<String>();
  opts.add("a");
  opts.add("b");
  opts.add("c");
  currentBox = new OptionBox(120, 6, "Hi there!", opts );


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
  if ( inMenu) {
  } else {
    if (key == 'k') {
      interact = true;
    }
    if (key == 'w') { 
      if (up == false) { 
        up = true;
        lastPressed.add(0, "up");
      }
    }
    if (key == 'a') { 
      if (left == false) {
        left = true;
        lastPressed.add(0, "left");
      }
    }
    if (key == 's') { 
      if (down == false) {
        down = true;
        lastPressed.add(0, "down");
      }
    }
    if (key == 'd') { 
      if (right == false) {
        right = true;
        lastPressed.add(0, "right");
      }
    }
  }
}

void keyReleased() {
  if (inMenu) {
    if (key == 'w') {
      if (currentBox.currentlySelected > 0) {
        currentBox.currentlySelected --;
      }
    }
    if (key == 's') {
      if (currentBox.currentlySelected < currentBox.numOptions()-1) {
        currentBox.currentlySelected ++;
      }
    }
  } else {
    if (key == 'k') {
      interact = false;
    }
    if (key == 'w') { 
      up = false;
      lastPressed.remove("up");
    }
    if (key == 'a') { 
      left = false;
      lastPressed.remove("left");
    }
    if (key == 's') { 
      down = false;
      lastPressed.remove("down");
    }
    if (key == 'd') { 
      right = false;
      lastPressed.remove("right");
    }
  }
}
