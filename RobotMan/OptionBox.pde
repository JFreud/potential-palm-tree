class OptionBox extends Box {
  ArrayList<String> options;
  int buffer;
  int currentlySelected;
  int fontSize;
  int leftXOption;

  OptionBox(int ht, int buffer, String description, ArrayList<String> options) {
    super(ht, description);
    this.buffer = buffer;
    this.options = options;
    this.currentlySelected = 0;
    this.fontSize = 20;

    this.leftXOption = 30;
  }

  void display() {
    rect(displayBuffer, sizeY - displayBuffer - ht, sizeX - (2* displayBuffer), ht, 4, 4 ,4 ,4);
    fill(0, 0, 0);

    line(displayBuffer, topY + fontSize + 2, sizeX - displayBuffer, topY + fontSize + 2);

    PFont myFont = createFont("Georgia", fontSize);
    textFont(myFont);
    text(content, leftXContent, topY, sizeX - 30, ht - 10);
    int currentY = topY + fontSize+ buffer;
    for (int i = 0; i < options.size(); i ++) {
      fill(255, 255, 255);
      if ( currentlySelected == i) {
        rect(leftXOption - 2, currentY - 2 + buffer, sizeX - 64, fontSize + 4, 2, 2, 2, 2);
      }
      fill(0, 0, 155);

      currentY += fontSize + buffer;
      text(options.get(i), leftXOption, currentY);
    }
  }
  
  int numOptions(){
    return this.options.size();
  }
}
