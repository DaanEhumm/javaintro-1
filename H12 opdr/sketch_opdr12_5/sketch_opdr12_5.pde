float x1, y1, x2, y2;
boolean eerstelijn = true; 

void setup() {
  size(400, 400);
  stroke(0);  
}

void draw() {
}

void mousePressed() {
  if (eerstelijn) {
    x1 = mouseX;  
    y1 = mouseY;
    eerstelijn = false; 
  } else {
    x1 = x2;  
    y1 = y2;
  }
  x2 = mouseX;
  y2 = mouseY;
  line(x1, y1, x2, y2);
}
