import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  //? mudamos tudo que usa a variável ou a função para esse
  var perguntaSelecionada = 0;

  void responder() {
    setState(() { //passa oque está sendo modificado
      perguntaSelecionada++;

    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      //Para começar o desenvolvimento do nosso projeto, fizemos uma Lista de perguntas para
      //chama-las dps no código, para isso usamos: List<String>. List<Tipodecoisaquetemnalista>
      //mas como temos Inferência nn é necessário
      'Qual sua cor favorita?',
      'Qual é o seu animal preferido? ',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body: Column(
          children: <Widget>[
            //Vários widgets no Flutter só podem ter um filho. O Column() nn é um deles.
            //Usamos o children que funciona quase como uma lista de componentes como, botão,
            //texto...
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              child: Text('Pergunta 1'),
              onPressed: responder, //função
            ),
            ElevatedButton(
              child: Text('Pergunta 2'),
              onPressed: responder, //função
            ),
            ElevatedButton(
              child: Text('Pergunta 3'),
              onPressed: responder, //função
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
