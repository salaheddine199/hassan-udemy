import 'package:flutter/material.dart';
import '../main.dart';

class NavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Navigator"),
        /*leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
        ),*/
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            OutlinedButton(
              child: Text("Return home page", style: TextStyle(color: Colors.black,fontSize: 25,),),
              onPressed: (){
                //Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );

              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                primary: Colors.greenAccent, // doesn't work
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
