void main() {
  falarNome("Thiago");
  
  falarNome("Paulo", sobrenome: "Oliveira");
  
  falarNome(
    "Kelvin", 
    mostrarHorario: false,
    sobrenome: "Rosa", 
  );
}


// O "?" permite que o sobrenome seja nulo (anulável -> Nullable)
void falarNome(String nome, {String? sobrenome, bool mostrarHorario = true}) {
  
  //cuidado... é preciso fazer um tratamento na hora de manipular variável nullable:
  if(sobrenome != null) {
      print("Olá $nome $sobrenome, sinta-se em casa!");
  } else {
     print("Olá $nome, sinta-se em casa!");
  }
 
  if(mostrarHorario) {
    print(DateTime.now());
  }
}