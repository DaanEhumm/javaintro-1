size(100, 100); 
background(255,255,255);

int squareS = 10;  
int startX = 10;     
int startY = 10;      

for(int i = 0; i < 5; i++){
    int x = startX + i *(squareS + 0); 
    int y = startY + i *(squareS + 0); 
    rect(x, y, squareS, squareS);     
  }
