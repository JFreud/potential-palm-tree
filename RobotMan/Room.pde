class Room {
  int num;
  ArrayList<Entity> stuff;
  
  Room (ArrayList<Entity> stuff) {
    this.stuff = stuff;
  }
  
  void setup() {
   for (int i = 0; i < stuff.size(); i++) {
      Entity currEntity = stuff.get(i);
      currEntity.changeColor(0, 0); 
   }
    
    
  }
  
}
