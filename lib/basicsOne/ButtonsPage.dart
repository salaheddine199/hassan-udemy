import 'package:flutter/material.dart';

// we changed it to statful becase we need that state class for setState method
class ButtonsPage extends StatefulWidget {
  @override
  _ButtonsPageState createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  var str = "";
  var color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Here we test the buttons"),
        backgroundColor: color,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Build60SizedBox(
              height: 20,
            ),
            Text(
              str,
              style: TextStyle(color: Colors.red, fontSize: 35),
            ),
            Build60SizedBox(),

            FlatButton(
              onPressed: () {},
              child:Text("Flat Button"),
              color: Colors.deepPurpleAccent,
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Colors.red, width:1),
              ),
            ),
            Build60SizedBox(),
            TextButton.icon(
              onPressed:  (){},// null,
              icon: Icon(Icons.web),
              label: Text("Text Button",style: TextStyle(fontSize: 30,)),
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.greenAccent,
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onSurface: Colors.purple, // disabled buttons'text color

              ),

            ),

            Build60SizedBox(),
            ElevatedButton(
              //onPressed: null, // for testing the disabled/text/Color.
              onPressed: () {
                // IIFE  anonymous function
                setState(() {
                  str = "hello";
                  color = Colors.blue;
                });
              },
              onLongPress: () => // lampda expression
              setState(() {
                str = "";
              }),
              child: Text(
                "Click Me",
                style: TextStyle(fontSize: 35),
              ),
            ),
            Build60SizedBox(height: 10),
            FloatingActionButton.extended(
              onPressed: (){
                setState(() {
                  color = Colors.red;
                });
              },
              label: Text("Add"),
              backgroundColor: Colors.red,
              icon: Icon(Icons.alarm, color: Colors.white,),
            ),
            Build60SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                str = "ha wch";
                color = Colors.green;
                setState(() {});
              },
              style: ButtonStyle(),

              child: Text("Click Me",
                  style: TextStyle(
                    fontSize: 35,
                  )),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          setState(() {
            color = Colors.red;
          });
        },
        label: Text("Add outOf body"),
        backgroundColor:color,
        icon: Icon(Icons.add_circle, color: Colors.white,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
      ),

    );
  }
}


// our SizedBox widget class:
class Build60SizedBox extends StatelessWidget {
  final double height;

  //Build60SizedBox({double height = 60}) {this.height = height;}
  Build60SizedBox({this.height = 60});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: this.height,
    );
  }
}
