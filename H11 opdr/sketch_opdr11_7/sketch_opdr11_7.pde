int[] getallen = {5, 4, 7, 3, 8, 3, 8, 5, 6, 3}; 
int aantal;

void setup() {
  // Roep de methode aan met verschillende getallen
  println("5 komt " + telHoeVaakGetalVoorkomt(5) + " keer voor");  
  println("2 komt " + telHoeVaakGetalVoorkomt(2) + " keer voor"); 
  println("3 komt " + telHoeVaakGetalVoorkomt(3) + " keer voor"); 
  println("7 komt " + telHoeVaakGetalVoorkomt(7) + " keer voor"); 
  println("8 komt " + telHoeVaakGetalVoorkomt(8) + " keer voor"); 
 
}

int telHoeVaakGetalVoorkomt(int getal) {
  aantal = 0;
  
  for (int i = 0; i < getallen.length; i++) {
    if (getallen[i] == getal) {
      aantal++;
    }
  }
  return aantal;  
}
