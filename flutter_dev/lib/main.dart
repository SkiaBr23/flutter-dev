import 'package:flutter/material.dart';
import "dart:math";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Teste'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _nome = "";
  String _motivo = "";
  final _random = new Random();

  final List nomes = ["Consagrado", "Pontíficie", "Melindroso", "Diplomata",
  "Supra-sumo", "Influencer", "Tributarista", "Promotor", "Patrão",
  "Peregrino", "Maestro", "Litorâneo", "Amoroso", "Piloto",
  "Palestrinha", "Jesuíta", "Zagueiro", "Combatente"];
  final List motivos = ["que hoje ela me bloqueou no zap",
    "que amanhã é feriado no Acre",
  "que o vale-refeição caiu",
  "que o Mengão ganhou mais uma",
  "que hoje eu vou capotar o Corsa",
  "que a Original 600 tá trincando",
  "que o pagodão começa 18h"];

  String gerarMotivo(){
    return motivos[_random.nextInt(motivos.length)];
  }

  String gerarNome(){
    return nomes[_random.nextInt(nomes.length)];
  }

  void _updateScreen() {
    setState(() {
      _nome = gerarNome();
      _motivo = gerarMotivo();
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Opa, traz mais uma meu',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w500,
                color:Colors.black87,
              ),
            ),
            Text(
              '$_nome',
              style: TextStyle(
              fontSize: 50.0,
              color:Colors.indigo,
            ),
            ),
            Text(
              '$_motivo',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w500,
                color:Colors.black87,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateScreen,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
