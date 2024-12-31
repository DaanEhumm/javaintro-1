void setup() {
  size(500, 500);
  background(255,255,255);
  vierkanttekenen(150, 150, 200, 200); 
}

void vierkanttekenen( float x, float y, float w, float h) {
  
  line(x, y, x + w, y);        
  line(x + w, y, x + w, y + h);  
  line(x + w, y + h, x, y + h);  
  line(x, y + h, x, y);        
}
 
