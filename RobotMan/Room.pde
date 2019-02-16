class Room {
  int num;
  color bgco;
  ArrayList<Entity> entities;
  
  Room (ArrayList<Entity> entities, color bgco) {
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
