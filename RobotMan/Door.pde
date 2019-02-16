class Door extends RegEntity {
  
  
  Door(int x, int y, int dWidth, int dHeight, int col) { 
   super(x, y , dWidth, dHeight, col);
  }
  
  void display() {
    fill(col);
    rect(x, y, wth, ht);
  }
  
  
  
}
