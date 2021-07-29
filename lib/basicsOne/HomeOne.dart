import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/myDrawer.dart';
import 'ButtonsPage.dart';
import 'AgeCalculator.dart';
import 'NavPage.dart';
import 'TextFieldPage.dart';

class HomeOne extends StatefulWidget {
  @override
  _HomeOneState createState() => _HomeOneState();
}

class _HomeOneState extends State<HomeOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: AppBar(
            elevation: 10,
            centerTitle: false,
            title: Text("Flutter Basics1", style: TextStyle(fontSize: 20)),
            backgroundColor: Colors.blueAccent,
            leading: IconButton(
              // also there's leadingWidth
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context); // we should not do it cuz it's wajda.
              },
              tooltip: "Go Back",
            ),
            actions: [
              // ig all of the next three are the same concept:
              /*IconButton(
              icon: Icon(
                CupertinoIcons.person,
              ),
              onPressed: () {},
              tooltip: "My Profile",
            ),*/

              InkWell(
                // better than GestureDetector
                child: Icon(CupertinoIcons.list_dash),
                onTap: () {
                  // Navigator.push( context,MaterialPageRoute(builder: (context) {return PageScreen();}),);
                },
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                  // Gesture contains more option, but mtbanch bli button.
                  child: Icon(CupertinoIcons.person),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ButtonsPage()),
                  );
                },
                child: Text(
                  "Go to button page",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 60),
              FloatingActionButton.extended(
                icon: Icon(Icons.web),
                label: Text(
                  "Go to Navigator page",
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavPage()),
                  );
                },
              ),
              SizedBox(height: 60),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TextFieldPage()),
                  );
                },
                child: Text(
                  "TextField page",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  primary: Colors.greenAccent,
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 60),
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AgeCalculator()),
                  );
                },
                label: Text(
                  "Age Calculator",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  ),
                ),
                icon: Icon(
                  Icons.person_sharp,
                  color: Colors.brown,
                ),
                //style: TextButton.styleFrom(),
              ),
            ],
          ),
        ));
  }
}
