import controlP5.*;

ControlP5 cp5;
Textfield tekstVak1;
Textfield tekstVak2;
Textlabel resultaatLabel;
float resultaat = 0;

void setup() {
  size(600,150);
  background(255,255,255);

  cp5 = new ControlP5(this);
  
  tekstVak1 = cp5.addTextfield("tekstVak1")
                 .setCaptionLabel("1")
                 .setPosition(10, 20)
                 .setSize(135, 30)
                 .setAutoClear(true)
                 .setColorBackground(color(0)) 
                 .setColorForeground(color(255));  
  
  tekstVak2 = cp5.addTextfield("tekstvak1")
                 .setCaptionLabel("2")
                 .setPosition(150, 20)
                 .setSize(135, 30)
                 .setAutoClear(true)
                 .setColorBackground(color(0)) 
                 .setColorForeground(color(255));  
  
  cp5.addButton("optellen")
     .setCaptionLabel("+")
     .setPosition(300, 20)
     .setSize(20, 30)
     .setColorBackground(color(0)) 
     .setColorForeground(color(255));  
  
  cp5.addButton("aftrekken")
     .setCaptionLabel("-")
     .setPosition(330, 20)
     .setSize(20, 30)
     .setColorBackground(color(0)) 
     .setColorForeground(color(255));  
  
  cp5.addButton("vermenigvuldigen")
     .setCaptionLabel("*")
     .setPosition(360, 20)
     .setSize(20, 30)
     .setColorBackground(color(0)) 
     .setColorForeground(color(255));  
  
  cp5.addButton("delen")
     .setCaptionLabel("/")
     .setPosition(390, 20)
     .setSize(20, 30)
     .setColorBackground(color(0)) 
     .setColorForeground(color(255));  

  resultaatLabel = cp5.addTextlabel("resultaatLabel")
                      .setText("Resultaat: ")
                      .setPosition(20, 80)
                      .setColorValue(color(255));
}

void draw() {
  background(160);
  resultaatLabel.setText("Resultaat: " + resultaat);
  }

void optellen() {
  float waarde1 = float(tekstVak1.getText());
  float waarde2 = float(tekstVak2.getText());
  resultaat = waarde1 + waarde2;
}

void aftrekken() {
  float waarde1 = float(tekstVak1.getText());
  float waarde2 = float(tekstVak2.getText());
  resultaat = waarde1 - waarde2;
}

void vermenigvuldigen() {
  float waarde1 = float(tekstVak1.getText());
  float waarde2 = float(tekstVak2.getText());
  resultaat = waarde1 * waarde2;
}

void delen() {
  float waarde1 = float(tekstVak1.getText());
  float waarde2 = float(tekstVak2.getText());
  if (waarde2 != 0) {
    resultaat = waarde1 / waarde2;
  } else {
     resultaatLabel.setText("Resultaat: kan niet (delen door 0)");
  }
}
