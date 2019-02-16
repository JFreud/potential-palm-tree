class Scientist extends Entity {
  String name;

  Scientist(int x, int y, PImage img) {
    super(img);


    this.x = x;
    this.y = y;
  }

  void display() {
    image(newImg, x, y, 100, 100);
  }
}
