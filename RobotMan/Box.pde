class Box {
  int ht;
  int displayBuffer = 10;
  int leftXContent;
  int topY;


  String content;

  Box(int ht, String content) {
    this.ht = ht;
    this.content = content;

    this.leftXContent = 15;
    this.topY = sizeY - 5 - ht;
  }
}
