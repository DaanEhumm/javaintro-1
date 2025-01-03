String[] namen = {"Piet", "Jan", "Klaas", "joop", "daan", "elia"};
boolean gevonden;

void setup() {
  gevonden = false;
  
  for (int i = 0; i < namen.length; i++) {
    if (namen[i] ==("Jan")) {
      gevonden = true;
      break; 
    }
  }
  if (gevonden) {
    println("jan gevonden");
  } else {
    println("jan niet gevonden");
  }
}
