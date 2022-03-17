void main() {
  falarNome("Thiago");
  
  falarNome("Paulo", sobrenome: "Oliveira");
  
  falarNome(
    "Kelvin", 
    mostrarHorario: false,
    sobrenome: "Rosa", 
  );
}


//no Dart existe a possibilidade de criarmos funções com parâmetros OPCIONAIS

void falarNome(String nome, {String sobrenome = "Silva", bool mostrarHorario = true}) {
  print("Olá $nome $sobrenome, sinta-se em casa!");
 
  if(mostrarHorario) {
    print(DateTime.now());
  }
}
