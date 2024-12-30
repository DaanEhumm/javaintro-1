size(400, 400);
background(0,0,0);  

textSize(20);
for (int i = 1; i <= 10; i++){
    int antwoord = 8 * i;  
    text("8" + " x " + i + " = " + antwoord, 10, 10 + i *20);
  }
