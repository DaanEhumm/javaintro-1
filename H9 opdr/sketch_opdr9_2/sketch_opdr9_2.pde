int getal1 = 10;
int getal2 = 20;

void setup(){
  avarage(getal1,getal2);
}
void draw(){
}

void avarage(int getal, int getaltwee){
  int totaal = (getal + getaltwee)/2;
  println("gemiddelde" + " " + getal + " " + getaltwee + " " + totaal);
}
