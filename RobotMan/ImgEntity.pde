class ImgEntity extends Entity {

  PImage origImg;
  PImage newImg;
  
  ImgEntity(int x, int y,int wth, int ht, PImage img) {
    super(x, y, wth, ht);
    this.origImg = img;
    this.newImg = img;
  }
  void changeColor(int changeColor, int newColor) {
    PImage workImg = origImg.copy();
    workImg.loadPixels();
    for (int i = 0; i < dimension; i ++) {
      if (workImg.pixels[i] == changeColor) {
        workImg.pixels[i] = newColor;
      }
    }
    workImg.updatePixels();
    newImg = workImg;
  }
  void neutralize(int range) {
    PImage workImg = origImg.copy();
    int totr = 0; int totg = 0; int totb = 0;
    workImg.loadPixels();
    for (int i = 0; i < dimension; i++) {
      totr += red(pixels[i]);
      totg += green(pixels[i]);
      totb += blue(pixels[i]);
    }
    for (int i = 0; i < dimension; i++) {
      pixels[i] = color(totr/dimension + (red(pixels[i])-126)*range/126, 
      totg/dimension + (green(pixels[i])-126)*range/126,
      totb/dimension + (blue(pixels[i])-126)*range/126);
    }
  }
}
