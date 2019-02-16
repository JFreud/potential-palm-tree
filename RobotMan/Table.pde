class Table extends Entity {
  int legHeight;
  int col;

  Table(int x, int y, int c, int len, int wth, int lh) {
    super(null);
    this.x = x;
    this.y = y;
    this.col = c;
    this.len = len;
    this.wth = wth;
    this.legHeight = lh;
  }

  void display() {
    fill(col);
    rect(x, y, len, wth);
    rect(x, y + wth, legHeight, legHeight, 0, 0, 2, 1);
    rect(x + len - legHeight, y + wth, legHeight, legHeight, 0, 0, 1, 2);
  }

  void setColor(int c) {
    this.col = c;
  }
}
