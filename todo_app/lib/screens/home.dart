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

  @override
  void initState() {
    super.initState();
    _lerDados().then((value) {
      setState(() {
        _todoList = json.decode(value!);
      });
    });
  }

  Future<File> _abreArquivo() async {
    final diretorio = await getApplicationDocumentsDirectory();
    return File("${diretorio.path}/todoList.json");
  }

  Future<String?> _lerDados() async {
    try {
      final arquivo = await _abreArquivo();
      return arquivo.readAsString();
    } catch (e) {
      return null;
    }
  }

  Future<File> _salvarDados() async {
    String dados = json.encode(_todoList);
    final file = await _abreArquivo();
    return file.writeAsString(dados);
  }

  void _adicionaTarefa() {
    setState(() {
      Map<String, dynamic> novoTodo = {};
      novoTodo["titulo"] = _todoController.text;
      novoTodo["realizado"] = false;
      _todoList.add(novoTodo);
      _salvarDados();
    });
  }

  Future<void> _reordenaLista() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      _todoList.sort((a, b) {
        if(a["realizado"] && !b["realizado"]) return 1;
        if(!a["realizado"] && b["realizado"]) return -1;
        return 0;
      });
    });
  }

  Widget widgetToDo(BuildContext context, int index) {
    return Dismissible(
      key: Key(DateTime.now().microsecondsSinceEpoch.toString()),
      background: Container(
        color: Colors.red,
        child: const Align(
            alignment: Alignment(0.9, 0),
            child: Icon(Icons.delete_sweep_rounded, color: Colors.white)),
      ),
      direction: DismissDirection.endToStart,
      child: CheckboxListTile(
        title: Text(_todoList[index]["titulo"]),
        value: _todoList[index]["realizado"],
        secondary: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            child: Icon(
              _todoList[index]["realizado"] ? Icons.check : Icons.error_outline,
              color: Theme.of(context).colorScheme.primary,
            )),
        onChanged: (value) {
          setState(() {
            _todoList[index]["realizado"] = true;
            _salvarDados();
          });
        },
      ),
      onDismissed: (direction) {
        setState(() {
          _todoList.remove(index);
          _salvarDados();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo List"),
        centerTitle: true,
      ),
      body: Builder(
        builder: (context) {
          return Column(
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
                        onPressed: () {
                          if (_todoController.text.isEmpty) {
                            final snackAlerta = SnackBar(
                              content: const Text("Não pode ser vazio!"),
                              duration: const Duration(seconds: 4),
                              action: SnackBarAction(
                                label: "Ok",
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .removeCurrentSnackBar();
                                },
                              ),
                            );

                            ScaffoldMessenger.of(context).removeCurrentSnackBar();
                            ScaffoldMessenger.of(context).showSnackBar(snackAlerta);
                          } else {
                            _adicionaTarefa();
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10)
              ),
              Expanded(
                child: RefreshIndicator(
                  child: ListView.builder(
                    itemBuilder: widgetToDo,
                    itemCount: _todoList.length,
                    padding: const EdgeInsets.only(top: 10),
                  ),
                  onRefresh: _reordenaLista,
                )
              )
            ],
          );
        }
      ),
    );
  }
}
