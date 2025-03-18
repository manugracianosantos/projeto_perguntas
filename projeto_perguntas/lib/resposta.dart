import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final Function() quandoSelecionado;
  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //deixa o botão ocupar a largura inteira da tlea
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, // Cor de fundo do botão
          foregroundColor: Colors.white, // Cor do texto
        ),
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
/* () => quando o método for chamado */