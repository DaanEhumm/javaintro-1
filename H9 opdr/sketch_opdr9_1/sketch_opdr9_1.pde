float a = 5;
float b = 7;
float gemiddelde = 0;


void setup(){
  size(300,300);
  avarage();
}

void draw(){
  background(255,255,255);
  
}

void avarage(){
  gemiddelde = (a + b)/2;
  println(gemiddelde);
}
