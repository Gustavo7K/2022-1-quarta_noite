void main() {
  falarOlaMundo();
  double teste = 3 * valorPi();
  print(teste);
  
  darBoasVindas("Thiago Traue");
  
  print("A área do triângulo é:");
  print(areaTriangulo(3, 5));
}

//existem essencialmente 4 tipos de funções
// - SEM retorno (void) e SEM entrada(s) de parâmetro(s)
// - COM retorno (de algum tipo) e SEM entrada(s) de parâmetro(s)
// - SEM retorno (void) e COM entrada(s) de parâmetro(s)
// - COM retorno (de algum tipo) e COM entrada(s) de parâmetro(s)

// Vamos la...



// - SEM retorno (void) e SEM entrada(s) de parâmetro(s)
void falarOlaMundo() {
  print("Olá mundão!!");
}


// - COM retorno (de algum tipo) e SEM entrada(s) de parâmetro(s)
double valorPi() {
  return 3.1415;
}


// - SEM retorno (void) e COM entrada(s) de parâmetro(s)
void darBoasVindas(String nome) {
  print("Olá $nome, seja muito bem-vindo(a)!");
}

// - COM retorno (de algum tipo) e COM entrada(s) de parâmetro(s)
double areaTriangulo(int base, int altura) {
  double area = (base * altura) / 2;
  return area;
}

