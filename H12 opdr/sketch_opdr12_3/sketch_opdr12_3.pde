import controlP5.*;

void setup() {
  size(400, 400);
  noStroke(); 
}

void draw() {

}

void mousePressed() {
  color randomkleur = color(random(255), random(255), random(255));
  fill(randomkleur);  
   int squareSize = 50;
   int x = mouseX - squareSize / 2;     
   int y = mouseY - squareSize / 2;     
   rect(x, y, squareSize , squareSize);  
}
