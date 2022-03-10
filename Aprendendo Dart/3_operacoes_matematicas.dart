void main() {
  double x = 1.5;
  double y = 2.5;
  int z = 2;
  
  double resultado = x + y * z;
  
  
  //matematicamente o correto é: multiplicar depois somar
  //2,5 x 2 = 5
  //5 + 1.5 = 6.5
  
  //se você quiser somar primeiro, é preciso utilizar ()
  resultado = (x + y) * z;
  
  //neste caso, ele soma primeiro, depois multiplica... assim:
  //1.5 + 2.5 = 4
  //4 * 2 = 8
  
  print(resultado);
  
  int a = 2312313;
//   if(a % 2 == 0) {
//     print("O número é par!");
//   } else {
//     print("O número é ímpar!");
//   }

  print(a % 2 == 0 ? "O número é par!" : "O número é impar");
  
  
  int result = 10 ~/ 3; //Serve para pegar a divisão inteira do valor
  print(result);
}
