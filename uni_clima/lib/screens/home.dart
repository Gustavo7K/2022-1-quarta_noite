import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
  import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  final List<String> _cidades = [
    "Aracaju",
    "Belém",
    "Belo Horizonte",
    "Boa Vista",
    "Brasilia",
    "Campo Grande",
    "Cuiaba", 
    "Curitiba",
    "Florianópolis",
    "Fortaleza",
    "Goiânia",
    "João Pessoa",
    "Macapá",
    "Maceio",
    "Manaus",
    "Natal",
    "Palmas",
    "Porto Alegre",
    "Porto Velho",
    "Recife",
    "Rio Branco",
    "Rio de Janeiro",
    "Salvador",
    "São Luis",
    "São Paulo",
    "Teresina",
    "Vitória"
  ];

  String _cidadeSelecionada = "São Paulo";


  carregaClima() async {
    //variáveis auxiliares para montagem da URL de requisição
    const String _apiURL = "api.openweathermap.org";
    const String _path = "/data/2.5/weather";
    const String _appid = ""; //SUA CHAVE DE API!!!
    const String _units = "metric";
    const String _lang = "pt_br";

    //montagem dos parâmetros da URL...:
    final _parms = {
      "q": _cidadeSelecionada,
      "appid": _appid,
      "units": _units,
      "lang": _lang
    };

    //requisição à API...
    final climaResponse = 
      await http.get(Uri.https(_apiURL, _path, _parms));

    //apenas para depuração...
    print("URL Montada: " + climaResponse.request!.url.toString());

    //paramos aqui.... :(
  }

  
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(_cidadeSelecionada),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            DropdownSearch<String>(
              mode: Mode.MENU,
              items: _cidades,
              showSelectedItems: true,
              showSearchBox: true,
              maxHeight: height - 50,
              onChanged: (value) {
                setState(() {
                  _cidadeSelecionada = value!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}