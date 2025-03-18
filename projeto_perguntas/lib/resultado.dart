import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Parabénsss!!!',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.pink,
          fontSize: 35.0,
        ),
      ),
    );
  }
}
