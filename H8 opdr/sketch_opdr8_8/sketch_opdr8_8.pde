int h = 13; 
int a = 0;
int b = 1;
  
  println("Fibonacci reeks");

  for(int i = 0; i < h; i++) {
    println(a);   
    int opslag = a;
    a = b;
    b = opslag + b; 
  }
