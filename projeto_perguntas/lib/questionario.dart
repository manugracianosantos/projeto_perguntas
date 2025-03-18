import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  //recebendo os três parâmetros
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quantoResponder;

  Questionario({
    //construtor
    required this.perguntaSelecionada,
    required this.perguntas,
    required this.quantoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
    //tem pergunta selecionada se _perguntaSelecionada for
    //menor que o tamanho da lista.
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        temPerguntaSelecionada
            ? (perguntas[perguntaSelecionada]['resposta'] as List<dynamic>)
                .cast<Map<String, Object>>() //???
            : [];
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((resp) {
          return Resposta(
            resp['texto'].toString(),
            () => quantoResponder(int.parse(resp['pontuacao'].toString())),
          );
        }),
      ],
    );
  }
}
