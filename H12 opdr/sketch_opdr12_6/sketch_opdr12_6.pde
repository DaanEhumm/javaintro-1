import controlP5.*;

int x = 175, y =175;
int vierkantS = 50;  

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  
  rect(x, y, vierkantS, vierkantS);
}

void keyPressed() {
  if (keyCode == LEFT) {
    x -= 10;  
  } else if (keyCode == RIGHT) {
    x += 10;  // 
  } else if (keyCode == UP) {
    y -= 10;  // 
  } else if (keyCode == DOWN) {
    y += 10;  // 
  }
}
