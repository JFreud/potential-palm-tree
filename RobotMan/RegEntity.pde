class RegEntity extends Entity {
  int col;
  
  RegEntity(int x, int y, int wth, int ht, int col){
    super(x, y, wth, ht);
    this.wth = wth;
    this.ht = ht;
    this.col = col;
  }
  
  void neutralize() {};
  
  
}
