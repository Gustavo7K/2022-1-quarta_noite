void main() {
  falarNome("Thiago", sobrenome: "Traue");
  falarNome("Mia");
}

void falarNome(String nome, {String? sobrenome}) {
  //se o sobrenome é nulo, então ele pega o que está após o "??"
  //"conversão" de uma variável nullable em non-nullable
  String x = sobrenome ?? "Silva";
  
  print("Olá $nome $x, sinta-se em casa!");
}