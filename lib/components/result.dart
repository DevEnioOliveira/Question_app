import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalPoints;
  final void Function() whenRestart;

  Result(this.finalPoints, this.whenRestart);

  String get textResult {
    if (finalPoints < 10) {
      return 'Iniciante';
    } else if (finalPoints > 11 && finalPoints < 20) {
      return 'Intermediário';
    } else {
      return 'Avançado';
    }
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            textResult,
            style: TextStyle(fontSize: 28, color: Colors.purple),
          ),
        ),
        ElevatedButton(onPressed: whenRestart, child: Text('Reiniciar'))
      ],
    );
  }
}
