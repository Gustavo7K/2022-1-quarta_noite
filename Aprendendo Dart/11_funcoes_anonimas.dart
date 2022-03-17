void main() {
  criaBotao(
    "Salvar",
    () {
      print("Ui, fui clicado!");
    },
    cor: "Verde",
    altura: 70,
    largura: 200
  );
  
  print("");
  
  criaBotao(
    "Editar",
    cliqueDeUmBotao,
    cor: "Pink",
    largura: 250
  );
}

void cliqueDeUmBotao() {
  print("Ui, fui clicado. Que gostoso!");
}

void criaBotao(String texto, Function acaoClick, {String? cor, int? altura, int? largura}) {
  print("Estou criando um botão...");
  print(" - Texto do botão: $texto");
  print(" - Cor do botão: ${cor ?? "Cinza"}");
  print(" - Altura: ${altura ?? 50}");
  print(" - Largura: ${largura ?? 100}");
  print(" - Ação de click...:");
  acaoClick();
}