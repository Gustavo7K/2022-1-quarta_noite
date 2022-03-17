void main() {
  List<String> compras = ['Banana', 'Maça', 'Leite', 'Alface', 'Chocolate'];

//   print(compras[0]);
//   print(compras[1]);
//   print(compras[2]);
//   print(compras[3]);
//   print(compras[4]);
//   print(compras[5]);

  for (int i = 0; i < compras.length; i++) {
    print(compras[i]);
  }

  print("---");

  for (int i = compras.length - 1; i >= 0; i--) {
    print(compras[i]);
  }

  print("---");

  compras.add("Nutlla"); //acrescenta ao final da lista

  for (int i = 0; i < compras.length; i++) {
    print(compras[i]);
  }

  compras.insert(3, "Papel");

  print("---");

  for (int i = 0; i < compras.length; i++) {
    print(compras[i]);
  }
  
  
  print(compras.contains("banana"));
  
  compras.removeAt(4);
  print(compras);
}
