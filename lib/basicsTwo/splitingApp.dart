import 'package:flutter/material.dart';

TextStyle s = TextStyle(
    color:Colors.black,
    fontSize: 30,
);

TextStyle s2 = TextStyle(
  color:Colors.white,
  fontSize: 35,
);

class MyText extends StatelessWidget{
  String _text;
  TextStyle _textStyle;

  MyText(this._text, this._textStyle);

  @override
  Widget build(BuildContext context) {

    return Text(_text, style: _textStyle,);

  }
}