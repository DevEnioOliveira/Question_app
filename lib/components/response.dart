import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  final dynamic text;
  final void Function() onSelected;

  Response(this.text, this.onSelected);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.indigo[300],
        textColor: Colors.white,
        onPressed: onSelected,
        child: Text(text),
      ),
    );
  }
}
