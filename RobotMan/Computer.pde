class Computer extends RegEntity{
  
  Computer(int x, int y, int wth, int ht) {
    super(x, y, wth, ht, 125);
  }
  
  void display() {
    fill(80);
    rect(x, y, wth, ht);
    fill(255);
    rect(x + wth/8, y + ht/8, wth - 2 * wth/8, ht - 2 * ht/8);
    fill(80);
    rect(x + wth/2 - 10, y + ht, 20, 3);
  }
  
}
