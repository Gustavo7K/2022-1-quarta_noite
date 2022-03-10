void main() {
  //declaração de variá
  String nome = "Thiago G. Traue";
  bool fumante = false;

  //desvio condicional: Desvia-se a execução do código, dada uma condção
  //dentro do if espera-se SEMPRE uma condição booleana
  if (fumante) {
    //se a condição der "verdadeira", vai neste bloco
    print("O $nome fuma muito!");
    print("Pare de fumar!");
  } else {
    //senão, ou seja, a condição contrária do if original
    print("O $nome não fuma :D");
    print("Continue assim!");
  }

  //você pode substituir if/else de bloco único por condição ternárica
  print(fumante ? "$nome fuma muito!" : "$nome não fuma!");

  //if tenrário funciona assim:
  // <condição booleana> ? <o que acontece se verdadeiro> : <o que acontece se falso

  int idade = 18;
  switch (idade) {
    case 18:
      print("Já pode começar a beber!");
      break;
    case 21:
      print("Já pode aplicar para porte de arma!");
      break;
    case 22:
      print("Já é tiozão da Sukita");
      break;
    case 24:
      print("Não é mais chovem");
      break;
    default:
      print("Melhor fazer um seguro!");
      break;
      
  }
}
