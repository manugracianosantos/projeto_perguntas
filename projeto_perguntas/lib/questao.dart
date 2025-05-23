import 'package:flutter/widgets.dart';

class Questao extends StatelessWidget {
  final String texto;
  Questao(this.texto); 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      margin: EdgeInsets.all(10), 
      child: Text(
        texto,
        style: TextStyle(fontSize: 23.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
