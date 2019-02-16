class Table extends RegEntity {
  int legHeight;

  Table(int x, int y, int c, int wth, int ht, int legHeight, int col) {
    super(x, y, wth, ht, col);
    this.x = x;
    this.y = y;
    this.col = c;
    this.wth = wth;
    this.ht = ht;
    this.legHeight = legHeight;
  }

  void display() {
    fill(col);
    rect(x, y, wth, ht);
    rect(x, y + ht, legHeight, legHeight, 0, 0, 2, 1);
    rect(x + wth - legHeight, y + ht, legHeight, legHeight, 0, 0, 1, 2);
  }

  void setColor(int c) {
    this.col = c;
  }
}
