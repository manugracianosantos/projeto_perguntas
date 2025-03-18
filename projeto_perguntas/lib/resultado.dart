import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;
  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao <= 8) {
      return 'Parábens!';
    } else if (pontuacao < 12) {
      return 'Vc é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante ta';
    } else {
      return 'iiiiiii';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.pink,
              fontSize: 35.0,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink, // Cor de fundo do botão
            foregroundColor: Colors.white, // Cor do texto
          ),
          child: Text('Reinicie', style: TextStyle(fontSize: 18.0)),
          onPressed: quandoReiniciarQuestionario,
        ),
      ],
    );
  }
}
