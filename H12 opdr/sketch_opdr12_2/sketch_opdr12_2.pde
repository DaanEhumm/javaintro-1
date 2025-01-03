import controlP5.*;

int spacetelling = 0;        
int startTijd;              
int tijd = 10000;      
boolean teller = false;  
int aantalkeer = 0;      

void setup() {
  size(400, 200);
  textSize(30);
  fill(0,0,0);
}

void draw() {
  background(255);     
  text("Space x : " + spacetelling, 125, 50);
  
  if (teller) {
    if (millis() - startTijd >= tijd) {
      aantalkeer = spacetelling;
      spacetelling = 0;           
      teller = false;            
    }
  } 
  
  text("Aantal vorige telling: " + aantalkeer, 55 , 150); 
  if (!teller) {
    text("Press Space to Start", 65, 100);  
  }
}
void keyPressed() {
  if (key == 32 && !teller) {
    spacetelling = 0;        
    startTijd = millis();     
    teller = true;          
  }
  if (key == 32 && teller) {
    spacetelling++;  
  }
}
