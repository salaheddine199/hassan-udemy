import 'package:flutter/material.dart';

class AgeCalculator extends StatefulWidget {
  @override
  _AgeCalculatorState createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator>{
var myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Age Calculator App "),
      ),
      body: Container(
        color: Colors.black12,
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
                margin: EdgeInsets.fromLTRB(20,10,20,10),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    fillColor: Color(0x66ffffff), filled: true, // both work together.
                    labelText: "Birth Year: ",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.black, backgroundColor: Colors.white10),
                    hintText: "Enter your birth year",
                    hintStyle: TextStyle(fontSize: 20, color: Color(0x44000000)),
                    suffixIcon: Icon(Icons.person),
                  ),
                  textAlign: TextAlign.center,
                  controller: myController, // to get the input from this text field.
                  style: TextStyle(color: Colors.black),
                  keyboardType: TextInputType.number,
                )
            ),
            SizedBox(height: 60,),
            ElevatedButton(
              onPressed: () => CalculeAge(myController.text, context), // no need setState
              child: Text("Calcule My Age", style: TextStyle(color: Colors.black,fontSize: 25,),),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent,
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ],
        ),
      )

    );
  }
}

class CalculeAge{

  CalculeAge(String b, context) {
    //if (b== null) b ="0";
    int birth = int.parse(b);
    var age = DateTime.now().year - birth;
    //print("your age is $age years old");

      // print it to the user:
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
        },
    );
    Widget retryButton = TextButton(
      child: Text("Calcule again!"),
      onPressed: () {
        CalculeAge(b, context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Info: "),
      content: Text("your age is $age years old"),
      actions: [
        okButton,
        retryButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder:(_) =>  alert,
    );

  }
}

