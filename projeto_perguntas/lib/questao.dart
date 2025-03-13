import 'package:flutter/widgets.dart';

//criamos esse para gerenciar melhor os componentesda árvore widget
class Questao extends StatelessWidget {
  final String texto;
  Questao(this.texto); //pq??

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //?????
      margin: EdgeInsets.all(10), //??????????/
      child: Text(
        texto,
        style: TextStyle(fontSize: 23.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
