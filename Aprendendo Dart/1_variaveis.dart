void main() {
  //variáveis mais comuns:
  int idade = 34; //variável do tipo inteiro
  String nome = "Thiago G. Traue"; //variável do tipo texto
  double altura = 1.83; //variável do tipo "real", ou ponto flutuante
  bool fumante = false; //variável do tipo verdadeiro (true) ou falso (false)

  //você pode imprimir no console assim:
  //print("O nome do professor é " + nome);

  //ou assim, usando interpolação...:
  print("O nome do professor é $nome. Ele tem $altura m de altura e $idade anos");

  var bla = "olá mundo"; //o var assume o tipo do primeiro valor que ela recebe
  bla = "oi pessoal";
  //bla = 10; //não é possível alterar o valor com um TIPO diferente

  print(bla);

  //o dybamic permite alterações de tipo em runtime
  dynamic x = "Oi mundo!";
  print(x);

  x = 10.99; //10.99 é um double.. eu posso colcoar no X pois é uma variável dinâmica
  print(x);

  x = true; //true é boolean (verdadeiro)... posso colcoar no x pois ela é dinâmica
  print(x);
}
