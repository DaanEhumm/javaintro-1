int[] getallen = {2, 4, 7, 4, 9, 4, 8, 9, 6, 4};
int zoekgetal = 4; 
int aantal = 0;

void setup(){
  
  for (int i = 0; i < getallen.length; i++) {
    if (getallen[i] == zoekgetal) {
      aantal++;
    }
  }
  
  // Print het resultaat
  println("het getal " + zoekgetal + " komt " + aantal + " keer voor");
}
