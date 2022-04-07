import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home(), debugShowCheckedModeBanner: false));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController etanolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();
  String _resultado = "Informe os valores";

  //paramos aqui.. falta apenas:
  //1. Calcular o combustível ideal
  //2. Criar o mecanismo de reset da tela
  //3. Criar uma validação para o formulário 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Etanol ou Gasolina?",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 89, 45, 220),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
        ],
      ),
      body: SingleChildScrollView(
          //um pequeno afastamento das laterias do body
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            //alinhamento cruzado da coluna (vertical):
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.local_gas_station_outlined,
                size: 130,
                color: Colors.deepPurple[800],
              ),
              TextFormField(
                controller: etanolController,
                //alinhamento do texto ao centro
                textAlign: TextAlign.center,
                //tipo de teclado que será exibido no smartphone
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                //Decoração do campo:
                decoration: InputDecoration(
                    labelText: "Valor do Etanol",
                    labelStyle: TextStyle(color: Colors.deepPurple[800])),
                //estilo da fonte interna do TextFormField
                style: TextStyle(color: Colors.deepPurple[800], fontSize: 26),
              ),
              const SizedBox(height: 25),
              TextFormField(
                controller: gasolinaController,
                //alinhamento do texto ao centro
                textAlign: TextAlign.center,
                //tipo de teclado que será exibido no smartphone
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                //Decoração do campo:
                decoration: InputDecoration(
                    labelText: "Valor da Gasolina",
                    labelStyle: TextStyle(color: Colors.deepPurple[800])),
                //estilo da fonte interna do TextFormField
                style: TextStyle(color: Colors.deepPurple[800], fontSize: 26),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      child: const Text(
                        "Verificar",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple[800]
                      ),
                      onPressed: () {},
                    )),
              ),
              Text(
                _resultado,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.deepPurple[800], fontSize: 24),
              )
            ],
          )),
    );
  }
}