import controlP5.*;

ControlP5 cp;
Button goedgedaan;
Button helaasfout;

void setup() {
  size(800,800);
  background(255,255,255);
  
  cp = new ControlP5(this);
  
  cp.addButton("goedgedaan")
     .setCaptionLabel("klikmij")
     .setPosition(50, 10)
     .setSize(150, 100);
  
  cp.addButton("helaasfout")
     .setCaptionLabel("Klik mij")
     .setPosition(50, 120)
     .setSize(150, 100);
}
void draw(){
}

void goedgedaan() {
  println("Goed gedaan!");
}

void helaasfout() {
  println("Helaas fout!");
}
