class TextBox extends Box {

  TextBox(int ht, String content) {
    super(ht, content);
  }

  void display() {
    rect(10, sizeY - 10 - ht, sizeX - 20, ht);
    PFont myFont = createFont("Georgia", 20);
    textFont(myFont);
    fill(0, 0, 155);
    text(content, leftXContent, topY, sizeX - (2*leftXContent), ht - 10);
  }
}
