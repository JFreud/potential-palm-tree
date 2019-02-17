class Scientist extends ImgEntity {
  String name;

  Scientist(int x, int y, int wth,  int ht, PImage img) {
    super(x, y, wth, ht, img);
    this.x = x;
    this.y = y;
  }

  void display() {
    image(newImg, x, y, wth, ht);
  }
}
