int[][] bord = new int[3][3]; // 3x3 grid
int Speler = 1; // 1 voor speler 1 X, 2 voor speler 2 O
boolean Spelvoorbij = false; // of het spel voorbij is
String winnaar = ""; // Om de winnaar of gelijkspel te tonen
int bordX = 200;  
int bordY = 100;  
int vakjeGrootte = 120; 

void setup() {
  size(800, 600); 
  textSize(32);
  fill(0); 
  
  // leeg bord
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      bord[i][j] = 0;
    }
  }
}

void draw() {
  background(255);
  fill(0); 
  text(winnaar, 305, 40);
  if (Spelvoorbij) {
    text("R to restart", 315, 90); 
  }
  
  tekenBord();
  controleerWinnaar();
}

void mousePressed() {
  if (Spelvoorbij) {
    return; // Als het spel voorbij is, negeer klikken
  }

  // Controleer welke knop is ingedrukt
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      // Controleer of de muis binnen de grenzen van de knop is
      if (mouseX > bordX + i * vakjeGrootte && mouseX < bordX + (i + 1) * vakjeGrootte &&
          mouseY > bordY + j * vakjeGrootte && mouseY < bordY + (j + 1) * vakjeGrootte) {
        // Als het vakje leeg is, X of O
        if (bord[j][i] == 0) {
          bord[j][i] = Speler;
          // Wissel van speler
          Speler = (Speler == 1) ? 2 : 1;
        }
      }
    }
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    resetGame();
  }
}

void resetGame() {
  // Zet alles terug naar de beginstatus
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      bord[i][j] = 0;
    }
  }
  Speler = 1;
  Spelvoorbij = false;
  winnaar = "";
}

void tekenBord() {
  // Teken de knoppen
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      fill(255); 
      stroke(0);
      rect(bordX + i * vakjeGrootte, bordY + j * vakjeGrootte, vakjeGrootte, vakjeGrootte);
      
      // Teken de X of O als de knop leg is 
      if (bord[j][i] == 1) {
        tekenX(bordX + i * vakjeGrootte + vakjeGrootte / 2, bordY + j * vakjeGrootte + vakjeGrootte / 2);
      } else if (bord[j][i] == 2) {
        tekenO(bordX + i * vakjeGrootte + vakjeGrootte / 2, bordY + j * vakjeGrootte + vakjeGrootte / 2);
      }
    }
  }
}

void tekenX(float x, float y) {
  line(x - 30, y - 30, x + 30, y + 30);
  line(x + 30, y - 30, x - 30, y + 30);
}

void tekenO(float x, float y) {
  noFill();
  ellipse(x, y, 60, 60);
}

void controleerWinnaar() {
  // Controleer alle rijen, kolommen en diagonalen
  for (int i = 0; i < 3; i++) {
    if (bord[i][0] == bord[i][1] && bord[i][1] == bord[i][2] && bord[i][0] != 0) {
      Spelvoorbij = true;
      winnaar = "Speler " + bord[i][0] + " wint";
      return;
    }
    if (bord[0][i] == bord[1][i] && bord[1][i] == bord[2][i] && bord[0][i] != 0) {
      Spelvoorbij = true;
      winnaar = "Speler " + bord[0][i] + " wint";
      return;
    }
  }
  // Controleer diagonalen
  if (bord[0][0] == bord[1][1] && bord[1][1] == bord[2][2] && bord[0][0] != 0) {
    Spelvoorbij = true;
    winnaar = "Speler " + bord[0][0] + " wint";
    return;
  }
  if (bord[0][2] == bord[1][1] && bord[1][1] == bord[2][0] && bord[0][2] != 0) {
    Spelvoorbij = true;
    winnaar = "Speler " + bord[0][2] + " wint";
    return;
  }
  boolean vol = true;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (bord[i][j] == 0) {
        vol = false;
      }
    }
  }
  if (vol) {
    Spelvoorbij = true;
    winnaar = "Gelijkspel";
  }
}
