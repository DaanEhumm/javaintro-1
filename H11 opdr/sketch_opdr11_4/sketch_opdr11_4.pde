int[] array1 = new int [10];

void setup(){
  size(200,200);
  background(255,255,255);
  
  for(int i = 0; i < array1.length; i++){
    array1[i] = 12+i*12;
  }
  for(int i = 0; i < array1.length; i++){
    println(array1[i]);
  }
}
  
  
