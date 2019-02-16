class Entity {
  int x, y;
  int len, wth;
  PImage origImg;
  PImage newImg;
  int baseColor;

  Entity(PImage img) {
    this.origImg = img;
    this.newImg = img;
  }

  void changeColor(int changeColor, int newColor) {
    PImage workImg = origImg.copy();
    int dimension = workImg.width * workImg.height;
    workImg.loadPixels();
    for (int i = 0; i < dimension; i ++) {
      if (workImg.pixels[i] == changeColor) {
        workImg.pixels[i] = newColor;
      }
    }
    workImg.updatePixels();
    newImg = workImg;
  }
}
