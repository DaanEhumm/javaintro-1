int sizeC = 100;

void setup(){
  size(200,200);
  background(255,255,255);
  cirkels();
}

void cirkels(){

for(int i = 0; i < 5; i++){
  ellipse(190 - sizeC/2, 120 - sizeC/2, sizeC,sizeC);
  sizeC = sizeC - 10;
}
}
