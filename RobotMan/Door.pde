class Door {
  int x,y, dWidth, dHeight;
  
  
  Door(int x, int y, int dWidth, int dHeight) { 
    this.x = x;
    this.y = y;
    this.dWidth = dWidth;
    this.dHeight = dHeight;
  }
  
  void display() {
    fill(0);
    rect(x, y, dWidth, dHeight);
  }
  
  
  
}
