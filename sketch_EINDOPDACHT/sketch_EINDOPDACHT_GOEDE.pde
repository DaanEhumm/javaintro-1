int pagina = 1;
int[][] bord = new int[3][3]; // 3x3 grid
int Speler = 1; // 1 voor speler 1 X, 2 voor speler 2 O
boolean Spelvoorbij = false; // of het spel voorbij is
String winnaar = ""; // winnaar of gelijkspel
int bordX = 200;
int bordY = 100;
int vakjeGrootte = 120;

void setup() {
  size(800, 600);
  background(255);
}

void draw() {
  if (pagina == 1) {
    background(230);
    drawRoom();
  } else if (pagina == 2) {
    background(139, 69, 19);
    tekenTicTacToe();
    drawBack();
  }
}

void drawRoom() {
  fill(160);
  strokeWeight(1);
  rect(0, 430, 800, 600); //vloer

  fill(173, 216, 230);
  rect(320, 190, 160, 150); //raam
  rect(70, 190, 160, 150); // Raam  linkerzijde
  rect(570, 190, 160, 150); // Raam  rechterzijde

  fill(139, 69, 19);
  rect(300, 350, 200, 20); // Tafelblad

  fill(0);
  rect(380, 370, 40, 70);
  quad(360, 440, 440, 440, 460, 460, 340, 460); // Voetplaat

  fill(255, 165, 0); // zitting                    // stoel links
  rect(200, 390, 80, 20);
  rect(200, 350, 20, 40); // Rugleuning

  fill(0);
  rect(200, 400, 10, 60);
  rect(270, 400, 10, 60); // pootjes

  fill(255, 165, 0); // zitting                  // stoel rechts
  rect(520, 390, 80, 20);
  rect(580, 350, 20, 40); // Rugleuning

  fill(0);
  rect(520, 400, 10, 60);
  rect(590, 400, 10, 60); // pootjes

  fill(0);
  textSize(20);
  textAlign(CENTER);
  text("Click to Start", 400, 320);
}

void drawBack() {
  fill(0); // knop
  rect(10, 10, 100, 40);

  fill(255);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Back", 60, 30);
}

void tekenTicTacToe() {
  fill(0);
  text(winnaar, 373, 40);
  if (Spelvoorbij) {
    text("R to restart", 375, 80);
  }

  tekenBord();
  controleerWinnaar();
}

void mousePressed() {
  if (pagina == 1) {
    if (mouseX > 300 && mouseX < 500 && mouseY > 320 && mouseY < 340) {
      pagina = 2; // Verander naar pagina 2
    }
  } else if (pagina == 2) {
    if (mouseX > 10 && mouseX < 110 && mouseY > 10 && mouseY < 50) {
      pagina = 1; //terug naar pagina 1
    }
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
           wisselSpeler();
          }
        }
      }
    }
  }
}

void wisselSpeler() {
  if (Speler == 1) {
    Speler = 2;
  } else {
    Speler = 1;
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
      println(i+":"+j);
      fill(255);
      stroke(0);
      strokeWeight(4);
      rect(bordX + i * vakjeGrootte, bordY + j * vakjeGrootte, vakjeGrootte, vakjeGrootte);

      // Teken de X of O als de knop leeg is
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
