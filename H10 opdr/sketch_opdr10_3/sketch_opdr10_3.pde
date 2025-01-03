import controlP5.*;

ControlP5 cp;
Textfield prijs;
Button berekenknop;

void setup(){
  size(400, 400);
  background(255,255,255);
 
  cp = new ControlP5(this);
  
  
  prijs = cp.addTextfield("prijsberkenen")     
            .setPosition(100, 50)
            .setSize(200, 40)  
            .setText("vul prijs ex btw in")
            .setAutoClear(true);
  
 
  berekenknop = cp.addButton("berekenPrijs")
                  .setCaptionLabel("Bereken prijs + btw")
                  .setPosition(100, 120)
                  .setSize(200, 50);                  
}

void draw(){
}

void berekenPrijs() {
  float Prijs = float(prijs.getText());
  
  float prijsMetBtw = Prijs * 1.21;
  
  println("Prijs inclusief BTW: " + prijsMetBtw);
}
