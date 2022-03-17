void main() {
  
  ////Quando você precisa rodar um trecho de código N vezes, você utiliza um loop
  //Loops: existem 4 tipos:
  //for, while, do..while e foreach
  //aqui vamos aprender por enquanto apenas os 3 primeiros
  
  //for:
  //sintaze: for(<condição de inicio>; <condição de parada>; <condição de incremento)
  for(int i = 1; i < 11; i++) {
    print("For: $i");
  }
  
  print("");
  
  //while: enquanto... 
  int j = 0;
  while(j < 20) {
    print("While: $j");
    j+=2; //é o mesmo que j = j + 2
  }
  
  print("");
  
  //do..while -> Faça... enquanto
  int k = 0;
  do {
    print("Do: $k");
    k+=4; //é o mesmo que k = k + 4
  } while(k <= 32); 
}