import controlP5.*;

int startTijd = 0;    
int lopendetijd = 0;  
boolean staataan = false;  
boolean gepauzeerd = false; 

void setup() {
  size(400, 200);
  textSize(30);
  fill(0, 0, 0);
}

void draw() {
  background(255);
  
  if (staataan) {
    lopendetijd = millis() - startTijd; 
  } 
  
  int seconds = lopendetijd / 1000;
  int milliseconds = lopendetijd % 1000;
  
  text(nf(seconds, 2) + ":" + nf(milliseconds, 3), 145, 50);   
  
  if (!staataan && gepauzeerd ) {
    text("Press any key to resume", 50, 100);
    text("press R to reset", 50 , 150);
  }else if(!staataan) {
    text("press space to start time", 40, 80);
  }
}

void keyPressed() {
  if (key == 32 && !staataan) {  
    startTijd = millis() - lopendetijd;  
    staataan = true;
    gepauzeerd = false;
  } else if (key == 32 && staataan) {  
    staataan = false;
    gepauzeerd = true;
  }
}

void keyReleased() {
  if (key == 'r') { 
    staataan = false;
    lopendetijd = 0;
    gepauzeerd = false;
  }
}
