import 'package:flutter/material.dart';
import 'splitingApp.dart';

class StackAlign extends StatefulWidget {
  @override
  _StackAlignState createState() => _StackAlignState();
}

class _StackAlignState extends State<StackAlign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Stack And Alignment",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: 360,
                height: 360,
                color: Colors.greenAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // between : same between them and none before the 1st and after the last,
                  // evenly : same between them  and same    "       "      "          "      ,
                  // around: same between them   and  1/2    "       "      "          "      .
                  children: [
                    Text("Text1", style: s),
                    Text("Text2", style: s2),
                    Text("Text3", style: s),
                  ],
                ),
              ),
              // Container(width: 200 , height: 200, color: Colors.blueAccent,),
              // Container(width: 100 , height: 100, color: Colors.yellowAccent,)
            ],
          ),
        ));
  }
}
