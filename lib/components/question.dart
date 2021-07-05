import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final dynamic text;

  //construtor da classe
  Question(this.text);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 40, 10, 50),
      child: Text(
        text,
        style: TextStyle(fontSize: 28, fontFamily: 'Verdana'),
        textAlign: TextAlign.center,
      ),
    );
  }
}
