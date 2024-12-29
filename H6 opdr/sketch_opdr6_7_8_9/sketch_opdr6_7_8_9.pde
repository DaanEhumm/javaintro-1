float cijfereen = 8.5;
float cijfertwee = 7.5;
boolean diploma = false;
boolean vrijstelling = false;
boolean cumlaude = false;
float gemiddelde = 0;

gemiddelde = (cijfereen + cijfertwee)/2;

if(cijfereen >= 5.5 || cijfertwee >= 5.5){
  diploma = true;
  vrijstelling = true;
}
if(gemiddelde >= 8.0){
  cumlaude = true;
}
if(diploma || vrijstelling){
  println("Gefeliciteerd");
}

if(cumlaude){
  println("extra felicitatie voor cumlaude");
}
