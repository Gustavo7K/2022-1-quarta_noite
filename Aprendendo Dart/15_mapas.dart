void main() {
  Map<String, double?> notas = {
    "Leonardo": 7,
    "Renata": 8,
    "Gabriel": 10,
    "Thiago": 6,
    "Paulo": 9,
    "Luquinha": 2
  };
  
  double? notaFulano = notas["Renata"];
  
  print(notaFulano);
  
  print(notas);
  
  notas.remove("Paulo");
  
  print(notas);

  notas.forEach((k, v) {
    print("A nota do(a) meliante $k é $v");
  });
  
}