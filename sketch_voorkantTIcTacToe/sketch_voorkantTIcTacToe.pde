int scene = 1;
void setup() {
  size(800, 600); // Canvas size
  background(255); // Grijze achtergrond voor de muur
}

void draw() {
  if (scene == 1) {
    background(230); 
    drawRoom();  // Teken de kamer met de stoel en het pijltje
  } else if (scene == 2) {
    background(139, 69, 19);
    drawBack();
  }
}

void drawRoom() {
  fill(160); 
  rect(0,430,800,600); //vloer
  
  strokeWeight(5);  
  fill(173, 216, 230);  
  rect(320, 190, 160, 150); //raam
   rect(70, 190, 160, 150); // Raam aan de linkerzijde
    rect(570, 190, 160, 150); // Raam aan de rechterzijde
 
  noStroke();
  fill(139, 69, 19);
  rect(300, 350, 200, 20); // Tafelblad 

  fill(0); 
  rect(380, 370, 40, 70); 
  quad(360, 440, 440, 440, 460, 460, 340, 460); // Voetplaat

  fill(255, 165, 0); // zitting                    // stoel links
  rect(200, 390, 80, 20); 
  rect(200, 350, 20, 40); // Rugleuning 

  fill(0);                                            
  rect(200, 400, 10, 60); 
  rect(270, 400, 10, 60); // pootjes
  
  fill(255, 165, 0); // zitting                  // stoel rechts
  rect(520, 390, 80, 20); 
  rect(580, 350, 20, 40); // Rugleuning               

  fill(0); 
  rect(520, 400, 10, 60); 
  rect(590, 400, 10, 60); // pootjes
  
  fill(0);
  textSize(20);
  textAlign(CENTER);
  text("Click to Start", 400, 320);  
}

void drawBack() {
  fill(0); // knop
  rect(10, 10, 100, 40); 

  fill(255); 
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Back", 60, 30); 
}
void mousePressed() {
  if (scene == 1) {
    if (mouseX > 300 && mouseX < 500 && mouseY > 320 && mouseY < 340) {
      scene = 2;
    }
   } else if (scene == 2) {
    if (mouseX > 10 && mouseX < 110 && mouseY > 10 && mouseY < 50) {
      scene = 1; 
    }
  }
}

      
