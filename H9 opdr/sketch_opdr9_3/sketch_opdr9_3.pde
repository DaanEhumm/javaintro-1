int getal1 = 10;
int getal2 = 20;
int gemiddelde = 0;

void setup(){
  gemiddelde = avarage(getal1,getal2);
  println(gemiddelde);
}
void draw(){
}

int avarage(int getal, int getaltwee){
  int totaal = (getal + getaltwee)/2;
  return totaal;
}
