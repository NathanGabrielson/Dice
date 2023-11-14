class die {
  int value;
  int x, y;
  int size = 0;
  float dotsize = 10;

  void prep(int xVal, int yVal, int sizeVal) {
    x = xVal;
    y = yVal;
    size = sizeVal;
  }

  void topLeft() {
    ellipse(x + size/3, y + size/3, dotsize, dotsize);
  }
  void topRight() {
    ellipse(x + 2 * size/3, y + size/3, dotsize, dotsize);
  }
  void centerLeft() {
    ellipse(x + size/3, y + size/2, dotsize, dotsize);
  }
  void trueCenter() {
    ellipse(x + size/2, y + size/2, dotsize, dotsize);
  }
  void centerRight() {
    ellipse(x + 2 * size/3, y + size/2, dotsize, dotsize);
  }
  void bottomLeft() {
    ellipse(x + size/3, y + 2*size/3, dotsize, dotsize);
  }
  void bottomRight() {
    ellipse(x + 2 * size/3, y + 2 * size/3, dotsize, dotsize);
  }

  void show() {
    rect(x, y, size, size);

    if (value == 1) {
      trueCenter();
    } else if (value == 2) {
      topLeft();
      bottomRight();
    } else if (value == 3) {
      topLeft();
      trueCenter();
      bottomRight();
    } else if (value == 4) {
      topLeft();
      topRight();
      bottomLeft();
      bottomRight();
    } else if (value == 5) {
      topLeft();
      topRight();
      trueCenter();
      bottomLeft();
      bottomRight();
    } else if (value == 6) {
      topLeft();
      topRight();
      centerLeft();
      centerRight();
      bottomLeft();
      bottomRight();
    }
  }

  void roll () {

    value = (int)(Math.random() * 6 + 1);
    System.out.println("Printed a: " + value);
  }



  void update () {
    show();
  }


  die() {
    size = 0;
    x = 0;
    y = 0;
  }
}
