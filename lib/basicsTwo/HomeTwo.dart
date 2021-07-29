import 'package:flutter/material.dart';
import 'package:flutter_application_1/quizApp/mainQuizApp.dart';
import 'StackAlign.dart';
import 'splitingApp.dart';

class HomeTwo extends StatefulWidget {
  @override
  _HomeTwoState createState() => _HomeTwoState();
}

class _HomeTwoState extends State<HomeTwo> {
  TextStyle s2 = TextStyle(
    color:Colors.white,
    fontSize: 35,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter basics 2", style: TextStyle(color: Colors.black),),
        ),
      body: Container(
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        color: Colors.redAccent,
        //height: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyText("aaa", s2), //Text("aaa", style: s),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 100, 8),
                  child: MyText("sss",s),
                ),

              ],
            ),
            SizedBox(height: 60,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StackAlign()),
                  );
                });
              },
              child: Text(
                "Stack and Alignment",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 60,),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyQuizApp()),
                  );
                });
              },
              child: Text(
                "Quiz Application",
                style: TextStyle(fontSize: 35),
              ),
            ),
          ],
        ),

      )

    );
  }
}
