//essas variáveis são de escopo GLOBAL em relação à "este arquivo"
int c = 4;
int d = 6;

void main() {
  //essas variáveis são de escopo LOCAL em relação ao método main
  int x = 10;
  int y = 20;
  
  print("A soma é ${soma(x, y)}");
 
  //é uma função de escopo LOCAL em relação ao método MAIN:
  double divide(int a, int b) {
    return a / b;
  }
  
  //só podemos utilizar algo de escopo local depois de declará-lo:
  print("A divisão é: ${divide(x, y)}");
  
}

//essa função é de escopo GLOBAL
int soma(int a, int b) {
  return a + b;
}

// void teste() {
//   print(divide(19, 2));
// }