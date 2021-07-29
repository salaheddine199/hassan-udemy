import 'package:flutter/material.dart';
import 'async/future.dart';
import 'basicsOne/HomeOne.dart';
import 'basicsTwo/HomeTwo.dart';
import 'myDrawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Udemy course application",
      theme: ThemeData(
        primarySwatch: Colors.blue, // TODO set buttons settings from here
      ),
      home: HomePage(), //NavPage(), //new ButtonsPage(),
    );
  }
}

// HOME PAGE classes:
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Drawer Test"),
          backgroundColor: Colors.deepOrange,
          /*leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {

            }, 
          ),*/
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        drawer: MyDrawer(),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeOne()),
                  );
                },
                child: Text(
                  "Flutter Basics1",
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeTwo()),
                  );
                },
                child: Text(
                  "Flutter Basics2",
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AsyncProg()),
                  );
                },
                child: Text(
                  "Async things",
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
            ],
          ),
        ));
  }
}
