import controlP5.*;

ControlP5 cp;
int studentenTeller = 0;
int oudersTeller = 0;

Textlabel studentLabel;
Textlabel ouderLabel;
Textlabel totaalLabel;

void setup() {
  size(400, 400);
  
  cp = new ControlP5(this);
  
  cp.addButton("telStudenten")
     .setCaptionLabel("Telt Studenten")
     .setPosition(50, 50)
     .setSize(150, 50);
  
  cp.addButton("telOuders")
     .setCaptionLabel("Telt Ouders")
     .setPosition(50, 120)
     .setSize(150, 50);
  
  studentLabel = cp.addTextlabel("studentLabel")
                    .setText("Aantal St " + studentenTeller)
                    .setPosition(220, 50)
                    .setColorValue(color(0));
  
  ouderLabel = cp.addTextlabel("ouderLabel")
                  .setText("Aantal Ouders: " + oudersTeller)
                  .setPosition(220, 120)
                  .setColorValue(color(0));
  
  totaalLabel = cp.addTextlabel("totaalLabel")
                    .setText("Totaal: " + (studentenTeller + oudersTeller))
                    .setPosition(220, 190)
                    .setColorValue(color(0));
}

void draw() {
  background(255);
  
  studentLabel.setText("Aantal Studenten: " + studentenTeller);
  ouderLabel.setText("Aantal Ouders: " + oudersTeller);
  mogenlijkTotaal(); 
}

void telStudenten() {
  studentenTeller++;
}

void telOuders() {
  oudersTeller++;
}

void mogenlijkTotaal() {
  int mogenlijktotaal = studentenTeller + oudersTeller;
  totaalLabel.setText("mogenlijkTotaal: " + mogenlijktotaal);
}
