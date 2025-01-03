import controlP5.*;

ControlP5 cp;

Button knop1;

Textfield tekstveld1;

void setup(){
  size(800,800);
  background(255,255,255);
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1")
            .setCaptionLabel("verder gaan")
            .setPosition(50,20);
  
  tekstveld1 = cp.addTextfield("TextInput1")
                 .setPosition(50,100)
                 .setText("naam")
                 .setCaptionLabel("Vul naam in ")
                 .setColorLabel(color(50, 165, 55));
}


void draw(){

}

void Knop1(){
  println("Dit staat er in het tekstveld: " + tekstveld1.getText());
}
