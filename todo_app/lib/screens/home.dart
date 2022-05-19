import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _todoController = TextEditingController();
  List _todoList = [];

  Future<File> _abreArquivo() async {
    final diretorio = await getApplicationDocumentsDirectory();
    return File("${diretorio.path}/todoList.json");
  }

  Future<String?> _lerDados() async {
    try {
      final arquivo = await _abreArquivo();
      return  arquivo.readAsString();
    } catch(e) {
      return null;
    }
  }
  
  Future<File> _salvarDados() async {
    String dados = json.encode(_todoList);
    final file = await _abreArquivo();
    return file.writeAsString(dados);
  }

  //paramos aqui

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo List"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(17, 2, 10, 2),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: _todoController,
                  maxLength: 90,
                  decoration: const InputDecoration(labelText: "Nova Tarefa"),
                )),
                SizedBox(
                  height: 38,
                  width: 38,
                  child: FloatingActionButton(
                    child: const Icon(Icons.save_outlined),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
