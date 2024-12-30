size(800,840);
background(255,255,255);

int squareS = 20;  
int xwaarde = 20;     
int rij1 = 10;        
int rij2 = 10;        
  
for (int i = 0; i < rij1 ; i++){
  for (int j = 0; j < rij2; j++){
    int x = xwaarde + i * (squareS + 0); 
    int y = xwaarde + j * (squareS + 0);
    
     if ((i + j) % 2 == 0) {
        fill(255);  
      } else {
        fill(0);    
      }
    rect(x, y, squareS, squareS);
  }
}
