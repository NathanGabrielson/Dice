int numRow = 5;
int numCol = 5;
int total;
float[] nums;

void setup() {
  size(500,500);

  nums = new float[50];
}

void manyDice() {
    background(255);
    total = 0;
    fill(255);
    for(int i = 0; i < numRow; i++) {
      for(int j = 0; j < numCol; j++) {
        int offsetX = width/(numCol + 2) * (j + 1);
        int offsetY = height/(numRow + 2) * (i + 1);
        die current;
        current = new die();
        current.prep(offsetX, offsetY, width/(numCol + 2) - 10)  ;
        current.roll();
        current.show();
        total+= current.value;
      }
    } 
}

void mousePressed() {
  manyDice();
  textSize(50);
  fill(0);
  text("Total: " + total, width/2, height - 25); 
}

void draw() {}
