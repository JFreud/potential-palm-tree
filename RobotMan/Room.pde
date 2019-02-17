class Room {
  int num;
  PImage bgco;
  ArrayList<Entity> entities;
  
  Room (ArrayList<Entity> entities, PImage bgco) {
    this.entities = entities;
    this.bgco = bgco;
  }
  
  void setup() {
   for (int i = 0; i < entities.size(); i++) {
      Entity currEntity = entities.get(i);
      //currEntity.changeColor(0, 0); 
   }
    
    
  }
  
}
