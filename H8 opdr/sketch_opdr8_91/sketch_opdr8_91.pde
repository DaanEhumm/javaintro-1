size(1000,1000);
background(255,255,255);

int sizeC = 500;

for(int i = 0; i <49; i++){
  ellipse(500, 500, sizeC,sizeC);
  sizeC = sizeC - 10;
}
println(sizeC);
