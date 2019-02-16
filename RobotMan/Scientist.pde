class Scientist extends ImgEntity {
  String name;

  Scientist(int x, int y, PImage img) {
    super(x, y ,img);
    this.x = x;
    this.y = y;
  }

  void display() {
    image(newImg, x, y, 100, 100);
  }
}
