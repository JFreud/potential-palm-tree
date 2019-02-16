class ImgEntity extends Entity {

  PImage origImg;
  PImage newImg;
  
  ImgEntity(int x, int y, PImage img) {
    super(x, y);
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
