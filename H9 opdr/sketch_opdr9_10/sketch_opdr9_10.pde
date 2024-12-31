void setup() {
  size(500, 500);
  background(28,21,92);
  Boom(80, 500);
  Boom(160,500);
  Boom(200,500);
  Boom(280,500);
  Boom(320,500);
  Boom(360,500);
  Boom(400,500);
  Boom(120,500);
  Boom(240,500);  
}

void draw() {
}

void Boom(int x, int y) {
  fill(115, 80, 70); 
  rect(x - 15, y - 60 , 30, 60); // stam
  
  fill(60, 95, 65); 
  triangle(x - 50, y - 60, x + 50, y - 60, x, y - 150); //onderste
  triangle(x - 40, y - 100, x + 40, y - 100, x, y - 180); //middelste 
  triangle(x - 30, y - 140, x + 30, y - 140, x, y - 210); // bovenste bladeren kerstboom
}
