/*
 * Todo objeto possui ao menos três "coisas":
 *  - Nome
 *  - Características -> Atributos (todo tributo é uma variável. Nem toda variável é um atributo)
 *  - Comportamentos -> Métodos
 * 
 * Uma classe, na programação, é como um MOLDE para que os objetos sejam criados
 * e utilizados. 
 * 
 * */

class Pessoa {
  //atributos da classe pessoa -> Características
  String nome;
  int idade;
  double altura;
  bool fumante;

//   Pessoa(String? nome, int? idade, double? altura, bool? fumante) {
//     this.nome = nome;
//     this.idade = idade;
//     this.altura = altura;
//     this.fumante = fumante;
//   }

  Pessoa(
      {required this.nome,
      required this.idade,
      required this.altura,
      required this.fumante});

  //named constructor
  Pessoa.nascer({required this.nome, required this.altura})
      : idade = 0,
        fumante = false;

  void fazerAniversario() {
    print("Ôba, festinha!");

    idade++; //é o mesmo que idade = idade + 1
  }
}

void main() {
  //Pessoa p1 = Pessoa("Thiago Traue", 34, 1.83, true);

  Pessoa p1 =
      Pessoa(nome: "Thiago Traue", idade: 34, altura: 1.83, fumante: true);

  print("O nome é: ${p1.nome}");
  print("A idade é: ${p1.idade}");
  print("A altura é: ${p1.altura}");
  print(p1.fumante ? "A pessoa fuma!" : "A pessoa não fuma!");

  p1.fazerAniversario();

  print("Agora, ${p1.nome} tem ${p1.idade} anos! :D");

  Pessoa p2 = Pessoa.nascer(nome: "Enzo", altura: 0.30);
  
  
  print(p2.nome);
  print(p2.idade);
}
