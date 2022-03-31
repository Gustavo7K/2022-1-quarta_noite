import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home()
  ));
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Etanol ou Gasolina?", 
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple[8],
        centerTitle: true,
        //faltou o action do botão de reset (próxima aula)
      ),
      //paramos aqui... :(
    );
  }
}

